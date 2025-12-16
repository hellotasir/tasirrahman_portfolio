import 'package:tasirrahman_portfolio/models/faq.dart';
import 'package:tasirrahman_portfolio/services/faq_service.dart';

abstract class FaqRepository {
  Future<List<Faq>> getFaqs();
}

class FaqRepositoryImpl implements FaqRepository {
  final FaqService service;

  FaqRepositoryImpl(this.service);

  @override
  Future<List<Faq>> getFaqs() async {
    final response = await service.fetchFaqs();
    return response.map(Faq.fromJson).toList();
  }
}
