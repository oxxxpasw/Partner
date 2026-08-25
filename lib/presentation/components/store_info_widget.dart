import 'package:auto_route/auto_route.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:sosedifedi/data/models/stores/stores.dart';
import 'package:sosedifedi/presentation/theme/models/app_insets.dart';

class StoreInfoWidget extends StatelessWidget {
  const StoreInfoWidget({
    super.key,
    required this.point,
    this.actions,
    this.actionsSpacing = AppInsets.padding16,
  });

  final Store point;

  final List<Widget>? actions;
  final double actionsSpacing;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Stack(
        children: [
          SizedBox(
            width: double.infinity,
            child: Padding(
              padding: const EdgeInsets.all(AppInsets.padding24),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  if (point.logoUrl != null)
                    Padding(
                      padding:
                          const EdgeInsets.only(bottom: AppInsets.padding4),
                      child: CachedNetworkImage(
                        width: 70.0,
                        height: 70.0,
                        fit: BoxFit.contain,
                        imageUrl: point.logoUrl!,
                      ),
                    ),
                  Text(
                    point.name ?? '',
                    style: Theme.of(context).textTheme.titleMedium?.copyWith(
                          fontSize: 20.0,
                        ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(
                    height: AppInsets.padding4,
                  ),
                  Text(
                    point.address ?? '',
                    textAlign: TextAlign.center,
                  ),
                  if (actions != null)
                    Padding(
                      padding: const EdgeInsets.only(top: AppInsets.padding16),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        spacing: actionsSpacing,
                        children:
                            actions!.map((e) => Expanded(child: e)).toList(),
                      ),
                    )
                ],
              ),
            ),
          ),
          Positioned(
            right: AppInsets.padding8,
            top: AppInsets.padding8,
            child: IconButton(
              icon: const Icon(Icons.close),
              onPressed: () => context.router.pop(),
            ),
          ),
        ],
      ),
    );
  }
}
