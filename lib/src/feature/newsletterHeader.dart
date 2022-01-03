import 'package:flutter/material.dart';

class NewsletterHeader extends StatelessWidget {
  const NewsletterHeader({
    Key? key,
    required this.newsletterHeader,
  }) : super(key: key);
  final String newsletterHeader;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.all(10),
      child: Text(
        newsletterHeader,
        style: const TextStyle(
          fontWeight: FontWeight.bold,
          decoration: TextDecoration.underline,
          fontSize: 20,
        ),
      ),
    );
  }
}
