import 'package:tasirrahman_portfolio/models/statistic_Item.dart';
import 'statistic_repository.dart';

class LocalStatisticRepository implements StatisticRepository {
  @override
  List<StatisticItem> getStatistics() {
    return const [
      StatisticItem(title: 'Dart Experience', value: '2+ Years'),
      StatisticItem(title: 'Flutter Experience', value: '2+ Years'),
      StatisticItem(title: 'App · Web · Desktop', value: '3.5+ Years'),
    ];
  }
}
