import 'dart:io';

import 'package:test/test.dart';

import 'release_ledger_check.dart';

const _debt = '''
# header
GoogleOld: awaiting-example: google_old added in hashicorp/google 8.1.0
GoogleNew: awaiting-example: google_new added in hashicorp/google 8.4.0
GoogleReasoned: provider bug — validate always fails
''';

const _backlog = '''
entries:
  - resource: google_old
    detected_at: 2026-09-01
    provider_version: 8.1.0
  - data_source: cloudflare_new
    detected_at: 2026-09-28
    provider_version: 5.26.0
''';

const _sealed = '''
google_foo:
  "a,b": "awaiting-name: sealed as aOrB"
''';

void main() {
  test('awaitingExampleLines keeps only schema-bump lines', () {
    expect(awaitingExampleLines(_debt).keys, ['GoogleOld', 'GoogleNew']);
    expect(awaitingExampleLines('# only comments\n'), isEmpty);
  });

  test('backlogEntries keys resources and data sources apart', () {
    expect(backlogEntries(_backlog), {
      'resource: google_old': '(8.1.0, detected 2026-09-01)',
      'data_source: cloudflare_new': '(5.26.0, detected 2026-09-28)',
    });
    expect(backlogEntries('entries: []\n'), isEmpty);
  });

  test('backlogEntries reads an older ledger that is not valid YAML', () {
    const broken = '''
entries:
  - resource: google_chronicle_x
    detected_at: 2026-08-01
    provider_version: 7.40.0
    note: blocked on
      (apply_smoke_skip.yaml `chronicle_quickstart: needs a real tenant`)
''';
    expect(backlogEntries(broken), {
      'resource: google_chronicle_x': '(7.40.0, detected 2026-08-01)',
    });
  });

  test('sealedNameEntries lists type and group key', () {
    expect(sealedNameEntries('{}\n'), isEmpty);
    expect(sealedNameEntries(_sealed), ['google_foo [a,b]']);
  });

  test('entries absent at the previous tag are new', () {
    final report = ReleaseLedgerReport.from(
      since: 'v0.30.0',
      sealedNameDebt: '{}\n',
      exampleDebt: _debt,
      curationBacklog: _backlog,
      previousExampleDebt:
          'GoogleOld: awaiting-example: google_old added in 8.1.0\n',
      previousCurationBacklog: '''
entries:
  - resource: google_old
    detected_at: 2026-09-01
    provider_version: 8.1.0
''',
    );
    expect(report.blocked, isFalse);
    expect(report.newAwaiting, ['GoogleNew']);
    expect(report.newBacklog, ['data_source: cloudflare_new']);
    final text = report.render();
    expect(text, contains('since v0.30.0'));
    expect(
      text,
      contains('`awaiting-example:` lines: 2 (1 new since v0.30.0)'),
    );
    expect(text, contains('entries: 2 (1 new since v0.30.0)'));
    expect(text, contains('  - GoogleNew: awaiting-example: google_new'));
    expect(text, isNot(contains('  - GoogleOld')));
  });

  test('without a previous tag every entry is new', () {
    final report = ReleaseLedgerReport.from(
      since: null,
      sealedNameDebt: '{}\n',
      exampleDebt: _debt,
      curationBacklog: _backlog,
    );
    expect(report.newAwaiting, ['GoogleOld', 'GoogleNew']);
    expect(report.newBacklog, hasLength(2));
    expect(report.render(), contains('no previous v* tag'));
  });

  test('a sealed-name entry blocks the release, backlog does not', () {
    final report = ReleaseLedgerReport.from(
      since: 'v0.30.0',
      sealedNameDebt: _sealed,
      exampleDebt: '',
      curationBacklog: 'entries: []\n',
    );
    expect(report.blocked, isTrue);
    expect(report.render(), contains('blocks the release'));
    expect(report.render(), contains('  - google_foo [a,b]'));

    final clean = ReleaseLedgerReport.from(
      since: 'v0.30.0',
      sealedNameDebt: '{}\n',
      exampleDebt: _debt,
      curationBacklog: _backlog,
    );
    expect(clean.blocked, isFalse);
  });

  test('the committed ledgers parse', () {
    final sealed = File('tool/sealed_name_debt.yaml').readAsStringSync();
    final debt = File('tool/example_debt.yaml').readAsStringSync();
    final backlog = File('tool/curation_backlog.yaml').readAsStringSync();
    expect(() => sealedNameEntries(sealed), returnsNormally);
    expect(
      awaitingExampleLines(debt).values,
      everyElement(contains('awaiting-example:')),
    );
    expect(() => backlogEntries(backlog), returnsNormally);
  });
}
