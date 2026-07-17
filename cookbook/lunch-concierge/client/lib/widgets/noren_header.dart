import 'dart:math' as math;

import 'package:flutter/material.dart';

import '../theme.dart';

final class NorenHeader extends StatefulWidget {
  const NorenHeader({super.key});

  @override
  State<NorenHeader> createState() => NorenHeaderState();
}

final class NorenHeaderState extends State<NorenHeader>
    with SingleTickerProviderStateMixin {
  late final AnimationController _sway;

  @override
  void initState() {
    super.initState();
    _sway = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 6),
    );
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    if (MediaQuery.disableAnimationsOf(context)) {
      _sway.stop();
    } else if (!_sway.isAnimating) {
      _sway.repeat();
    }
  }

  @override
  void dispose() {
    _sway.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final compact = MediaQuery.sizeOf(context).width < 640;
    const bandHeight = 46.0;
    final panelHeight = compact ? 88.0 : 108.0;
    return SizedBox(
      height: bandHeight + panelHeight - 2,
      child: Stack(
        fit: StackFit.expand,
        children: [
          Positioned(
            top: bandHeight - 6,
            left: 0,
            right: 0,
            height: panelHeight + 4,
            child: ExcludeSemantics(
              child: AnimatedBuilder(
                animation: _sway,
                builder: (context, _) {
                  final t = _sway.value * 2 * math.pi;
                  return Row(
                    children: [
                      for (var i = 0; i < 5; i++) ...[
                        if (i > 0) const SizedBox(width: 10),
                        Expanded(
                          child: Transform(
                            alignment: Alignment.topCenter,
                            transform: Matrix4.skewX(
                              0.035 * math.sin(t + i * 0.85),
                            ),
                            child: Container(
                              decoration: const BoxDecoration(
                                color: LunchPalette.noren,
                                borderRadius: BorderRadius.vertical(
                                  bottom: Radius.circular(6),
                                ),
                              ),
                              child: i == 2
                                  ? Center(
                                      child: Text(
                                        '昼',
                                        style: displayTextStyle(
                                          size: compact ? 40 : 52,
                                          color: Colors.white,
                                          height: 1,
                                        ),
                                      ),
                                    )
                                  : null,
                            ),
                          ),
                        ),
                      ],
                    ],
                  );
                },
              ),
            ),
          ),
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            height: bandHeight,
            child: Container(
              color: LunchPalette.noren,
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Row(
                children: [
                  Text(
                    'LUNCH CONCIERGE',
                    style: monoTextStyle(
                      size: 13,
                      weight: FontWeight.w700,
                      color: Colors.white,
                      letterSpacing: 4,
                    ),
                  ),
                  const Spacer(),
                  if (!compact)
                    Text(
                      'GENKIT × AGENT PLATFORM × CLOUD SQL',
                      style: monoTextStyle(
                        size: 11,
                        color: Colors.white60,
                        letterSpacing: 2,
                      ),
                    ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
