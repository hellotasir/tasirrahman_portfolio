enum PlatformType {
  android,
  web,
  windows,
  ios,
  macos,
  linux,
  embedded,
  backend,
}

class PlatformSupport {
  final PlatformType platform;
  final bool isSupported;

  const PlatformSupport({required this.platform, required this.isSupported});
}
