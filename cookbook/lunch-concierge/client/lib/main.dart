import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:genkit/client.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lunch_concierge_shared/schema.dart';

void main() {
  runApp(const LunchConciergeApp());
}

// Indigo noren cloth, unbleached paper, sumi ink, vermilion stamp.
abstract final class _Palette {
  static const noren = Color(0xFF152C44);
  static const machine = Color(0xFF1D3A5C);
  static const paper = Color(0xFFF3EFE6);
  static const ticket = Color(0xFFFCFAF3);
  static const ink = Color(0xFF23272E);
  static const muted = Color(0xFF5A6270);
  static const accent = Color(0xFFC13A1F);
  static const hairline = Color(0xFFDDD5C2);
}

TextStyle _display({
  double? size,
  FontWeight weight = FontWeight.w900,
  Color color = _Palette.ink,
  double? height,
  double? letterSpacing,
}) {
  return GoogleFonts.zenOldMincho(
    fontSize: size,
    fontWeight: weight,
    color: color,
    height: height,
    letterSpacing: letterSpacing,
  );
}

TextStyle _mono({
  double? size,
  FontWeight weight = FontWeight.w500,
  Color color = _Palette.muted,
  double? height,
  double? letterSpacing,
}) {
  return GoogleFonts.ibmPlexMono(
    fontSize: size,
    fontWeight: weight,
    color: color,
    height: height,
    letterSpacing: letterSpacing,
  );
}

String _formatYen(int amount) {
  final digits = amount.toString();
  final buffer = StringBuffer('¥');
  for (var i = 0; i < digits.length; i++) {
    buffer.write(digits[i]);
    final remaining = digits.length - 1 - i;
    if (remaining > 0 && remaining % 3 == 0) {
      buffer.write(',');
    }
  }
  return buffer.toString();
}

final class LunchConciergeApp extends StatelessWidget {
  const LunchConciergeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Lunch Concierge',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: _Palette.machine,
          brightness: Brightness.light,
        ),
        scaffoldBackgroundColor: _Palette.paper,
        useMaterial3: true,
      ),
      home: const LunchPage(),
    );
  }
}

final class LunchPage extends StatefulWidget {
  const LunchPage({super.key});

  @override
  State<LunchPage> createState() => _LunchPageState();
}

final class _LunchPageState extends State<LunchPage> {
  final _areaController = TextEditingController(text: '渋谷');
  final _moodController = TextEditingController(text: 'あっさり');
  final _budgetController = TextEditingController(text: '1200');

  bool _loading = false;
  String? _error;
  LunchResponse? _result;

  @override
  void dispose() {
    _areaController.dispose();
    _moodController.dispose();
    _budgetController.dispose();
    super.dispose();
  }

  Future<void> _ask() async {
    setState(() {
      _loading = true;
      _error = null;
      _result = null;
    });

    try {
      final action =
          defineRemoteAction<LunchRequest, LunchResponse, void, void>(
        url: '/api/lunch',
        inputSchema: LunchRequest.$schema,
        outputSchema: LunchResponse.$schema,
      );
      final result = await action(
        input: LunchRequest(
          area: _areaController.text,
          mood: _moodController.text,
          budgetYen: int.tryParse(_budgetController.text) ?? 1200,
        ),
      );
      action.dispose();
      setState(() => _result = result);
    } catch (error) {
      setState(() => _error = error.toString());
    } finally {
      setState(() => _loading = false);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const _NorenHeader(),
            Center(
              child: ConstrainedBox(
                constraints: const BoxConstraints(maxWidth: 1024),
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(24, 40, 24, 24),
                  child: LayoutBuilder(
                    builder: (context, constraints) {
                      final wide = constraints.maxWidth >= 840;
                      final machine = _MachinePanel(
                        areaController: _areaController,
                        moodController: _moodController,
                        budgetController: _budgetController,
                        loading: _loading,
                        onAsk: _ask,
                        error: _error,
                      );
                      final tray = _DispenserTray(
                        loading: _loading,
                        result: _result,
                      );
                      return Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          _Headline(wide: wide),
                          const SizedBox(height: 36),
                          if (wide)
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(width: 396, child: machine),
                                const SizedBox(width: 32),
                                Expanded(child: tray),
                              ],
                            )
                          else ...[
                            machine,
                            const SizedBox(height: 32),
                            tray,
                          ],
                          const SizedBox(height: 56),
                          Center(
                            child: Text(
                              'TERRADART COOKBOOK — LUNCH CONCIERGE',
                              style: _mono(
                                size: 10,
                                color: _Palette.muted.withValues(alpha: 0.7),
                                letterSpacing: 3,
                              ),
                            ),
                          ),
                        ],
                      );
                    },
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

final class _NorenHeader extends StatefulWidget {
  const _NorenHeader();

  @override
  State<_NorenHeader> createState() => _NorenHeaderState();
}

final class _NorenHeaderState extends State<_NorenHeader>
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
                                color: _Palette.noren,
                                borderRadius: BorderRadius.vertical(
                                  bottom: Radius.circular(6),
                                ),
                              ),
                              child: i == 2
                                  ? Center(
                                      child: Text(
                                        '昼',
                                        style: _display(
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
              color: _Palette.noren,
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Row(
                children: [
                  Text(
                    'LUNCH CONCIERGE',
                    style: _mono(
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
                      style: _mono(
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

final class _Headline extends StatelessWidget {
  const _Headline({required this.wide});

  final bool wide;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          '明日のランチを決める。',
          style: _display(
            size: wide ? 42 : 30,
            height: 1.35,
            letterSpacing: 1,
          ),
        ),
        const SizedBox(height: 14),
        const Text(
          '場所・気分・予算を入れると、Genkit と Agent Platform が候補を考えて、Cloud SQL に履歴を残します。',
          style: TextStyle(
            color: _Palette.muted,
            fontSize: 15,
            height: 1.7,
          ),
        ),
      ],
    );
  }
}

final class _MachinePanel extends StatelessWidget {
  const _MachinePanel({
    required this.areaController,
    required this.moodController,
    required this.budgetController,
    required this.loading,
    required this.onAsk,
    required this.error,
  });

  final TextEditingController areaController;
  final TextEditingController moodController;
  final TextEditingController budgetController;
  final bool loading;
  final VoidCallback onAsk;
  final String? error;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(26),
      decoration: BoxDecoration(
        color: _Palette.machine,
        borderRadius: BorderRadius.circular(6),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Row(
            children: [
              Text(
                'TICKET MACHINE',
                style: _mono(
                  size: 11,
                  weight: FontWeight.w700,
                  color: Colors.white54,
                  letterSpacing: 2.5,
                ),
              ),
              const Spacer(),
              Text(
                'NO.001',
                style: _mono(size: 11, color: Colors.white38),
              ),
            ],
          ),
          const SizedBox(height: 22),
          _MachineField(
            controller: areaController,
            label: 'どのあたり？',
            hint: '渋谷',
          ),
          const SizedBox(height: 14),
          _MachineField(
            controller: moodController,
            label: 'どんな気分？',
            hint: 'あっさり、辛い、温かい',
          ),
          const SizedBox(height: 14),
          _MachineField(
            controller: budgetController,
            label: '予算',
            hint: '1200',
            suffix: '円',
            keyboardType: TextInputType.number,
          ),
          const SizedBox(height: 24),
          FilledButton(
            style: FilledButton.styleFrom(
              backgroundColor: _Palette.accent,
              foregroundColor: Colors.white,
              disabledBackgroundColor: const Color(0x26FFFFFF),
              disabledForegroundColor: Colors.white54,
              minimumSize: const Size.fromHeight(56),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(4),
              ),
              textStyle: _display(size: 17, weight: FontWeight.w700),
            ),
            onPressed: loading ? null : onAsk,
            child: Text(loading ? '発券中…' : '食券を発行する'),
          ),
          if (error != null) ...[
            const SizedBox(height: 18),
            Container(
              padding: const EdgeInsets.fromLTRB(14, 12, 14, 12),
              decoration: const BoxDecoration(
                color: Color(0x33000000),
                border: Border(
                  left: BorderSide(color: _Palette.accent, width: 3),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    '発券できませんでした。',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  const SizedBox(height: 6),
                  Text(
                    error!,
                    maxLines: 6,
                    overflow: TextOverflow.ellipsis,
                    style: _mono(size: 11, color: Colors.white70, height: 1.5),
                  ),
                ],
              ),
            ),
          ],
        ],
      ),
    );
  }
}

final class _MachineField extends StatelessWidget {
  const _MachineField({
    required this.controller,
    required this.label,
    required this.hint,
    this.suffix,
    this.keyboardType,
  });

  final TextEditingController controller;
  final String label;
  final String hint;
  final String? suffix;
  final TextInputType? keyboardType;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      keyboardType: keyboardType,
      cursorColor: Colors.white,
      style: const TextStyle(color: Colors.white, fontSize: 15),
      decoration: InputDecoration(
        labelText: label,
        hintText: hint,
        suffixText: suffix,
        suffixStyle: _mono(size: 13, color: Colors.white54),
        labelStyle: const TextStyle(color: Colors.white70, fontSize: 14),
        floatingLabelStyle: const TextStyle(color: Colors.white, fontSize: 14),
        hintStyle: const TextStyle(color: Colors.white38),
        filled: true,
        fillColor: const Color(0x17FFFFFF),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(4),
          borderSide: const BorderSide(color: Colors.white24),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(4),
          borderSide: const BorderSide(color: Colors.white, width: 2),
        ),
      ),
    );
  }
}

final class _DispenserTray extends StatefulWidget {
  const _DispenserTray({required this.loading, required this.result});

  final bool loading;
  final LunchResponse? result;

  @override
  State<_DispenserTray> createState() => _DispenserTrayState();
}

final class _DispenserTrayState extends State<_DispenserTray>
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
  void didUpdateWidget(_DispenserTray oldWidget) {
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
              style: _mono(
                size: 11,
                weight: FontWeight.w700,
                letterSpacing: 2.5,
              ),
            ),
            const Spacer(),
            if (widget.loading)
              Text(
                'PRINTING…',
                style: _mono(
                  size: 11,
                  weight: FontWeight.w700,
                  color: _Palette.accent,
                  letterSpacing: 2,
                ),
              ),
          ],
        ),
        const SizedBox(height: 10),
        _SlotBar(active: widget.loading),
        const SizedBox(height: 20),
        if (result == null)
          _GhostTicket(
            title: widget.loading ? '発券中…' : '食券はまだありません。',
            body: widget.loading
                ? 'Genkit が候補を考えています。'
                : '条件を入れてボタンを押すと、ランチの候補がここに発券されます。',
          )
        else ...[
          Text(
            result.message,
            style: _display(
              size: 18,
              weight: FontWeight.w700,
              height: 1.65,
            ),
          ),
          const SizedBox(height: 18),
          for (var i = 0; i < suggestions.length; i++) ...[
            if (i > 0) const SizedBox(height: 14),
            _DispensedTicket(
              animation: _dispense,
              interval: Interval(
                (i * 0.18).clamp(0.0, 0.6),
                ((i * 0.18) + 0.5).clamp(0.0, 1.0),
                curve: Curves.easeOutCubic,
              ),
              child: _Ticket(index: i + 1, suggestion: suggestions[i]),
            ),
          ],
        ],
      ],
    );
  }
}

final class _DispensedTicket extends StatelessWidget {
  const _DispensedTicket({
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

final class _SlotBar extends StatefulWidget {
  const _SlotBar({required this.active});

  final bool active;

  @override
  State<_SlotBar> createState() => _SlotBarState();
}

final class _SlotBarState extends State<_SlotBar>
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
  void didUpdateWidget(_SlotBar oldWidget) {
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
        color: _Palette.noren,
        borderRadius: BorderRadius.circular(6),
      ),
      alignment: Alignment.center,
      child: AnimatedBuilder(
        animation: _pulse,
        builder: (context, _) {
          final color = widget.active
              ? Color.lerp(
                  const Color(0xFF0A1826),
                  _Palette.accent,
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

final class _GhostTicket extends StatelessWidget {
  const _GhostTicket({required this.title, required this.body});

  final String title;
  final String body;

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      painter: const _DashedBorderPainter(),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(24, 30, 24, 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: _display(size: 21, weight: FontWeight.w700),
            ),
            const SizedBox(height: 10),
            Text(
              body,
              style: const TextStyle(
                color: _Palette.muted,
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

final class _Ticket extends StatelessWidget {
  const _Ticket({required this.index, required this.suggestion});

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
            color: _Palette.ticket,
            borderRadius: BorderRadius.circular(4),
            border: Border.all(color: _Palette.hairline),
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
                    color: _Palette.machine,
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
                        style: _display(
                          size: 16,
                          weight: FontWeight.w700,
                          color: Colors.white,
                          height: 1.25,
                        ),
                      ),
                      const SizedBox(height: 8),
                      Text(
                        'No.${index.toString().padLeft(2, '0')}',
                        style: _mono(size: 9, color: Colors.white54),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  width: _perforationWidth,
                  child: CustomPaint(painter: _PerforationPainter()),
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
                                style: _display(
                                  size: 17,
                                  weight: FontWeight.w700,
                                  height: 1.4,
                                ),
                              ),
                              const SizedBox(height: 6),
                              Text(
                                suggestion.reason,
                                style: const TextStyle(
                                  color: _Palette.muted,
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
                              _formatYen(suggestion.estimatedPriceYen),
                              style: _mono(
                                size: 16,
                                weight: FontWeight.w700,
                                color: _Palette.ink,
                              ),
                            ),
                            const SizedBox(height: 2),
                            const Text(
                              '目安',
                              style: TextStyle(
                                color: _Palette.muted,
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
          child: _PunchNotch(),
        ),
        const Positioned(
          left: _stubWidth + _perforationWidth / 2 - 6,
          bottom: -5,
          child: _PunchNotch(),
        ),
      ],
    );
  }
}

final class _PunchNotch extends StatelessWidget {
  const _PunchNotch();

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 12,
      height: 12,
      decoration: const BoxDecoration(
        color: _Palette.paper,
        shape: BoxShape.circle,
      ),
    );
  }
}

final class _PerforationPainter extends CustomPainter {
  const _PerforationPainter();

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
  bool shouldRepaint(_PerforationPainter oldDelegate) => false;
}

final class _DashedBorderPainter extends CustomPainter {
  const _DashedBorderPainter();

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
  bool shouldRepaint(_DashedBorderPainter oldDelegate) => false;
}
