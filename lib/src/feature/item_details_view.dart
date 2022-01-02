import 'package:flutter/material.dart';

/// Displays detailed information about a SampleItem.
class SampleItemDetailsView extends StatelessWidget {
  SampleItemDetailsView({Key? key}) : super(key: key);

  static const routeName = '/sample_item';
  final String nlTopic = 'Bachelor in Design (B.Des) (10+2 Any stream)';
  final nlBody = [
    'What is B.Des all about ?',
    '• It is 4 years undergraduate designing degree...'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(nlTopic),
        ),
        body: NewsletterTopicHeader(
          headerText: nlBody[0],
          bodyText: nlBody[1],
        ));
  }
}

class NewsletterTopicHeader extends StatelessWidget {
  const NewsletterTopicHeader({
    Key? key,
    required this.headerText,
    required this.bodyText,
  }) : super(key: key);
  final String headerText;
  final String bodyText;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            headerText,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              decoration: TextDecoration.underline,
              fontSize: 20,
            ),
          ),
          Text(
            bodyText,
            style: const TextStyle(
              fontSize: 16,
            ),
          ),
        ],
      ),
    );
  }
}
