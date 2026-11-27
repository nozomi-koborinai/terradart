// ignore_for_file: avoid_print

import 'dart:io';

import 'package:terradart_codegen/src/codegen/sealed_name_debt.dart';

import 'bump_new_factories.dart'
    show awaitingExampleToken, curationBacklogPath, exampleDebtPath;
import 'wrap_lanes.dart' show sealedNameDebtPath;

List<String> sealedNameEntries(String source) => [
  for (final MapEntry(key: type, value: groups) in parseSealedNameDebt(
    source,
    path: sealedNameDebtPath,
  ).entries)
    for (final key in groups.keys) '$type [$key]',
]..sort();

Map<String, String> awaitingExampleLines(String source) => {
  for (final raw in source.split('\n'))
    if (raw.trim() case final line
        when line.isNotEmpty &&
            !line.startsWith('#') &&
            line.indexOf(':') > 0 &&
            line.contains(awaitingExampleToken))
      line.substring(0, line.indexOf(':')).trim(): line
          .substring(line.indexOf(':') + 1)
          .trim(),
};

// Parsed line-by-line rather than with loadYaml because older release tags hold unquoted ": " in notes.
Map<String, String> backlogEntries(String source) {
  final out = <String, String>{};
  String? current;
  final fields = <String, String>{};
  void flush() {
    if (current == null) return;
    out[current] =
        '(${fields['provider_version'] ?? '?'}, '
        'detected ${fields['detected_at'] ?? '?'})';
  }

  for (final line in source.split('\n')) {
    if (_backlogHead.firstMatch(line) case final m?) {
      flush();
      current = '${m[1]}: ${m[2]}';
      fields.clear();
    } else if (_backlogField.firstMatch(line) case final m?
        when current != null) {
      fields[m[1]!] = m[2]!;
    }
  }
  flush();
  return out;
}

final _backlogHead = RegExp(r'^\s*- (resource|data_source): (\S+)\s*$');
final _backlogField = RegExp(r'^\s+(detected_at|provider_version): (\S+)\s*$');

class ReleaseLedgerReport {
  ReleaseLedgerReport({
    required this.since,
    required this.sealed,
    required this.awaiting,
    required this.newAwaiting,
    required this.backlog,
    required this.newBacklog,
  });

  factory ReleaseLedgerReport.from({
    required String? since,
    required String sealedNameDebt,
    required String exampleDebt,
    required String curationBacklog,
    String? previousExampleDebt,
    String? previousCurationBacklog,
  }) {
    final awaiting = awaitingExampleLines(exampleDebt);
    final backlog = backlogEntries(curationBacklog);
    final oldAwaiting = previousExampleDebt == null
        ? const <String, String>{}
        : awaitingExampleLines(previousExampleDebt);
    final oldBacklog = previousCurationBacklog == null
        ? const <String, String>{}
        : backlogEntries(previousCurationBacklog);
    return ReleaseLedgerReport(
      since: since,
      sealed: sealedNameEntries(sealedNameDebt),
      awaiting: awaiting,
      newAwaiting: [
        for (final k in awaiting.keys)
          if (!oldAwaiting.containsKey(k)) k,
      ],
      backlog: backlog,
      newBacklog: [
        for (final k in backlog.keys)
          if (!oldBacklog.containsKey(k)) k,
      ],
    );
  }

  final String? since;
  final List<String> sealed;
  final Map<String, String> awaiting;
  final List<String> newAwaiting;
  final Map<String, String> backlog;
  final List<String> newBacklog;

  bool get blocked => sealed.isNotEmpty;

  String render() {
    final ref = since ?? 'the first release (no previous v* tag)';
    final buf = StringBuffer()
      ..writeln('## Release ledger check (since $ref)')
      ..writeln();
    if (sealed.isEmpty) {
      buf.writeln('- `$sealedNameDebtPath`: empty — no temporary `Or` names.');
    } else {
      buf.writeln(
        '- `$sealedNameDebtPath`: **${sealed.length} temporary `Or` '
        'name(s) — blocks the release.** Name each group with a '
        '`sealedNames` entry in its override and re-run `terradart wrap`:',
      );
      for (final e in sealed) {
        buf.writeln('  - $e');
      }
    }
    _section(
      buf,
      '`$exampleDebtPath` `$awaitingExampleToken` lines',
      awaiting,
      newAwaiting,
      separator: ': ',
    );
    _section(buf, '`$curationBacklogPath` entries', backlog, newBacklog);
    buf
      ..writeln()
      ..writeln(
        'Pay the example and backlog entries down before tagging, or accept '
        'them by keeping this report in the release PR body.',
      );
    return buf.toString();
  }

  void _section(
    StringBuffer buf,
    String title,
    Map<String, String> all,
    List<String> added, {
    String separator = ' ',
  }) {
    buf.writeln(
      '- $title: ${all.length} (${added.length} new since '
      '${since ?? 'the start'})${added.isEmpty ? '' : ':'}',
    );
    for (final k in added) {
      buf.writeln('  - $k$separator${all[k]}');
    }
  }
}

String? latestReleaseTag() {
  final r = Process.runSync('git', [
    'describe',
    '--tags',
    '--abbrev=0',
    '--match',
    'v[0-9]*',
  ]);
  final tag = '${r.stdout}'.trim();
  return r.exitCode == 0 && tag.isNotEmpty ? tag : null;
}

String? showAt(String? ref, String path) {
  if (ref == null) return null;
  final r = Process.runSync('git', ['show', '$ref:$path']);
  return r.exitCode == 0 ? '${r.stdout}' : null;
}

void main(List<String> args) {
  String? since;
  for (var i = 0; i < args.length; i++) {
    switch (args[i]) {
      case '--since' when i + 1 < args.length:
        since = args[++i];
      case '-h' || '--help':
        print('usage: dart tool/release_ledger_check.dart [--since <git-ref>]');
        return;
      default:
        stderr.writeln('unknown argument: ${args[i]}');
        exit(64);
    }
  }
  since ??= latestReleaseTag();
  if (since != null &&
      Process.runSync('git', [
            'rev-parse',
            '--verify',
            '--quiet',
            since,
          ]).exitCode !=
          0) {
    stderr.writeln('error: --since $since is not a git ref');
    exit(64);
  }

  final report = ReleaseLedgerReport.from(
    since: since,
    sealedNameDebt: File(sealedNameDebtPath).readAsStringSync(),
    exampleDebt: File(exampleDebtPath).readAsStringSync(),
    curationBacklog: File(curationBacklogPath).readAsStringSync(),
    previousExampleDebt: showAt(since, exampleDebtPath),
    previousCurationBacklog: showAt(since, curationBacklogPath),
  );
  print(report.render());
  if (report.blocked) exit(1);
}
