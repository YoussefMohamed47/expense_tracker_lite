import 'package:package_info_plus/package_info_plus.dart';

class AppConfig {
  static late final String appName;
  static late final String version;
  static late final String buildNumber;

  static bool get isStaging {
    const flavor = String.fromEnvironment('FLAVOR', defaultValue: 'prod');
    return flavor == 'staging';
  }

  static Future<void> init() async {
    final info = await PackageInfo.fromPlatform();
    appName = info.appName;
    version = info.version;
    buildNumber = info.buildNumber;
  }

  static String get fullVersion => 'v$version+$buildNumber';

  static String get appNameWithVersion => '$appName $fullVersion';
}
