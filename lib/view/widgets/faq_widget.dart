import 'package:flutter/material.dart';
import 'package:tasirrahman_portfolio/models/faq.dart';
import 'package:tasirrahman_portfolio/repositories/faq_repository.dart';
import 'package:tasirrahman_portfolio/services/faq_service.dart';

class FaqWidget extends StatefulWidget {
  const FaqWidget({super.key});

  @override
  State<FaqWidget> createState() => _FaqWidgetState();
}

class _FaqWidgetState extends State<FaqWidget> {
  late final FaqRepository repository;
  late Future<List<Faq>> future;

  @override
  void initState() {
    super.initState();
    repository = FaqRepositoryImpl(FaqService());
    future = repository.getFaqs();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Center(
      child: Column(
        children: [
          Text(
            'Frequently Asked Questions',
            style: Theme.of(
              context,
            ).textTheme.headlineSmall?.copyWith(fontWeight: FontWeight.w600),
          ),
          const SizedBox(height: 32),
          SizedBox(
            height: 300,
            width: 800,
            child: FutureBuilder<List<Faq>>(
              future: future,
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return const Center(child: CircularProgressIndicator());
                }
                if (!snapshot.hasData) {
                  return const Center(child: Text('No FAQs found'));
                }

                return ListView.builder(
                  itemCount: snapshot.data!.length,
                  itemBuilder: (context, index) {
                    final faq = snapshot.data![index];
                    return Container(
                      margin: const EdgeInsets.symmetric(vertical: 8),
                      decoration: BoxDecoration(
                        color: theme.colorScheme.surface,
                        border: Border.all(color: theme.colorScheme.surface),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: ExpansionTile(
                        title: Text(faq.question),
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(16),
                            child: Text(faq.answer),
                          ),
                        ],
                      ),
                    );
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
