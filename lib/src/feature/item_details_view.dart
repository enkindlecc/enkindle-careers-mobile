import 'package:flutter/material.dart';

/// Displays detailed information about a SampleItem.
class SampleItemDetailsView extends StatelessWidget {
  const SampleItemDetailsView({Key? key}) : super(key: key);

  static const routeName = '/sample_item';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Bachelor in Design (B.Des) (10+2 Any stream)'),
      ),
      body: const Center(
        child: Text('What is B.Des all about ?'),
      ),
    );
  }
}
