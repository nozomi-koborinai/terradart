import 'package:test/test.dart';

import 'loop_health_report.dart';

LoopHealthData _base({
  List<Stall> stalls = const [],
  int backlogRemaining = 12,
  int backlogSkipNoted = 3,
}) =>
    (
      bumpOpened: 1,
      bumpMerged: 1,
      bumpApproved: 1,
      bumpEscalated: 0,
      bumpArmed: true,
      diagIssuesOpened: 0,
      diagIssuesClosed: 1,
      diagLabeled: 1,
      waveOpened: 5,
      waveMerged: 4,
      waveApproved: 5,
      waveExecutorRejections: 1,
      waveArmed: false,
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

  test('collectLoopHealth counts backlog entries and skip notes from yaml', () {
    const yaml = '''
entries:
  - resource: google_a_b
    detected_at: 2026-07-01
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
      bumpArmed: false,
      waveArmed: false,
    );
    expect(data.backlogRemaining, 2);
    expect(data.backlogSkipNoted, 1);
    expect(data.waveOpened, 0);
    expect(data.stalls, isEmpty);
  });
}
