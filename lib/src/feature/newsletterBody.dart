import 'package:flutter/material.dart';

class NewsletterBody extends StatelessWidget {
  const NewsletterBody({
    Key? key,
    required this.newsletterContent,
  }) : super(key: key);
  final List newsletterContent;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      // margin: const EdgeInsets.all(10),
      child: Text(
        newsletterContent[1],
        style: const TextStyle(
          fontSize: 16,
        ),
      ),
    );
  }
}
