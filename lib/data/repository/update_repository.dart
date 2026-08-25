import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:sosedifedi/data/models/update/update.dart';
import 'package:sosedifedi/data/services/static_files_service.dart';

@singleton
class UpdateRepository {
  UpdateRepository({
    required this.staticFilesService,
  });

  @protected
  final StaticFilesService staticFilesService;

  Future<UpdateData> checkUpdates() async {
    try {
      final updatesResponse = await staticFilesService.getUpdates();
      if (updatesResponse.hasError) {
        return const UpdateData(
          type: UpdateType.none,
        );
      }
      final updates = updatesResponse.result;
      final packageInfo = await PackageInfo.fromPlatform();
      final updateType = updates.needUpdate(
        Version.parse('${packageInfo.version}+${packageInfo.buildNumber}'),
      );
      return UpdateData(
        type: updateType,
        minAppVersion: updates.minAppVersion,
        updates: updates,
      );
    } catch (_) {
      return const UpdateData(
        type: UpdateType.none,
      );
    }
  }
}

@immutable
class UpdateData {
  const UpdateData({
    this.type = UpdateType.none,
    this.updates,
    this.minAppVersion,
  });

  final UpdateType type;
  final String? minAppVersion;
  final Updates? updates;
}
