import 'package:flutter/material.dart';

import 'newsletterHeader.dart';
import 'newsletterBody.dart';

/// Displays detailed information about a SampleItem.
/// TODO: loop through newsletterContent to generate widget dynamically
/// TODO: display complete newsletter content with static data
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
      body: Column(
        children: [
          NewsletterHeader(
            newsletterContent: newsletterContent,
          ),
          NewsletterBody(
            newsletterContent: newsletterContent,
          ),
        ],
      ),
    );
  }
}
