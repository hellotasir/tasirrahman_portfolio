import 'package:tasirrahman_portfolio/models/statistic.dart';
import 'statistic_repository.dart';

class LocalStatisticRepository implements StatisticRepository {
  @override
  List<StatisticItem> getStatistics() {
    return [
      StatisticItem(
        title: 'Dart Language Experience',
        value: '${DateTime.now().year - 2022}+ Years',
      ),
      StatisticItem(title: 'Projects Completed', value: '15+'),
      StatisticItem(
        title: 'Cross-Platform Experience',
        value: '${DateTime.now().year - 2022}+ Years',
      ),
    ];
  }
}
