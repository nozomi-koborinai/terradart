import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:lunch_concierge_shared/schema.dart';

import '../theme.dart';

final class Ticket extends StatelessWidget {
  const Ticket({super.key, required this.index, required this.suggestion});

  final int index;
  final LunchSuggestion suggestion;

  static const _stubWidth = 60.0;
  static const _perforationWidth = 16.0;

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          decoration: BoxDecoration(
            color: LunchPalette.ticket,
            borderRadius: BorderRadius.circular(4),
            border: Border.all(color: LunchPalette.hairline),
            boxShadow: const [
              BoxShadow(color: Color(0x141D3A5C), offset: Offset(2, 3)),
            ],
          ),
          child: IntrinsicHeight(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Container(
                  width: _stubWidth,
                  decoration: const BoxDecoration(
                    color: LunchPalette.machine,
                    borderRadius: BorderRadius.horizontal(
                      left: Radius.circular(3),
                    ),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        '食\n券',
                        textAlign: TextAlign.center,
                        style: displayTextStyle(
                          size: 16,
                          weight: FontWeight.w700,
                          color: Colors.white,
                          height: 1.25,
                        ),
                      ),
                      const SizedBox(height: 8),
                      Text(
                        'No.${index.toString().padLeft(2, '0')}',
                        style: monoTextStyle(size: 9, color: Colors.white54),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  width: _perforationWidth,
                  child: CustomPaint(painter: PerforationPainter()),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(4, 16, 18, 16),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                suggestion.name,
                                style: displayTextStyle(
                                  size: 17,
                                  weight: FontWeight.w700,
                                  height: 1.4,
                                ),
                              ),
                              const SizedBox(height: 6),
                              Text(
                                suggestion.reason,
                                style: const TextStyle(
                                  color: LunchPalette.muted,
                                  fontSize: 13.5,
                                  height: 1.65,
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(width: 16),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text(
                              formatYen(suggestion.estimatedPriceYen),
                              style: monoTextStyle(
                                size: 16,
                                weight: FontWeight.w700,
                                color: LunchPalette.ink,
                              ),
                            ),
                            const SizedBox(height: 2),
                            const Text(
                              '目安',
                              style: TextStyle(
                                color: LunchPalette.muted,
                                fontSize: 10,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        const Positioned(
          left: _stubWidth + _perforationWidth / 2 - 6,
          top: -5,
          child: PunchNotch(),
        ),
        const Positioned(
          left: _stubWidth + _perforationWidth / 2 - 6,
          bottom: -5,
          child: PunchNotch(),
        ),
      ],
    );
  }
}

final class PunchNotch extends StatelessWidget {
  const PunchNotch({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 12,
      height: 12,
      decoration: const BoxDecoration(
        color: LunchPalette.paper,
        shape: BoxShape.circle,
      ),
    );
  }
}

final class PerforationPainter extends CustomPainter {
  const PerforationPainter();

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = const Color(0xFFCFC7B4)
      ..strokeWidth = 1.2;
    final x = size.width / 2;
    for (var y = 4.0; y < size.height - 2; y += 8) {
      canvas.drawLine(Offset(x, y), Offset(x, y + 4), paint);
    }
  }

  @override
  bool shouldRepaint(PerforationPainter oldDelegate) => false;
}

final class DashedBorderPainter extends CustomPainter {
  const DashedBorderPainter();

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = const Color(0xFFC9C1AD)
      ..style = PaintingStyle.stroke
      ..strokeWidth = 1.2;
    final path = Path()
      ..addRRect(
        RRect.fromRectAndRadius(
          Offset.zero & size,
          const Radius.circular(4),
        ),
      );
    for (final metric in path.computeMetrics()) {
      var distance = 0.0;
      while (distance < metric.length) {
        canvas.drawPath(
          metric.extractPath(distance, math.min(distance + 6, metric.length)),
          paint,
        );
        distance += 11;
      }
    }
  }

  @override
  bool shouldRepaint(DashedBorderPainter oldDelegate) => false;
}
