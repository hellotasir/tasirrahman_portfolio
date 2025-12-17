import 'package:tasirrahman_portfolio/models/statistic.dart';
import 'package:tasirrahman_portfolio/repositories/statistic_repository/statistic_repository.dart';

class StatisticService {
  final StatisticRepository repository;

  const StatisticService(this.repository);

  List<StatisticItem> fetchStatistics() {
    return repository.getStatistics();
  }
}
