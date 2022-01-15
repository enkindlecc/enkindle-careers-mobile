import 'package:flutter/material.dart';

import 'newsletterHeader.dart';
import 'newsletterBody.dart';

/// Displays detailed information about a SampleItem.
/// TODO: fix all warnings...
class SampleItemDetailsView extends StatelessWidget {
  const SampleItemDetailsView({Key? key}) : super(key: key);

  static const routeName = '/newsletter';

  @override
  Widget build(BuildContext context) {
    final newsletterContents =
        ModalRoute.of(context)!.settings.arguments as Map<String, Object>;
    final title = newsletterContents['nlTopic'].toString();

    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Column(
        children: _listViewBuilder(newsletterContents),
      ),
    );
  }

  List<Widget> _listViewBuilder(newsletterContents) {
    late List<Widget> listview = [];

    for (var newsletterContent in newsletterContents['contents']) {
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
