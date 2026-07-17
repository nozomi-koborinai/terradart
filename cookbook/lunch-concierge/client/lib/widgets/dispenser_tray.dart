import 'package:flutter/material.dart';
import 'package:lunch_concierge_shared/schema.dart';

import '../theme.dart';
import 'ticket.dart';

final class DispenserTray extends StatefulWidget {
  const DispenserTray({super.key, required this.loading, required this.result});

  final bool loading;
  final LunchResponse? result;

  @override
  State<DispenserTray> createState() => DispenserTrayState();
}

final class DispenserTrayState extends State<DispenserTray>
    with SingleTickerProviderStateMixin {
  late final AnimationController _dispense;

  @override
  void initState() {
    super.initState();
    _dispense = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1100),
      value: 1,
    );
  }

  @override
  void didUpdateWidget(DispenserTray oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (widget.result != null && widget.result != oldWidget.result) {
      if (MediaQuery.disableAnimationsOf(context)) {
        _dispense.value = 1;
      } else {
        _dispense.forward(from: 0);
      }
    }
  }

  @override
  void dispose() {
    _dispense.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final result = widget.result;
    final suggestions = result?.suggestions ?? const <LunchSuggestion>[];

    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Row(
          children: [
            Text(
              'DISPENSER',
              style: monoTextStyle(
                size: 11,
                weight: FontWeight.w700,
                letterSpacing: 2.5,
              ),
            ),
            const Spacer(),
            if (widget.loading)
              Text(
                'PRINTING…',
                style: monoTextStyle(
                  size: 11,
                  weight: FontWeight.w700,
                  color: LunchPalette.accent,
                  letterSpacing: 2,
                ),
              ),
          ],
        ),
        const SizedBox(height: 10),
        SlotBar(active: widget.loading),
        const SizedBox(height: 20),
        if (result == null)
          GhostTicket(
            title: widget.loading ? '発券中…' : '食券はまだありません。',
            body: widget.loading
                ? 'Genkit が候補を考えています。'
                : '条件を入れてボタンを押すと、ランチの候補がここに発券されます。',
          )
        else ...[
          Text(
            result.message,
            style: displayTextStyle(
              size: 18,
              weight: FontWeight.w700,
              height: 1.65,
            ),
          ),
          const SizedBox(height: 18),
          for (var i = 0; i < suggestions.length; i++) ...[
            if (i > 0) const SizedBox(height: 14),
            DispensedTicket(
              animation: _dispense,
              interval: Interval(
                (i * 0.18).clamp(0.0, 0.6),
                ((i * 0.18) + 0.5).clamp(0.0, 1.0),
                curve: Curves.easeOutCubic,
              ),
              child: Ticket(index: i + 1, suggestion: suggestions[i]),
            ),
          ],
        ],
      ],
    );
  }
}

final class DispensedTicket extends StatelessWidget {
  const DispensedTicket({
    super.key,
    required this.animation,
    required this.interval,
    required this.child,
  });

  final Animation<double> animation;
  final Interval interval;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    final curved = CurvedAnimation(parent: animation, curve: interval);
    return FadeTransition(
      opacity: curved,
      child: SlideTransition(
        position: Tween<Offset>(
          begin: const Offset(0, -0.22),
          end: Offset.zero,
        ).animate(curved),
        child: child,
      ),
    );
  }
}

final class SlotBar extends StatefulWidget {
  const SlotBar({super.key, required this.active});

  final bool active;

  @override
  State<SlotBar> createState() => SlotBarState();
}

final class SlotBarState extends State<SlotBar>
    with SingleTickerProviderStateMixin {
  late final AnimationController _pulse;

  @override
  void initState() {
    super.initState();
    _pulse = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 800),
    );
    _syncPulse();
  }

  @override
  void didUpdateWidget(SlotBar oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.active != widget.active) {
      _syncPulse();
    }
  }

  void _syncPulse() {
    if (widget.active) {
      _pulse.repeat(reverse: true);
    } else {
      _pulse.stop();
      _pulse.value = 0;
    }
  }

  @override
  void dispose() {
    _pulse.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 12,
      decoration: BoxDecoration(
        color: LunchPalette.noren,
        borderRadius: BorderRadius.circular(6),
      ),
      alignment: Alignment.center,
      child: AnimatedBuilder(
        animation: _pulse,
        builder: (context, _) {
          final color = widget.active
              ? Color.lerp(
                  const Color(0xFF0A1826),
                  LunchPalette.accent,
                  _pulse.value,
                )!
              : const Color(0xFF0A1826);
          return Container(
            height: 4,
            margin: const EdgeInsets.symmetric(horizontal: 10),
            decoration: BoxDecoration(
              color: color,
              borderRadius: BorderRadius.circular(2),
            ),
          );
        },
      ),
    );
  }
}

final class GhostTicket extends StatelessWidget {
  const GhostTicket({super.key, required this.title, required this.body});

  final String title;
  final String body;

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      painter: const DashedBorderPainter(),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(24, 30, 24, 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: displayTextStyle(size: 21, weight: FontWeight.w700),
            ),
            const SizedBox(height: 10),
            Text(
              body,
              style: const TextStyle(
                color: LunchPalette.muted,
                fontSize: 14,
                height: 1.7,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
