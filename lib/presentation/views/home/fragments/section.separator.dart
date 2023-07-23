import 'package:buytout/presentation/atomic/index.dart';
import 'package:buytout/shared/index.dart';
import 'package:flutter/material.dart';

class SectionSeparator extends StatelessWidget {
  final String title;
  final String? subtitle;

  const SectionSeparator({super.key, required this.title, this.subtitle});

  @override
  Widget build(BuildContext context) {
    final subtitle_ = subtitle;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TextTitle2(title, textAlign: TextAlign.start),
        if (subtitle_ != null)
          TextSubtitle(
            subtitle_,
            textAlign: TextAlign.start,
            style: TextStyle(color: CommonColors.gray700.color),
          ),
      ],
    );
  }
}
