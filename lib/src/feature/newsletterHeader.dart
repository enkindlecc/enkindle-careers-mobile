import 'package:flutter/material.dart';

class NewsletterHeader extends StatelessWidget {
  const NewsletterHeader({
    Key? key,
    required this.newsletterContent,
  }) : super(key: key);
  final List newsletterContent;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.all(10),
      child: Text(
        newsletterContent[0],
        style: const TextStyle(
          fontWeight: FontWeight.bold,
          decoration: TextDecoration.underline,
          fontSize: 20,
        ),
      ),
    );
  }
}
