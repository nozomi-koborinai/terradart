// loop_health_report.dart — weekly health report for the three agent loops.
//
// Collects metrics (trailing 7 days, UTC) and stall signals for the bump,
// diagnosis, and wave loops from GitHub traces plus two checked-out ledgers
// (tool/curation_backlog.yaml for depth, tool/loop_models.yaml for model
// attribution), and renders one markdown report. loop-health.yml runs this
// every Monday 03:00 UTC and appends the output to the single "Loop health"
// tracking issue.
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

/// Days an actionable backlog entry must have existed before a week with no
/// wave PR and no escalation counts as a wave-loop stall — younger entries
/// may simply be waiting for their first weekly run (e.g. a Monday bump
/// merge landing hours before the Monday-noon report).
const backlogStallDays = 7;

typedef GhRunner = String Function(List<String> args);

typedef Stall = ({String kind, String ref, int ageDays});

/// Which model a loop's schedule was running on, per tool/loop_models.yaml.
/// `midWindow` marks a flip inside the report window (metrics are mixed).
typedef LoopModel = ({String model, String from, bool midWindow});

typedef LoopHealthData = ({
  int bumpOpened,
  int bumpMerged,
  int bumpApproved,
  int bumpEscalated,
  bool bumpArmed,
  LoopModel? bumpModel,
  int diagIssuesOpened,
  int diagIssuesClosed,
  int diagLabeled,
  LoopModel? diagModel,
  int waveOpened,
  int waveMerged,
  int waveApproved,
  int waveExecutorRejections,
  bool waveArmed,
  LoopModel? waveModel,
  int waveFirstPassGreen,
  int waveRepairCommits,
  int waveEscalations,
  int waveBugbotFindings,
  int backlogRemaining,
  int backlogSkipNoted,
  List<Stall> stalls,
});

/// Resolves which model `loop` was running on: the tool/loop_models.yaml
/// entry with the latest `from` date at or before `now`. Malformed entries
/// are skipped — attribution degrades to "unknown", never crashes the report.
LoopModel? resolveLoopModel({
  required String loopModelsYaml,
  required String loop,
  required DateTime now,
  required DateTime windowStart,
}) {
  final entryRe = RegExp(r'^\s*- loop:\s*(\S+)');
  final fieldRe = RegExp(r'^\s+(model|from):\s*(.+?)\s*$');
  final dateRe = RegExp(r'^\d{4}-\d{2}-\d{2}$');

  String? curLoop;
  String? curModel;
  String? curFrom;
  ({String model, String from, DateTime fromDt})? best;

  void flush() {
    final l = curLoop;
    final m = curModel;
    final fr = curFrom;
    if (l != loop || m == null || fr == null || !dateRe.hasMatch(fr)) return;
    final fromDt = DateTime.parse('${fr}T00:00:00Z');
    if (fromDt.isAfter(now)) return;
    final b = best;
    // >= not >: in an append-only ledger a same-day re-flip means the
    // later entry is current.
    if (b == null || !fromDt.isBefore(b.fromDt)) {
      best = (model: m, from: fr, fromDt: fromDt);
    }
  }

  for (final line in loopModelsYaml.split('\n')) {
    final e = entryRe.firstMatch(line);
    if (e != null) {
      flush();
      curLoop = e.group(1);
      curModel = null;
      curFrom = null;
      continue;
    }
    final f = fieldRe.firstMatch(line);
    if (f == null) continue;
    if (f.group(1) == 'model') curModel = f.group(2);
    if (f.group(1) == 'from') curFrom = f.group(2);
  }
  flush();

  final b = best;
  if (b == null) return null;
  return (
    model: b.model,
    from: b.from,
    midWindow: b.fromDt.isAfter(windowStart),
  );
}

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
  required String loopModelsYaml,
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
  final mergedInWindow =
      wavePulls.where((p) => inWindow(p['merged_at'] as String?)).toList();
  final waveMerged = mergedInWindow.length;

  // Repair effort per merged wave: fix(repair): commits are the structured
  // trace the wave-shipper runbook mandates for repair rounds. Bugbot
  // review comments on the same PRs measure what the independent reviewer
  // caught — the complement of first-pass green (CI green != review clean).
  var waveRepairCommits = 0;
  var waveFirstPassGreen = 0;
  var waveBugbotFindings = 0;
  for (final p in mergedInWindow) {
    final commitsRaw = gh([
      'api',
      'repos/$repo/pulls/${p['number']}/commits?per_page=100',
    ]);
    final commits =
        (jsonDecode(commitsRaw) as List<dynamic>).cast<Map<String, dynamic>>();
    final repairs = commits.where((c) {
      final message =
          (c['commit'] as Map<String, dynamic>?)?['message'] as String? ?? '';
      return message.startsWith('fix(repair)');
    }).length;
    waveRepairCommits += repairs;
    if (repairs == 0) waveFirstPassGreen++;

    final reviewRaw = gh([
      'api',
      'repos/$repo/pulls/${p['number']}/comments?per_page=100',
    ]);
    final reviewComments =
        (jsonDecode(reviewRaw) as List<dynamic>).cast<Map<String, dynamic>>();
    waveBugbotFindings += reviewComments.where((c) {
      final login =
          (c['user'] as Map<String, dynamic>?)?['login'] as String? ?? '';
      return login == 'cursor[bot]';
    }).length;
  }

  // Agent escalations land as structured comments on the loop-health issue
  // ("escalation(wave): <reason>"), counted exactly — the search API would
  // collapse them to one hit per issue.
  var waveEscalations = 0;
  final lhIssues = _searchItems(gh, repo, 'is:issue is:open label:loop-health');
  if (lhIssues.isNotEmpty) {
    final commentsRaw = gh([
      'api',
      'repos/$repo/issues/${lhIssues.first['number']}/comments'
          '?since=${sinceDt.toIso8601String()}&per_page=100',
    ]);
    final comments =
        (jsonDecode(commentsRaw) as List<dynamic>).cast<Map<String, dynamic>>();
    waveEscalations = comments
        .where(
          (c) => (c['body'] as String? ?? '').startsWith('escalation(wave):'),
        )
        .length;
  }

  LoopModel? modelFor(String loop) => resolveLoopModel(
        loopModelsYaml: loopModelsYaml,
        loop: loop,
        now: now,
        windowStart: sinceDt,
      );

  final openBumpPrs = _searchItems(gh, repo, 'is:pr is:open label:schema-bump');

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
    for (final p in openBumpPrs)
      if (_ageDays(now, p['created_at'] as String) >= bumpStallDays)
        (
          kind: 'bump PR',
          ref: '#${p['number']}',
          ageDays: _ageDays(now, p['created_at'] as String),
        ),
  ];

  // A verdict label without the mandated Saw/Did/Verdict report comment is
  // a contentless maintainer handoff (the #595 failure): the runbook says
  // "comment ALWAYS, before any label", but nothing enforced it.
  for (final p in openBumpPrs) {
    final labels = ((p['labels'] as List<dynamic>?) ?? const [])
        .cast<Map<String, dynamic>>()
        .map((l) => l['name'] as String? ?? '');
    if (!labels.contains('bump-approved') &&
        !labels.contains('bump-escalated')) {
      continue;
    }
    final commentsRaw = gh([
      'api',
      'repos/$repo/issues/${p['number']}/comments?per_page=100',
    ]);
    final comments =
        (jsonDecode(commentsRaw) as List<dynamic>).cast<Map<String, dynamic>>();
    final hasReport = comments.any(
      (c) => (c['body'] as String? ?? '').contains('Schema-bump post-process'),
    );
    if (!hasReport) {
      stalls.add(
        (
          kind: 'bump report',
          ref: '#${p['number']}',
          ageDays: _ageDays(now, p['created_at'] as String),
        ),
      );
    }
  }

  // Aged actionable backlog, no wave PR opened this window, none in flight
  // (WIP-1 not the cause), and no comment-marked escalation (escalate-and-
  // exit is a correct run): a run that got confused and left no trace at
  // all would otherwise be invisible. Only entries older than
  // backlogStallDays count — younger ones may not have had a weekly run
  // yet — and an unparsable detected_at never fabricates a stall.
  final eligibleAges = <int>[];
  final backlogDateRe = RegExp(r'^\s+detected_at:\s*(\d{4}-\d{2}-\d{2})');
  var curSkipNoted = false;
  int? curAge;
  void flushBacklogEntry() {
    final age = curAge;
    if (!curSkipNoted && age != null && age >= backlogStallDays) {
      eligibleAges.add(age);
    }
    curSkipNoted = false;
    curAge = null;
  }

  var inEntry = false;
  for (final line in backlogYaml.split('\n')) {
    if (line.startsWith('  - resource:')) {
      if (inEntry) flushBacklogEntry();
      inEntry = true;
      continue;
    }
    if (!inEntry) continue;
    final d = backlogDateRe.firstMatch(line);
    if (d != null) {
      curAge = now.difference(DateTime.parse('${d.group(1)}T00:00:00Z')).inDays;
    }
    if (line.contains('note:') && line.contains('skipped by wave-shipper')) {
      curSkipNoted = true;
    }
  }
  if (inEntry) flushBacklogEntry();

  final anyOpenWave = wavePulls.any((p) => p['state'] == 'open');
  if (eligibleAges.isNotEmpty &&
      waveOpened == 0 &&
      !anyOpenWave &&
      waveEscalations == 0) {
    final n = eligibleAges.length;
    stalls.add(
      (
        kind: 'wave loop',
        ref: 'no PR despite $n actionable backlog '
            'entr${n == 1 ? 'y' : 'ies'} at least $backlogStallDays days old',
        ageDays: eligibleAges.reduce((a, b) => a > b ? a : b),
      ),
    );
  }

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
    bumpModel: modelFor('bump'),
    diagIssuesOpened:
        _searchCount(gh, repo, 'is:issue label:apply-smoke created:>=$since'),
    diagIssuesClosed:
        _searchCount(gh, repo, 'is:issue label:apply-smoke closed:>=$since'),
    diagLabeled: _searchCount(
      gh,
      repo,
      'is:issue label:smoke-diagnosed updated:>=$since',
    ),
    diagModel: modelFor('diagnosis'),
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
    waveModel: modelFor('wave'),
    waveFirstPassGreen: waveFirstPassGreen,
    waveRepairCommits: waveRepairCommits,
    waveEscalations: waveEscalations,
    waveBugbotFindings: waveBugbotFindings,
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
  String model(LoopModel? m) {
    if (m == null) return '- model: unknown (no tool/loop_models.yaml entry)';
    final flip = m.midWindow ? ' — flipped mid-window' : '';
    return '- model: ${m.model} (since ${m.from}$flip)';
  }

  final bumpVerdicts = data.bumpApproved + data.bumpEscalated;
  final bumpRate = bumpVerdicts == 0
      ? ''
      : ' (escalation rate: '
          '${(data.bumpEscalated * 100 / bumpVerdicts).round()}%)';

  final buf = StringBuffer()
    ..writeln('# Loop health — $windowStart → ${_date(now)}')
    ..writeln()
    ..writeln('**$summary**')
    ..writeln()
    ..writeln('## Bump loop')
    ..writeln()
    ..writeln(model(data.bumpModel))
    ..writeln(
      '- PRs opened: ${data.bumpOpened} · merged: ${data.bumpMerged}',
    )
    ..writeln(
      '- agent verdicts — approved: ${data.bumpApproved} · '
      'escalated: ${data.bumpEscalated}$bumpRate',
    )
    ..writeln('- BUMP_MERGE_ENABLED: ${armed(data.bumpArmed)}')
    ..writeln()
    ..writeln('## Diagnosis loop')
    ..writeln()
    ..writeln(model(data.diagModel))
    ..writeln(
      '- failure issues opened: ${data.diagIssuesOpened} · '
      'closed: ${data.diagIssuesClosed}',
    )
    ..writeln('- diagnosed (smoke-diagnosed): ${data.diagLabeled}')
    ..writeln()
    ..writeln('## Wave loop')
    ..writeln()
    ..writeln(model(data.waveModel))
    ..writeln(
      '- PRs opened: ${data.waveOpened} · merged: ${data.waveMerged} · '
      'labeled wave-approved: ${data.waveApproved}',
    )
    ..writeln(
      '- first-pass green: ${data.waveFirstPassGreen}/${data.waveMerged} · '
      'repair commits: ${data.waveRepairCommits}',
    )
    ..writeln('- executor rejections: ${data.waveExecutorRejections}')
    ..writeln('- escalations (comment-marked): ${data.waveEscalations}')
    ..writeln('- Bugbot findings on merged waves: ${data.waveBugbotFindings}')
    ..writeln(
      '- backlog remaining: ${data.backlogRemaining} '
      '(${data.backlogSkipNoted} skip-noted)'
      '${data.backlogRemaining == 0 ? ' — idle until the weekly schema bump detects new resources' : ''}',
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

  final modelsFile = File('tool/loop_models.yaml');
  final data = collectLoopHealth(
    gh: gh,
    now: DateTime.now().toUtc(),
    backlogYaml: File('tool/curation_backlog.yaml').readAsStringSync(),
    // Missing ledger must never kill the Monday report — it renders as
    // "unknown" attribution instead.
    loopModelsYaml:
        modelsFile.existsSync() ? modelsFile.readAsStringSync() : '',
    bumpArmed: Platform.environment['BUMP_MERGE_ENABLED'] == 'true',
    waveArmed: Platform.environment['WAVE_MERGE_ENABLED'] == 'true',
    repo: repo,
  );
  print(renderLoopHealth(data: data, now: DateTime.now().toUtc()));
}
