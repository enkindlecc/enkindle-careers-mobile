import 'package:flutter/material.dart';

/// Displays detailed information about a SampleItem.
class SampleItemDetailsView extends StatelessWidget {
  SampleItemDetailsView({Key? key}) : super(key: key);

  static const routeName = '/sample_item';
  final String nlTopic = 'Bachelor in Design (B.Des) (10+2 Any stream)';
  final newsletterContent = [
    'What is B.Des all about ?',
    """
    • It is 4 years undergraduate designing degree.... 
    • It is 4 years undergraduate designing degree....
    • It is 4 years undergraduate designing degree....
    """
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(nlTopic),
        ),
        body: NewsletterTopicHeader(
          newsletterContent: newsletterContent,
        ));
  }
}

class NewsletterTopicHeader extends StatelessWidget {
  const NewsletterTopicHeader({
    Key? key,
    required this.newsletterContent,
  }) : super(key: key);
  final List newsletterContent;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            newsletterContent[0],
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              decoration: TextDecoration.underline,
              fontSize: 20,
            ),
          ),
          Text(
            newsletterContent[1],
            style: const TextStyle(
              fontSize: 16,
            ),
          ),
        ],
      ),
    );
  }
}
