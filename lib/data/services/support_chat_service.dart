import 'package:dio/dio.dart';
import 'package:sosedifedi/data/repository/auth_repository.dart';
import 'package:sosedifedi/presentation/app_environment.dart';

class SupportChatMessage {
  SupportChatMessage({
    required this.id,
    required this.sender,
    required this.text,
    required this.createdAt,
  });

  factory SupportChatMessage.fromJson(Map<String, dynamic> json) =>
      SupportChatMessage(
        id: json['id'] as String? ?? '',
        sender: json['sender'] as String? ?? 'partner',
        text: json['text'] as String? ?? '',
        createdAt: json['created_at'] as String?,
      );

  final String id;
  final String sender;
  final String text;
  final String? createdAt;

  bool get isMine => sender == 'partner';
}

/// Чат с поддержкой: GET/POST {apiEndpoint}v1/partner/chat.
class SupportChatService {
  SupportChatService({
    required this.appEnvironment,
    required this.authRepository,
  });

  final AppEnvironment appEnvironment;
  final AuthRepository authRepository;

  Dio? _dio;

  Dio _client() {
    return _dio ??= Dio(
      BaseOptions(
        baseUrl: appEnvironment.apiEndpoint,
        connectTimeout: const Duration(seconds: 10),
        receiveTimeout: const Duration(seconds: 15),
        contentType: 'application/json',
      ),
    );
  }

  Future<String?> _token() => authRepository.token;

  Future<List<SupportChatMessage>> getMessages() async {
    final token = await _token();
    final response = await _client().get(
      'v1/partner/chat',
      options: Options(headers: {'Authorization': 'Bearer $token'}),
    );
    final list = (response.data['messages'] as List?) ?? [];
    return list
        .map((e) => SupportChatMessage.fromJson(e as Map<String, dynamic>))
        .toList();
  }

  Future<void> sendMessage(String text) async {
    final token = await _token();
    await _client().post(
      'v1/partner/chat',
      data: {'text': text},
      options: Options(headers: {'Authorization': 'Bearer $token'}),
    );
  }
}
