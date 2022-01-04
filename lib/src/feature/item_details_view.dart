import 'package:flutter/material.dart';

import 'newsletterHeader.dart';
import 'newsletterBody.dart';

/// Displays detailed information about a SampleItem.
/// TODO: keep static data in separate json files
/// TODO: display complete newsletter content with static data
class SampleItemDetailsView extends StatelessWidget {
  SampleItemDetailsView({Key? key}) : super(key: key);

  static const routeName = '/sample_item';
  final String nlTopic = 'Bachelor in Design (B.Des) (10+2 Any stream)';
  var newsletterContents = [
    {
      'header': 'What is B.Des all about ?',
      'body': """
      • It is 4 years undergraduate designing degree.... 
      • It is 4 years undergraduate designing degree....
      • It is 4 years undergraduate designing degree....
      """,
    },
    {
      'header': '2. What is B.Des all about ?',
      'body': """
      • 2. It is 4 years undergraduate designing degree.... 
      • It is 4 years undergraduate designing degree....
      • It is 4 years undergraduate designing degree....
      """,
    },
    {
      'header': '2. What is B.Des all about ?',
      'body': """
      • 2. It is 4 years undergraduate designing degree.... 
      • It is 4 years undergraduate designing degree....
      • It is 4 years undergraduate designing degree....
      """,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(nlTopic),
      ),
      body: Column(
        children: _listViewBuilder(newsletterContents),
      ),
    );
  }

  List<Widget> _listViewBuilder(newsletterContents) {
    late List<Widget> listview = [];

    for (var newsletterContent in newsletterContents) {
      listview.add(NewsletterHeader(
        newsletterHeader: newsletterContent['header'],
      ));
      listview.add(NewsletterBody(
        newsletterBody: newsletterContent['body'],
      ));
    }
    return listview;
  }
}
