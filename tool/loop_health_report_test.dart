import 'dart:convert';

import 'package:test/test.dart';

import 'loop_health_report.dart';

LoopHealthData _base({
  List<Stall> stalls = const [],
  int backlogRemaining = 12,
  int backlogSkipNoted = 3,
  int bumpApproved = 1,
  int bumpEscalated = 0,
  LoopModel? bumpModel,
  LoopModel? waveModel,
  LoopModel? diagModel,
  int waveFirstPassGreen = 0,
  int waveRepairCommits = 0,
  int waveEscalations = 0,
  int waveBugbotFindings = 0,
}) =>
    (
      bumpOpened: 1,
      bumpMerged: 1,
      bumpApproved: bumpApproved,
      bumpEscalated: bumpEscalated,
      bumpArmed: true,
      bumpModel: bumpModel,
      diagIssuesOpened: 0,
      diagIssuesClosed: 1,
      diagLabeled: 1,
      diagModel: diagModel,
      waveOpened: 5,
      waveMerged: 4,
      waveApproved: 5,
      waveExecutorRejections: 1,
      waveArmed: false,
      waveModel: waveModel,
      waveFirstPassGreen: waveFirstPassGreen,
      waveRepairCommits: waveRepairCommits,
      waveEscalations: waveEscalations,
      waveBugbotFindings: waveBugbotFindings,
      backlogRemaining: backlogRemaining,
      backlogSkipNoted: backlogSkipNoted,
      stalls: stalls,
    );

void main() {
  final now = DateTime.utc(2026, 7, 6, 3);

  test('healthy week renders the all-clear summary and all three loops', () {
    final md = renderLoopHealth(data: _base(), now: now);
    expect(md, contains('✅ all loops healthy'));
    expect(md, contains('## Bump loop'));
    expect(md, contains('## Diagnosis loop'));
    expect(md, contains('## Wave loop'));
    expect(md, contains('merged: 4'));
    expect(md, contains('backlog remaining: 12 (3 skip-noted)'));
    expect(md, contains('No stalls detected.'));
    expect(
      md,
      contains('2026-06-29 → 2026-07-06'),
      reason: 'window is stated',
    );
  });

  test('stalls flip the summary and are listed with their ages', () {
    final md = renderLoopHealth(
      data: _base(
        stalls: const [
          (kind: 'wave PR', ref: '#301', ageDays: 4),
          (kind: 'diagnosed issue', ref: '#280', ageDays: 9),
        ],
      ),
      now: now,
    );
    expect(md, contains('⚠️ 2 stall(s)'));
    expect(md, contains('#301'));
    expect(md, contains('4 day(s)'));
    expect(md, isNot(contains('No stalls detected.')));
  });

  test('disarmed executors are surfaced per loop', () {
    final md = renderLoopHealth(data: _base(), now: now);
    expect(md, contains('WAVE_MERGE_ENABLED: disarmed'));
    expect(md, contains('BUMP_MERGE_ENABLED: armed'));
  });

  test('empty backlog renders as idle', () {
    final md = renderLoopHealth(
      data: _base(backlogRemaining: 0, backlogSkipNoted: 0),
      now: now,
    );
    expect(
      md,
      contains('- backlog remaining: 0 (0 skip-noted) — idle until the '
          'weekly schema bump detects new resources'),
    );
  });

  test(
      'collectLoopHealth counts backlog entries and skip notes from yaml '
      'and flags the idle wave loop behind an aged actionable backlog', () {
    const yaml = '''
entries:
  - resource: google_a_b
    detected_at: 2026-06-20
    provider_version: 7.39.0
  - resource: google_c_d
    detected_at: 2026-07-01
    provider_version: 7.39.0
    note: skipped by wave-shipper — org-scoped
''';
    final data = collectLoopHealth(
      // The pulls endpoint returns a list; search endpoints return an object.
      gh: (args) =>
          args[1].startsWith('repos/') ? '[]' : '{"total_count":0,"items":[]}',
      now: DateTime.utc(2026, 7, 6),
      backlogYaml: yaml,
      loopModelsYaml: '',
      bumpArmed: false,
      waveArmed: false,
    );
    expect(data.backlogRemaining, 2);
    expect(data.backlogSkipNoted, 1);
    expect(data.waveOpened, 0);
    // One actionable entry 16 days old, no wave PR opened this window, none
    // in flight, no escalation: the loop is silently idle — that is a stall,
    // aged by the oldest eligible entry, not a hard-coded week.
    expect(data.stalls, hasLength(1));
    expect(data.stalls.single.kind, 'wave loop');
    expect(data.stalls.single.ageDays, 16);
  });

  test(
      'backlog younger than the stall grace period does not flag the wave '
      'loop (its first Tuesday run has not come yet)', () {
    const yaml = '''
entries:
  - resource: google_a_b
    detected_at: 2026-07-03
    provider_version: 7.39.0
''';
    final data = collectLoopHealth(
      gh: (args) =>
          args[1].startsWith('repos/') ? '[]' : '{"total_count":0,"items":[]}',
      now: DateTime.utc(2026, 7, 6),
      backlogYaml: yaml,
      loopModelsYaml: '',
      bumpArmed: false,
      waveArmed: false,
    );
    expect(data.stalls, isEmpty);
  });

  test(
      'a comment-marked escalation suppresses the idle-wave stall '
      '(escalate-and-exit is a correct run, not a silent one)', () {
    const yaml = '''
entries:
  - resource: google_a_b
    detected_at: 2026-06-20
    provider_version: 7.39.0
''';
    String gh(List<String> args) {
      final path = args[1];
      if (path.contains('loop-health')) {
        return jsonEncode({
          'total_count': 1,
          'items': [
            {'number': 42, 'created_at': '2026-01-01T00:00:00Z'},
          ],
        });
      }
      if (path.contains('/issues/42/comments')) {
        return jsonEncode([
          {'body': 'escalation(wave): backlog entries all org-scoped'},
        ]);
      }
      if (path.startsWith('repos/') && path.contains('/pulls?')) return '[]';
      return '{"total_count":0,"items":[]}';
    }

    final data = collectLoopHealth(
      gh: gh,
      now: DateTime.utc(2026, 7, 6),
      backlogYaml: yaml,
      loopModelsYaml: '',
      bumpArmed: false,
      waveArmed: false,
    );
    expect(data.waveEscalations, 1);
    expect(data.stalls, isEmpty);
  });

  group('resolveLoopModel', () {
    const yaml = '''
entries:
  - loop: wave
    model: composer-1
    from: 2026-06-01
  - loop: wave
    model: grok-4
    from: 2026-07-01
  - loop: bump
    model: claude-sonnet
    from: 2026-08-01
''';

    test('picks the latest entry at or before now and flags mid-window flips',
        () {
      final m = resolveLoopModel(
        loopModelsYaml: yaml,
        loop: 'wave',
        now: now,
        windowStart: now.subtract(const Duration(days: 7)),
      );
      expect(m, isNotNull);
      expect(m!.model, 'grok-4');
      expect(m.from, '2026-07-01');
      expect(
        m.midWindow,
        isTrue,
        reason: '2026-07-01 falls inside the 06-29 → 07-06 window',
      );
    });

    test('ignores entries dated after now and unknown loops resolve to null',
        () {
      // bump's only entry is 2026-08-01 — in the future relative to `now`.
      expect(
        resolveLoopModel(
          loopModelsYaml: yaml,
          loop: 'bump',
          now: now,
          windowStart: now.subtract(const Duration(days: 7)),
        ),
        isNull,
      );
      expect(
        resolveLoopModel(
          loopModelsYaml: yaml,
          loop: 'diagnosis',
          now: now,
          windowStart: now.subtract(const Duration(days: 7)),
        ),
        isNull,
      );
    });

    test('an entry older than the window is attributed without the flip flag',
        () {
      final m = resolveLoopModel(
        loopModelsYaml: yaml,
        loop: 'wave',
        now: DateTime.utc(2026, 6, 20),
        windowStart: DateTime.utc(2026, 6, 13),
      );
      expect(m!.model, 'composer-1');
      expect(m.midWindow, isFalse);
    });

    test('same-day double flip: the last appended entry wins', () {
      const sameDay = '''
entries:
  - loop: wave
    model: grok-4
    from: 2026-07-01
  - loop: wave
    model: composer-1
    from: 2026-07-01
''';
      final m = resolveLoopModel(
        loopModelsYaml: sameDay,
        loop: 'wave',
        now: now,
        windowStart: now.subtract(const Duration(days: 7)),
      );
      expect(
        m!.model,
        'composer-1',
        reason: 'append-only ledger: the later same-day entry is current',
      );
    });
  });

  test('render shows each loop model line and marks unattributed loops', () {
    final md = renderLoopHealth(
      data: _base(
        waveModel: (model: 'grok-4', from: '2026-07-01', midWindow: false),
      ),
      now: now,
    );
    expect(md, contains('- model: grok-4 (since 2026-07-01)'));
    expect(md, contains('- model: unknown (no tool/loop_models.yaml entry)'));
  });

  test('render marks a mid-window model flip', () {
    final md = renderLoopHealth(
      data: _base(
        waveModel: (model: 'grok-4', from: '2026-07-01', midWindow: true),
      ),
      now: now,
    );
    expect(
      md,
      contains('- model: grok-4 (since 2026-07-01 — flipped mid-window)'),
    );
  });

  test('render shows wave first-pass green and repair commits', () {
    final md = renderLoopHealth(
      data: _base(waveFirstPassGreen: 3, waveRepairCommits: 2),
      now: now,
    );
    expect(md, contains('- first-pass green: 3/4 · repair commits: 2'));
  });

  test('render shows comment-marked wave escalations', () {
    final md = renderLoopHealth(data: _base(waveEscalations: 1), now: now);
    expect(md, contains('- escalations (comment-marked): 1'));
  });

  test('render shows Bugbot findings on merged waves', () {
    final md = renderLoopHealth(data: _base(waveBugbotFindings: 2), now: now);
    expect(md, contains('- Bugbot findings on merged waves: 2'));
  });

  test('collect counts cursor[bot] review comments on merged waves only', () {
    String gh(List<String> args) {
      final path = args[1];
      if (path.contains('/pulls/10/comments')) {
        return jsonEncode([
          {
            'user': {'login': 'cursor[bot]'},
            'body': '### Some finding',
          },
          {
            'user': {'login': 'cursor[bot]'},
            'body': '### Another finding',
          },
          {
            'user': {'login': 'nozomi-koborinai'},
            'body': 'human reply',
          },
        ]);
      }
      if (path.contains('/pulls/10/commits')) {
        return jsonEncode([
          {
            'commit': {'message': 'feat(google): curate foo'},
          },
        ]);
      }
      if (path.startsWith('repos/') && path.contains('/pulls?')) {
        return jsonEncode([
          {
            'number': 10,
            'state': 'closed',
            'head': {'ref': 'wave/foo'},
            'created_at': '2026-07-01T00:00:00Z',
            'merged_at': '2026-07-02T00:00:00Z',
            'updated_at': '2026-07-02T00:00:00Z',
          },
        ]);
      }
      return '{"total_count":0,"items":[]}';
    }

    final data = collectLoopHealth(
      gh: gh,
      now: DateTime.utc(2026, 7, 6),
      backlogYaml: '',
      loopModelsYaml: '',
      bumpArmed: false,
      waveArmed: false,
    );
    expect(
      data.waveBugbotFindings,
      2,
      reason: 'two cursor[bot] comments; the human reply is not a finding',
    );
  });

  test('render derives the bump escalation rate from verdict counts', () {
    final md = renderLoopHealth(
      data: _base(bumpApproved: 3, bumpEscalated: 1),
      now: now,
    );
    expect(md, contains('escalated: 1 (escalation rate: 25%)'));
  });

  test('collect counts repair commits and first-pass green on merged waves',
      () {
    String gh(List<String> args) {
      final path = args[1];
      if (path.contains('/comments')) return '[]';
      if (path.contains('/pulls/10/commits')) {
        return jsonEncode([
          {
            'commit': {'message': 'feat(google): curate foo'},
          },
          {
            'commit': {'message': 'fix(repair): quota — quota exceeded'},
          },
          {
            'commit': {'message': 'fix(repair): api enable — SERVICE_DISABLED'},
          },
        ]);
      }
      if (path.contains('/pulls/11/commits')) {
        return jsonEncode([
          {
            'commit': {'message': 'feat(google): curate bar'},
          },
        ]);
      }
      if (path.startsWith('repos/') && path.contains('/pulls?')) {
        return jsonEncode([
          {
            'number': 10,
            'state': 'closed',
            'head': {'ref': 'wave/foo'},
            'created_at': '2026-07-01T00:00:00Z',
            'merged_at': '2026-07-02T00:00:00Z',
            'updated_at': '2026-07-02T00:00:00Z',
          },
          {
            'number': 11,
            'state': 'closed',
            'head': {'ref': 'wave/bar'},
            'created_at': '2026-07-03T00:00:00Z',
            'merged_at': '2026-07-04T00:00:00Z',
            'updated_at': '2026-07-04T00:00:00Z',
          },
        ]);
      }
      return '{"total_count":0,"items":[]}';
    }

    final data = collectLoopHealth(
      gh: gh,
      now: DateTime.utc(2026, 7, 6),
      backlogYaml: '',
      loopModelsYaml: '',
      bumpArmed: false,
      waveArmed: false,
    );
    expect(data.waveMerged, 2);
    expect(data.waveRepairCommits, 2);
    expect(
      data.waveFirstPassGreen,
      1,
      reason: 'only #11 merged without a fix(repair) commit',
    );
  });

  test('collect counts escalation(wave) comments on the loop-health issue', () {
    String gh(List<String> args) {
      final path = args[1];
      if (path.contains('loop-health')) {
        return jsonEncode({
          'total_count': 1,
          'items': [
            {'number': 42, 'created_at': '2026-01-01T00:00:00Z'},
          ],
        });
      }
      if (path.contains('/issues/42/comments')) {
        return jsonEncode([
          {'body': 'escalation(wave): backlog entries all org-scoped'},
          {'body': 'escalation(wave): uncertain cost classification'},
          {'body': '# Loop health — 2026-06-29 → 2026-07-06'},
        ]);
      }
      if (path.startsWith('repos/') && path.contains('/pulls?')) return '[]';
      return '{"total_count":0,"items":[]}';
    }

    final data = collectLoopHealth(
      gh: gh,
      now: DateTime.utc(2026, 7, 6),
      backlogYaml: '',
      loopModelsYaml: '',
      bumpArmed: false,
      waveArmed: false,
    );
    expect(data.waveEscalations, 2);
  });

  group('bump report-comment stall', () {
    LoopHealthData collectWith(List<Map<String, dynamic>> comments) {
      String gh(List<String> args) {
        final path = args[1];
        if (path.contains('label%3Aschema-bump') &&
            path.contains('is%3Aopen')) {
          return jsonEncode({
            'total_count': 1,
            'items': [
              {
                'number': 595,
                'created_at': '2026-08-16T22:07:48Z',
                'labels': [
                  {'name': 'schema-bump'},
                  {'name': 'bump-escalated'},
                ],
              },
            ],
          });
        }
        if (path.contains('/issues/595/comments')) return jsonEncode(comments);
        if (path.startsWith('repos/') && path.contains('/pulls?')) return '[]';
        return '{"total_count":0,"items":[]}';
      }

      return collectLoopHealth(
        gh: gh,
        now: DateTime.utc(2026, 8, 18),
        backlogYaml: '',
        loopModelsYaml: '',
        bumpArmed: false,
        waveArmed: false,
      );
    }

    test('a verdict-labeled open bump PR without a report comment stalls', () {
      final data = collectWith([
        {'body': 'some unrelated bot comment'},
      ]);
      expect(
        data.stalls.where((s) => s.kind == 'bump report'),
        hasLength(1),
        reason: 'label landed but the mandated Saw/Did/Verdict report did not',
      );
      expect(
        data.stalls.singleWhere((s) => s.kind == 'bump report').ref,
        '#595',
      );
    });

    test('the report comment suppresses the stall', () {
      final data = collectWith([
        {'body': '## Schema-bump post-process\n- Saw: ...\n- Verdict: Tier 3'},
      ]);
      expect(data.stalls.where((s) => s.kind == 'bump report'), isEmpty);
    });
  });

  test('an open wave PR suppresses the idle-wave stall (WIP-1 is at work)', () {
    // Old enough to be stall-eligible — only the in-flight PR suppresses.
    const yaml = '''
entries:
  - resource: google_a_b
    detected_at: 2026-06-20
    provider_version: 7.39.0
''';
    String gh(List<String> args) {
      final path = args[1];
      if (path.startsWith('repos/') && path.contains('/pulls?')) {
        return jsonEncode([
          {
            'number': 12,
            'state': 'open',
            'head': {'ref': 'wave/baz'},
            // Created before the window (waveOpened stays 0), still open,
            // and updated recently enough to dodge the quiet-PR stall.
            'created_at': '2026-06-20T00:00:00Z',
            'merged_at': null,
            'updated_at': '2026-07-05T00:00:00Z',
          },
        ]);
      }
      return '{"total_count":0,"items":[]}';
    }

    final data = collectLoopHealth(
      gh: gh,
      now: DateTime.utc(2026, 7, 6),
      backlogYaml: yaml,
      loopModelsYaml: '',
      bumpArmed: false,
      waveArmed: false,
    );
    expect(data.waveOpened, 0);
    expect(data.stalls, isEmpty);
  });
}
