import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:sosedifedi/data/repository/auth_repository.dart';
import 'package:sosedifedi/data/services/support_chat_service.dart';
import 'package:sosedifedi/presentation/app_environment.dart';
import 'package:sosedifedi/presentation/components/custom_app_bar/custom_app_bar.dart';
import 'package:sosedifedi/presentation/theme/models/app_insets.dart';
import 'package:auto_route/auto_route.dart';

/// Чат с поддержкой ЛилКофе (партнёр пишет, поддержка отвечает из CRM).
@RoutePage()
class SupportChatScreen extends StatefulWidget {
  const SupportChatScreen({super.key});

  @override
  State<SupportChatScreen> createState() => _SupportChatScreenState();
}

class _SupportChatScreenState extends State<SupportChatScreen> {
  late final SupportChatService _service = SupportChatService(
    appEnvironment: GetIt.I.get<AppEnvironment>(),
    authRepository: GetIt.I.get<AuthRepository>(),
  );

  final _controller = TextEditingController();
  final _scrollController = ScrollController();

  List<SupportChatMessage> _messages = [];
  bool _loading = true;
  bool _sending = false;
  Timer? _polling;

  @override
  void initState() {
    super.initState();
    _load(initial: true);
    _polling = Timer.periodic(const Duration(seconds: 10), (_) => _load());
  }

  @override
  void dispose() {
    _polling?.cancel();
    _controller.dispose();
    _scrollController.dispose();
    super.dispose();
  }

  Future<void> _load({bool initial = false}) async {
    try {
      final messages = await _service.getMessages();
      if (!mounted) return;
      final changed = _messages.length != messages.length;
      _messages = messages;
      if (initial) {
        _loading = false;
      }
      setState(() {});
      if (changed) {
        WidgetsBinding.instance.addPostFrameCallback((_) {
          if (_scrollController.hasClients) {
            _scrollController.jumpTo(_scrollController.position.maxScrollExtent);
          }
        });
      }
    } catch (_) {
      if (initial && mounted) {
        setState(() => _loading = false);
      }
    }
  }

  Future<void> _send() async {
    final text = _controller.text.trim();
    if (text.isEmpty || _sending) return;
    setState(() => _sending = true);
    try {
      await _service.sendMessage(text);
      _controller.clear();
      await _load(initial: true);
    } catch (_) {
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Не удалось отправить сообщение')),
        );
      }
    } finally {
      if (mounted) {
        setState(() => _sending = false);
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    final colors = ColorScheme.of(context);
    return Scaffold(
      backgroundColor: colors.surfaceContainer,
      appBar: CustomAppBar(
        title: const Text('Поддержка'),
        leadingBackgroundColor: colors.surface,
        backgroundColor: colors.surfaceContainer,
      ),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: _loading
                  ? const Center(child: CircularProgressIndicator.adaptive())
                  : _messages.isEmpty
                      ? const Center(
                          child: Text(
                            'Задайте вопрос — поддержка ответит здесь',
                            style: TextStyle(fontSize: 14),
                          ),
                        )
                      : ListView.separated(
                          controller: _scrollController,
                          padding: const EdgeInsets.all(AppInsets.padding16),
                          itemCount: _messages.length,
                          separatorBuilder: (_, __) =>
                              const SizedBox(height: AppInsets.padding8),
                          itemBuilder: (context, index) {
                            final message = _messages[index];
                            final isMine = message.isMine;
                            return Align(
                              alignment:
                                  isMine ? Alignment.centerRight : Alignment.centerLeft,
                              child: Container(
                                constraints: BoxConstraints(
                                  maxWidth:
                                      MediaQuery.of(context).size.width * 0.75,
                                ),
                                padding: const EdgeInsets.symmetric(
                                  horizontal: AppInsets.padding12,
                                  vertical: AppInsets.padding8,
                                ),
                                decoration: BoxDecoration(
                                  color: isMine
                                      ? colors.primary
                                      : colors.surface,
                                  borderRadius:
                                      BorderRadius.circular(AppBorderRadius.large),
                                ),
                                child: Text(
                                  message.text,
                                  style: TextStyle(
                                    color: isMine ? colors.onPrimary : colors.onSurface,
                                  ),
                                ),
                              ),
                            );
                          },
                        ),
            ),
            Container(
              color: colors.surface,
              padding: const EdgeInsets.all(AppInsets.padding8),
              child: Row(
                children: [
                  Expanded(
                    child: TextField(
                      controller: _controller,
                      decoration: const InputDecoration(
                        hintText: 'Сообщение…',
                        border: OutlineInputBorder(),
                        contentPadding: EdgeInsets.symmetric(
                          horizontal: AppInsets.padding12,
                          vertical: AppInsets.padding8,
                        ),
                      ),
                      minLines: 1,
                      maxLines: 4,
                      textInputAction: TextInputAction.send,
                      onSubmitted: (_) => _send(),
                    ),
                  ),
                  const SizedBox(width: AppInsets.padding8),
                  IconButton.filled(
                    onPressed: _sending ? null : _send,
                    icon: const Icon(Icons.send),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
