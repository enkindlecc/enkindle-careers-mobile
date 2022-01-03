import 'package:flutter/material.dart';

class NewsletterBody extends StatelessWidget {
  const NewsletterBody({
    Key? key,
    required this.newsletterBody,
  }) : super(key: key);
  final String newsletterBody;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      // margin: const EdgeInsets.all(10),
      child: Text(
        newsletterBody,
        style: const TextStyle(
          fontSize: 16,
        ),
      ),
    );
  }
}
