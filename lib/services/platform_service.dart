import 'package:tasirrahman_portfolio/models/platform.dart';
import 'package:tasirrahman_portfolio/repositories/platform_repository.dart';

class PlatformService {
  final PlatformRepository repository;

  PlatformService(this.repository);

  List<PlatformSupport> getSupportedPlatforms() {
    return repository.fetchPlatformSupport();
  }
}
