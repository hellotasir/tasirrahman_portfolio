import 'package:tasirrahman_portfolio/models/platform.dart';

abstract class PlatformRepository {
  List<PlatformSupport> fetchPlatformSupport();
}

class LocalPlatformRepository implements PlatformRepository {
  @override
  List<PlatformSupport> fetchPlatformSupport() {
    return const [
      PlatformSupport(platform: PlatformType.android, isSupported: true),
      PlatformSupport(platform: PlatformType.web, isSupported: true),
      PlatformSupport(platform: PlatformType.windows, isSupported: true),
      PlatformSupport(platform: PlatformType.ios, isSupported: false),
      PlatformSupport(platform: PlatformType.macos, isSupported: false),
      PlatformSupport(platform: PlatformType.embedded, isSupported: false),
      PlatformSupport(platform: PlatformType.backend, isSupported: false),
    ];
  }
}
