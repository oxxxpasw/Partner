import 'package:flutter/material.dart';
import 'package:sosedifedi/presentation/theme/models/app_insets.dart';
import 'package:auto_route/auto_route.dart';

@RoutePage()
class CoffeeProcessingScreen extends StatefulWidget {
  const CoffeeProcessingScreen({super.key, this.onSuccess});

  final VoidCallback? onSuccess;

  @override
  State<CoffeeProcessingScreen> createState() => _CoffeeProcessingScreenState();
}

class _CoffeeProcessingScreenState extends State<CoffeeProcessingScreen> {
  @override
  void initState() {
    super.initState();

    Future.delayed(
      const Duration(seconds: 10),
      widget.onSuccess,
    );
  }

  @override
  Widget build(BuildContext context) {
    final textStyle = TextTheme.of(context).bodyLarge?.copyWith(
          fontWeight: FontWeight.w500,
        );

    return Column(
      children: [
        const SizedBox(height: AppInsets.padding32),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: AppInsets.padding16),
          child: RichText(
            textAlign: TextAlign.center,
            text: TextSpan(
              children: [
                const TextSpan(
                  text: 'Поставьте ',
                ),
                TextSpan(
                  text: 'стаканчик',
                  style: textStyle?.copyWith(
                    color: Theme.of(context).colorScheme.primary,
                  ),
                ),
                const TextSpan(text: ' в кофеаппарат и ожидайте приготовления'),
              ],
              style: textStyle,
            ),
          ),
        ),
        const Spacer(),
      ],
    );
  }
}
