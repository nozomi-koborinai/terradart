import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

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
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.orange),
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
  Map<String, Object?>? _result;

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
      final response = await http.post(
        Uri.parse('/api/lunch'),
        headers: {'content-type': 'application/json'},
        body: jsonEncode({
          'data': {
            'area': _areaController.text,
            'mood': _moodController.text,
            'budgetYen': int.tryParse(_budgetController.text) ?? 1200,
          },
        }),
      );
      if (response.statusCode >= 400) {
        throw StateError('HTTP ${response.statusCode}: ${response.body}');
      }
      final decoded = jsonDecode(response.body) as Map<String, Object?>;
      setState(() {
        _result = (decoded['result'] ?? decoded['data'] ?? decoded)
            as Map<String, Object?>;
      });
    } catch (error) {
      setState(() => _error = error.toString());
    } finally {
      setState(() => _loading = false);
    }
  }

  @override
  Widget build(BuildContext context) {
    final result = _result;
    final suggestions = (result?['suggestions'] as List<Object?>?)
            ?.cast<Map<String, Object?>>() ??
        const <Map<String, Object?>>[];

    return Scaffold(
      appBar: AppBar(title: const Text('Lunch Concierge')),
      body: Center(
        child: ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 720),
          child: ListView(
            padding: const EdgeInsets.all(24),
            children: [
              Text(
                'AI ランチ相談',
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              const SizedBox(height: 8),
              const Text('気分・場所・予算から、今日のランチ候補を提案します。'),
              const SizedBox(height: 24),
              TextField(
                controller: _areaController,
                decoration: const InputDecoration(labelText: 'エリア'),
              ),
              const SizedBox(height: 12),
              TextField(
                controller: _moodController,
                decoration: const InputDecoration(labelText: '気分'),
              ),
              const SizedBox(height: 12),
              TextField(
                controller: _budgetController,
                decoration: const InputDecoration(labelText: '予算（円）'),
                keyboardType: TextInputType.number,
              ),
              const SizedBox(height: 20),
              FilledButton(
                onPressed: _loading ? null : _ask,
                child: Text(_loading ? '相談中...' : 'ランチを相談する'),
              ),
              if (_error != null) ...[
                const SizedBox(height: 20),
                Text(_error!, style: const TextStyle(color: Colors.red)),
              ],
              if (result != null) ...[
                const SizedBox(height: 28),
                Text(
                  result['message'] as String? ?? '',
                  style: Theme.of(context).textTheme.titleMedium,
                ),
                const SizedBox(height: 12),
                for (final suggestion in suggestions)
                  Card(
                    child: ListTile(
                      title: Text(suggestion['name'] as String? ?? ''),
                      subtitle: Text(suggestion['reason'] as String? ?? ''),
                      trailing: Text(
                        '${suggestion['estimatedPriceYen'] ?? '?'}円',
                      ),
                    ),
                  ),
              ],
            ],
          ),
        ),
      ),
    );
  }
}
