import 'package:flutter/material.dart';
import 'package:genkit/client.dart';
import 'package:lunch_concierge_shared/schema.dart';

import 'theme.dart';
import 'widgets/dispenser_tray.dart';
import 'widgets/headline.dart';
import 'widgets/machine_panel.dart';
import 'widgets/noren_header.dart';

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
    } on Exception catch (error) {
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
            const NorenHeader(),
            Center(
              child: ConstrainedBox(
                constraints: const BoxConstraints(maxWidth: 1024),
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(24, 40, 24, 24),
                  child: LayoutBuilder(
                    builder: (context, constraints) {
                      final wide = constraints.maxWidth >= 840;
                      final machine = MachinePanel(
                        areaController: _areaController,
                        moodController: _moodController,
                        budgetController: _budgetController,
                        loading: _loading,
                        onAsk: _ask,
                        error: _error,
                      );
                      final tray = DispenserTray(
                        loading: _loading,
                        result: _result,
                      );
                      return Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Headline(wide: wide),
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
                              style: monoTextStyle(
                                size: 10,
                                color:
                                    LunchPalette.muted.withValues(alpha: 0.7),
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
