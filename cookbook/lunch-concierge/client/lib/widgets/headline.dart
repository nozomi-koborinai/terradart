import 'package:flutter/material.dart';

import '../theme.dart';

final class Headline extends StatelessWidget {
  const Headline({super.key, required this.wide});

  final bool wide;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          '明日のランチを決める。',
          style: displayTextStyle(
            size: wide ? 42 : 30,
            height: 1.35,
            letterSpacing: 1,
          ),
        ),
        const SizedBox(height: 14),
        const Text(
          '場所・気分・予算を入れると、Genkit と Agent Platform が候補を考えて、Cloud SQL に履歴を残します。',
          style: TextStyle(
            color: LunchPalette.muted,
            fontSize: 15,
            height: 1.7,
          ),
        ),
      ],
    );
  }
}
