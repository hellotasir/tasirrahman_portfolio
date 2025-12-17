import 'package:tasirrahman_portfolio/models/statistic.dart';
import 'statistic_repository.dart';

class LocalStatisticRepository implements StatisticRepository {
  @override
  List<StatisticItem> getStatistics() {
    return [
      StatisticItem(
        title: 'Dart Experience',
        value: '${DateTime.now().year - 2022}+ Years',
      ),
      StatisticItem(
        title: 'Flutter Experience',
        value: '${DateTime.now().year - 2022}+ Years',
      ),
      StatisticItem(
        title: 'Mobile · Web · Desktop',
        value: '${DateTime.now().year - 2022}+ Years',
      ),
    ];
  }
}
