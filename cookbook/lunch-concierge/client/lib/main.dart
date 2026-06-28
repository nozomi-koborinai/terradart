import 'package:flutter/material.dart';
import 'package:genkit/client.dart';
import 'package:lunch_concierge_shared/schema.dart';

void main() {
  runApp(const LunchConciergeApp());
}

final class LunchConciergeApp extends StatelessWidget {
  const LunchConciergeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Lunch Concierge',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFFE36B2C),
          brightness: Brightness.light,
        ),
        scaffoldBackgroundColor: const Color(0xFFFFF8EA),
        fontFamily: 'sans',
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
    final result = _result;
    final suggestions = result?.suggestions ?? const <LunchSuggestion>[];

    return Scaffold(
      body: DecoratedBox(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [Color(0xFFFFF8EA), Color(0xFFFFE1B8)],
          ),
        ),
        child: SafeArea(
          child: Center(
            child: ConstrainedBox(
              constraints: const BoxConstraints(maxWidth: 1120),
              child: ListView(
                padding: const EdgeInsets.fromLTRB(24, 28, 24, 40),
                children: [
                  const _HeroHeader(),
                  const SizedBox(height: 28),
                  LayoutBuilder(
                    builder: (context, constraints) {
                      final wide = constraints.maxWidth >= 860;
                      final form = _OrderCard(
                        areaController: _areaController,
                        moodController: _moodController,
                        budgetController: _budgetController,
                        loading: _loading,
                        onAsk: _ask,
                        error: _error,
                      );
                      final resultPane = _ResultBoard(
                        result: result,
                        suggestions: suggestions,
                      );
                      if (!wide) {
                        return Column(
                          children: [
                            form,
                            const SizedBox(height: 20),
                            resultPane,
                          ],
                        );
                      }
                      return Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(flex: 5, child: form),
                          const SizedBox(width: 22),
                          Expanded(flex: 6, child: resultPane),
                        ],
                      );
                    },
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

final class _HeroHeader extends StatelessWidget {
  const _HeroHeader();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(28),
      decoration: BoxDecoration(
        color: const Color(0xFF24372A),
        borderRadius: BorderRadius.circular(30),
        boxShadow: const [
          BoxShadow(
            color: Color(0x26000000),
            blurRadius: 30,
            offset: Offset(0, 18),
          ),
        ],
      ),
      child: const Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _Kicker('Lunch Concierge'),
                SizedBox(height: 18),
                Text(
                  '昼休みの気分を、\n一枚のメニューにする。',
                  style: TextStyle(
                    color: Color(0xFFFFF8EA),
                    fontSize: 42,
                    height: 1.06,
                    fontWeight: FontWeight.w800,
                    letterSpacing: -1.4,
                  ),
                ),
                SizedBox(height: 16),
                Text(
                  '場所・気分・予算を渡すと、Genkit と Vertex AI が候補を考え、Cloud SQL に相談履歴を残します。',
                  style: TextStyle(
                    color: Color(0xFFE9DCC8),
                    fontSize: 16,
                    height: 1.6,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(width: 24),
          _LunchStamp(),
        ],
      ),
    );
  }
}

final class _Kicker extends StatelessWidget {
  const _Kicker(this.label);

  final String label;

  @override
  Widget build(BuildContext context) {
    return Text(
      label.toUpperCase(),
      style: const TextStyle(
        color: Color(0xFFFFB84D),
        fontSize: 12,
        fontWeight: FontWeight.w800,
        letterSpacing: 2.2,
      ),
    );
  }
}

final class _LunchStamp extends StatelessWidget {
  const _LunchStamp();

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 122,
      height: 122,
      decoration: BoxDecoration(
        color: const Color(0xFFFFF8EA),
        borderRadius: BorderRadius.circular(28),
        border: Border.all(color: const Color(0xFFE36B2C), width: 3),
      ),
      child: const Center(
        child: Text(
          '昼\n券',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Color(0xFFE36B2C),
            fontSize: 34,
            height: 0.95,
            fontWeight: FontWeight.w900,
          ),
        ),
      ),
    );
  }
}

final class _OrderCard extends StatelessWidget {
  const _OrderCard({
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
    return _Panel(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const _Kicker('Order slip'),
          const SizedBox(height: 12),
          const Text(
            '今日の条件',
            style: TextStyle(
              color: Color(0xFF24372A),
              fontSize: 26,
              fontWeight: FontWeight.w800,
            ),
          ),
          const SizedBox(height: 22),
          _LunchTextField(
            controller: areaController,
            label: 'どのあたり？',
            hint: '渋谷',
          ),
          const SizedBox(height: 14),
          _LunchTextField(
            controller: moodController,
            label: 'どんな気分？',
            hint: 'あっさり、辛い、温かい',
          ),
          const SizedBox(height: 14),
          _LunchTextField(
            controller: budgetController,
            label: '予算',
            hint: '1200',
            suffix: '円',
            keyboardType: TextInputType.number,
          ),
          const SizedBox(height: 22),
          FilledButton(
            style: FilledButton.styleFrom(
              backgroundColor: const Color(0xFFE36B2C),
              foregroundColor: Colors.white,
              padding: const EdgeInsets.symmetric(vertical: 18),
              textStyle: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w800,
              ),
            ),
            onPressed: loading ? null : onAsk,
            child: Text(loading ? '相談中...' : 'ランチを相談する'),
          ),
          if (error != null) ...[
            const SizedBox(height: 16),
            Text(
              error!,
              style: const TextStyle(
                color: Color(0xFFB42318),
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ],
      ),
    );
  }
}

final class _LunchTextField extends StatelessWidget {
  const _LunchTextField({
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
      decoration: InputDecoration(
        labelText: label,
        hintText: hint,
        suffixText: suffix,
        filled: true,
        fillColor: const Color(0xFFFFF8EA),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(18),
          borderSide: const BorderSide(color: Color(0xFFE4CDAA)),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(18),
          borderSide: const BorderSide(color: Color(0xFFE36B2C), width: 2),
        ),
      ),
    );
  }
}

final class _ResultBoard extends StatelessWidget {
  const _ResultBoard({required this.result, required this.suggestions});

  final LunchResponse? result;
  final List<LunchSuggestion> suggestions;

  @override
  Widget build(BuildContext context) {
    if (result == null) {
      return const _Panel(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _Kicker('Menu board'),
            SizedBox(height: 16),
            Text(
              'まだ白紙のメニューです。',
              style: TextStyle(
                color: Color(0xFF24372A),
                fontSize: 26,
                fontWeight: FontWeight.w800,
              ),
            ),
            SizedBox(height: 10),
            Text(
              '条件を入れると、候補が食券みたいなカードで並びます。',
              style: TextStyle(color: Color(0xFF6C5B45), height: 1.5),
            ),
          ],
        ),
      );
    }

    return _Panel(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const _Kicker('Today\'s menu'),
          const SizedBox(height: 14),
          Text(
            result!.message,
            style: const TextStyle(
              color: Color(0xFF24372A),
              fontSize: 20,
              fontWeight: FontWeight.w700,
              height: 1.45,
            ),
          ),
          const SizedBox(height: 18),
          for (var i = 0; i < suggestions.length; i++) ...[
            _MenuTicket(index: i + 1, suggestion: suggestions[i]),
            if (i != suggestions.length - 1) const SizedBox(height: 12),
          ],
        ],
      ),
    );
  }
}

final class _MenuTicket extends StatelessWidget {
  const _MenuTicket({required this.index, required this.suggestion});

  final int index;
  final LunchSuggestion suggestion;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(18),
      decoration: BoxDecoration(
        color: const Color(0xFFFFF8EA),
        borderRadius: BorderRadius.circular(22),
        border: Border.all(color: const Color(0xFFE4CDAA)),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 42,
            height: 42,
            decoration: const BoxDecoration(
              color: Color(0xFFFFB84D),
              shape: BoxShape.circle,
            ),
            child: Center(
              child: Text(
                '$index',
                style: const TextStyle(
                  color: Color(0xFF24372A),
                  fontWeight: FontWeight.w900,
                ),
              ),
            ),
          ),
          const SizedBox(width: 14),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  suggestion.name,
                  style: const TextStyle(
                    color: Color(0xFF24372A),
                    fontSize: 18,
                    fontWeight: FontWeight.w800,
                  ),
                ),
                const SizedBox(height: 6),
                Text(
                  suggestion.reason,
                  style: const TextStyle(
                    color: Color(0xFF6C5B45),
                    height: 1.5,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(width: 12),
          Text(
            '${suggestion.estimatedPriceYen}円',
            style: const TextStyle(
              color: Color(0xFFE36B2C),
              fontWeight: FontWeight.w900,
            ),
          ),
        ],
      ),
    );
  }
}

final class _Panel extends StatelessWidget {
  const _Panel({required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(24),
      decoration: BoxDecoration(
        color: const Color(0xD6FFFFFF),
        borderRadius: BorderRadius.circular(28),
        border: Border.all(color: const Color(0x33E36B2C)),
        boxShadow: const [
          BoxShadow(
            color: Color(0x1F6C4A2A),
            blurRadius: 24,
            offset: Offset(0, 14),
          ),
        ],
      ),
      child: child,
    );
  }
}
