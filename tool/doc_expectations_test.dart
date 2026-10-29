import 'dart:io';

import 'package:test/test.dart';

import 'bump_plan.dart';
import 'doc_expectations.dart';
import 'wrap_lanes.dart';

void main() {
  test('fixGoogleCounts sets every count phrase to the catalog', () {
    const stale =
        '**1 curated resource factories + 2 data sources** '
        '(3 catalog entries), (GA catalog, 3 entries), 7 resource factories';
    expect(
      fixGoogleCounts(stale),
      '**$curatedFactoryCount curated resource factories + '
      '$dataSourceCatalogPhrase** ($catalogEntryCount catalog entries), '
      '(GA catalog, $catalogEntryCount entries), 7 resource factories',
    );
  });

  test('the committed count pages are already fixed', () {
    for (final path in googleCountPages) {
      final text = File(path).readAsStringSync();
      expect(fixGoogleCounts(text), text, reason: path);
    }
  });

  test('the bump table has one row per bump lane, Sunday first', () {
    const page = '''
intro
{/* bump-schedule:start */}
| stale |
{/* bump-schedule:end */}
outro
''';
    expect(
      fixBumpSchedule(page, [
        _bump(
          name: 'b',
          siteTitle: 'Bee',
          weekday: Weekday.tuesday,
          mode: 'pr-only',
        ),
        _bump(
          name: 'a',
          siteTitle: 'Ay',
          weekday: Weekday.sunday,
          mode: 'auto',
          rideAlong: _wrap('a-beta'),
        ),
      ]),
      '''
intro
{/* bump-schedule:start */}
| Provider | Day (UTC) | Routine bump |
|---|---|---|
| Ay (with a-beta) | Sunday | auto-merges when CI is green |
| Bee | Tuesday | waits for review |
{/* bump-schedule:end */}
outro
''',
    );
  });

  test('a page with no bump-schedule markers fails', () {
    expect(
      () => fixBumpSchedule('intro\noutro\n', const []),
      throwsFormatException,
    );
    expect(
      () => fixBumpSchedule(
        '{/* bump-schedule:end */}\n{/* bump-schedule:start */}\n',
        const [],
      ),
      throwsFormatException,
    );
  });

  test('a lane with no siteTitle fails', () {
    const page = '{/* bump-schedule:start */}\n{/* bump-schedule:end */}\n';
    expect(
      () => fixBumpSchedule(page, [
        _bump(
          name: 'a',
          siteTitle: null,
          weekday: Weekday.sunday,
          mode: 'auto',
        ),
      ]),
      throwsFormatException,
    );
  });

  test('the committed bump schedule is already fixed', () {
    final text = File(bumpSchedulePage).readAsStringSync();
    expect(fixBumpSchedule(text, bumpLanes), text);
  });
}

WrapLane _wrap(String name, {String? siteTitle}) => WrapLane(
  name: name,
  source: 'example/$name',
  schemaDir: 's',
  outputPackage: 'o',
  overridesRoot: 'r',
  barrelsManifest: 'b',
  resourceProvider: null,
  migrateManifest: 'm',
  siteTitle: siteTitle,
);

BumpLane _bump({
  required String name,
  required String? siteTitle,
  required Weekday weekday,
  required String mode,
  WrapLane? rideAlong,
}) => BumpLane(
  lane: _wrap(name, siteTitle: siteTitle),
  mode: mode,
  cron: '0 0 * * ${weekday.index}',
  refresh: 'dump',
  scaffold: 'lane',
  dataSources: false,
  rideAlong: rideAlong,
  exampleGenerator: null,
  exampleCovers: const {},
  mm: false,
);
