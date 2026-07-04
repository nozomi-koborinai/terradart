// loop_health_report.dart — weekly health report for the three agent loops.
//
// Collects metrics (trailing 7 days, UTC) and stall signals for the bump,
// diagnosis, and wave loops from GitHub traces only, and renders one
// markdown report. loop-health.yml runs this every Monday 03:00 UTC and
// appends the output to the single "Loop health" tracking issue.
//
// Collection is separated from rendering: `collectLoopHealth` takes an
// injectable `GhRunner` so tests feed synthetic JSON; `renderLoopHealth`
// is pure. Stall thresholds are the constants below.
// ignore_for_file: avoid_print

import 'dart:convert';
import 'dart:io';

/// Days without update before an open wave/* PR counts as stalled
/// (WIP-1 silently halts the whole loop behind it).
const waveStallDays = 3;

/// Days a smoke-diagnosed issue may stay open before it reads as a
/// forgotten close (humans close after the next green sweep).
const diagStallDays = 7;

/// Days a schema-bump PR may stay open before the Monday agent looks
/// like it missed it.
const bumpStallDays = 4;

typedef GhRunner = String Function(List<String> args);

typedef Stall = ({String kind, String ref, int ageDays});

typedef LoopHealthData = ({
  int bumpOpened,
  int bumpMerged,
  int bumpApproved,
  int bumpEscalated,
  bool bumpArmed,
  int diagIssuesOpened,
  int diagIssuesClosed,
  int diagLabeled,
  int waveOpened,
  int waveMerged,
  int waveApproved,
  int waveExecutorRejections,
  bool waveArmed,
  int backlogRemaining,
  int backlogSkipNoted,
  List<Stall> stalls,
});

String _date(DateTime d) => '${d.year.toString().padLeft(4, '0')}-'
    '${d.month.toString().padLeft(2, '0')}-'
    '${d.day.toString().padLeft(2, '0')}';

int _searchCount(GhRunner gh, String repo, String query) {
  final raw = gh([
    'api',
    'search/issues?q=${Uri.encodeComponent('repo:$repo $query')}',
  ]);
  return (jsonDecode(raw) as Map<String, dynamic>)['total_count'] as int? ?? 0;
}

List<Map<String, dynamic>> _searchItems(
  GhRunner gh,
  String repo,
  String query,
) {
  final raw = gh([
    'api',
    'search/issues?q=${Uri.encodeComponent('repo:$repo $query')}&per_page=100',
  ]);
  final items =
      (jsonDecode(raw) as Map<String, dynamic>)['items'] as List<dynamic>? ??
          const [];
  return items.cast<Map<String, dynamic>>();
}

int _ageDays(DateTime now, String iso) =>
    now.difference(DateTime.parse(iso)).inDays;

LoopHealthData collectLoopHealth({
  required GhRunner gh,
  required DateTime now,
  required String backlogYaml,
  required bool bumpArmed,
  required bool waveArmed,
  String repo = 'nozomi-koborinai/terradart',
}) {
  final since = _date(now.subtract(const Duration(days: 7)));

  // Backlog depth from the checked-out ledger (no API involved).
  final backlogRemaining =
      RegExp(r'^  - resource:', multiLine: true).allMatches(backlogYaml).length;
  final backlogSkipNoted =
      RegExp('note:.*skipped by wave-shipper').allMatches(backlogYaml).length;

  // Wave PRs: the search API cannot filter by head branch, so list recent
  // PRs once and filter in Dart.
  final pullsRaw = gh([
    'api',
    'repos/$repo/pulls?state=all&sort=created&direction=desc&per_page=100',
  ]);
  final pulls =
      (jsonDecode(pullsRaw) as List<dynamic>).cast<Map<String, dynamic>>();
  final wavePulls = pulls
      .where(
        (p) => ((p['head'] as Map<String, dynamic>?)?['ref'] as String? ?? '')
            .startsWith('wave/'),
      )
      .toList();
  final sinceDt = now.subtract(const Duration(days: 7));
  bool inWindow(String? iso) =>
      iso != null && DateTime.parse(iso).isAfter(sinceDt);
  final waveOpened =
      wavePulls.where((p) => inWindow(p['created_at'] as String?)).length;
  final waveMerged =
      wavePulls.where((p) => inWindow(p['merged_at'] as String?)).length;

  final stalls = <Stall>[
    for (final p in wavePulls)
      if (p['state'] == 'open' &&
          _ageDays(now, p['updated_at'] as String) >= waveStallDays)
        (
          kind: 'wave PR',
          ref: '#${p['number']}',
          // updated_at is a proxy for "no push" — comments also bump it,
          // which only makes the detector more lenient, never noisier.
          ageDays: _ageDays(now, p['updated_at'] as String),
        ),
    for (final i in _searchItems(
      gh,
      repo,
      'is:issue is:open label:smoke-diagnosed',
    ))
      if (_ageDays(now, i['created_at'] as String) >= diagStallDays)
        (
          kind: 'diagnosed issue',
          ref: '#${i['number']}',
          ageDays: _ageDays(now, i['created_at'] as String),
        ),
    for (final p in _searchItems(gh, repo, 'is:pr is:open label:schema-bump'))
      if (_ageDays(now, p['created_at'] as String) >= bumpStallDays)
        (
          kind: 'bump PR',
          ref: '#${p['number']}',
          ageDays: _ageDays(now, p['created_at'] as String),
        ),
  ];

  return (
    bumpOpened:
        _searchCount(gh, repo, 'is:pr label:schema-bump created:>=$since'),
    bumpMerged:
        _searchCount(gh, repo, 'is:pr label:schema-bump merged:>=$since'),
    bumpApproved:
        _searchCount(gh, repo, 'is:pr label:bump-approved updated:>=$since'),
    bumpEscalated:
        _searchCount(gh, repo, 'is:pr label:bump-escalated updated:>=$since'),
    bumpArmed: bumpArmed,
    diagIssuesOpened:
        _searchCount(gh, repo, 'is:issue label:apply-smoke created:>=$since'),
    diagIssuesClosed:
        _searchCount(gh, repo, 'is:issue label:apply-smoke closed:>=$since'),
    diagLabeled: _searchCount(
      gh,
      repo,
      'is:issue label:smoke-diagnosed updated:>=$since',
    ),
    waveOpened: waveOpened,
    waveMerged: waveMerged,
    waveApproved:
        _searchCount(gh, repo, 'is:pr label:wave-approved updated:>=$since'),
    // Approximation: PRs whose comments contain the executor's refusal
    // marker and that saw activity this window.
    waveExecutorRejections: _searchCount(
      gh,
      repo,
      'is:pr "wave-merge: NOT merging" in:comments updated:>=$since',
    ),
    waveArmed: waveArmed,
    backlogRemaining: backlogRemaining,
    backlogSkipNoted: backlogSkipNoted,
    stalls: stalls,
  );
}

String renderLoopHealth({
  required LoopHealthData data,
  required DateTime now,
}) {
  final windowStart = _date(now.subtract(const Duration(days: 7)));
  final summary = data.stalls.isEmpty
      ? '✅ all loops healthy'
      : '⚠️ ${data.stalls.length} stall(s)';
  String armed(bool v) => v ? 'armed' : 'disarmed';

  final buf = StringBuffer()
    ..writeln('# Loop health — $windowStart → ${_date(now)}')
    ..writeln()
    ..writeln('**$summary**')
    ..writeln()
    ..writeln('## Bump loop')
    ..writeln()
    ..writeln(
      '- PRs opened: ${data.bumpOpened} · merged: ${data.bumpMerged}',
    )
    ..writeln(
      '- agent verdicts — approved: ${data.bumpApproved} · '
      'escalated: ${data.bumpEscalated}',
    )
    ..writeln('- BUMP_MERGE_ENABLED: ${armed(data.bumpArmed)}')
    ..writeln()
    ..writeln('## Diagnosis loop')
    ..writeln()
    ..writeln(
      '- failure issues opened: ${data.diagIssuesOpened} · '
      'closed: ${data.diagIssuesClosed}',
    )
    ..writeln('- diagnosed (smoke-diagnosed): ${data.diagLabeled}')
    ..writeln()
    ..writeln('## Wave loop')
    ..writeln()
    ..writeln(
      '- PRs opened: ${data.waveOpened} · merged: ${data.waveMerged} · '
      'labeled wave-approved: ${data.waveApproved}',
    )
    ..writeln('- executor rejections: ${data.waveExecutorRejections}')
    ..writeln(
      '- backlog remaining: ${data.backlogRemaining} '
      '(${data.backlogSkipNoted} skip-noted)',
    )
    ..writeln('- WAVE_MERGE_ENABLED: ${armed(data.waveArmed)}')
    ..writeln()
    ..writeln('## Stalls')
    ..writeln();
  if (data.stalls.isEmpty) {
    buf.writeln('No stalls detected.');
  } else {
    for (final s in data.stalls) {
      buf.writeln('- ${s.kind} ${s.ref} — stalled ${s.ageDays} day(s)');
    }
  }
  return buf.toString();
}

void main() {
  final repo =
      Platform.environment['GITHUB_REPOSITORY'] ?? 'nozomi-koborinai/terradart';
  String gh(List<String> args) {
    final r = Process.runSync('gh', args);
    if (r.exitCode != 0) {
      stderr.writeln('gh ${args.join(' ')} failed: ${r.stderr}');
      exit(1);
    }
    return r.stdout as String;
  }

  final data = collectLoopHealth(
    gh: gh,
    now: DateTime.now().toUtc(),
    backlogYaml: File('tool/curation_backlog.yaml').readAsStringSync(),
    bumpArmed: Platform.environment['BUMP_MERGE_ENABLED'] == 'true',
    waveArmed: Platform.environment['WAVE_MERGE_ENABLED'] == 'true',
    repo: repo,
  );
  print(renderLoopHealth(data: data, now: DateTime.now().toUtc()));
}
