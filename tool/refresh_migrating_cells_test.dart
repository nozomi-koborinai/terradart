// ignore_for_file: invalid_use_of_visible_for_testing_member

import 'dart:io';

import 'package:path/path.dart' as p;
import 'package:terradart_migrate/terradart_migrate.dart';
import 'package:test/test.dart';

import 'bump_api_surface.dart';
import 'migrating_cells.dart';
import 'refresh_migrating_cells.dart';

void main() {
  test('parseManifestSourceSnapshot agrees with apiSurface on appwrite', () {
    final source = File(
      'packages/terradart_migrate/lib/src/manifest/appwrite.g.dart',
    ).readAsStringSync();
    final parsed = parseManifestSourceSnapshot(source);
    final fromSurface = snapshotFromApiSurface(
      apiSurface([appwriteMigrateManifest]),
    );
    expect(parsed.declaredTypes, fromSurface.declaredTypes);
    expect(parsed.slots, fromSurface.slots);
  });

  group('deriveGeneratedTypeRenames', () {
    test(
      'detects unambiguous global and scoped slot renames, ignores structural breaks',
      () {
        final before = snapshotFromApiSurface({
          'class:terradart_aws:AwsFoo': {'sig': 'barrel=foo'},
          'helper:terradart_aws:FooOldGlobal': {'sig': ''},
          'helper:terradart_aws:FooShared': {'sig': ''},
          'helper:terradart_aws:FooAmbiguous': {'sig': ''},
          'enum:terradart_aws:OldAction.drop': {'sig': 'DROP'},
          'slot:terradart_aws:AwsFoo.globalSlot': {
            'sig': 'helper||FooOldGlobal|repeated|bare',
            'required': false,
            'owner': 'class:terradart_aws:AwsFoo',
          },
          'slot:terradart_aws:AwsFoo.scopedSlot': {
            'sig': 'helper||FooShared|repeated|bare',
            'required': false,
            'owner': 'class:terradart_aws:AwsFoo',
          },
          'slot:terradart_aws:AwsFoo.action': {
            'sig': 'enumValue|OldAction|',
            'required': false,
            'owner': 'class:terradart_aws:AwsFoo',
          },
          'slot:terradart_aws:AwsFoo.structural': {
            'sig': 'sealed|||repeated|bare',
            'required': false,
            'owner': 'class:terradart_aws:AwsFoo',
          },
          'slot:terradart_aws:AwsFoo.ambigA': {
            'sig': 'helper||FooAmbiguous|bare',
            'required': false,
            'owner': 'class:terradart_aws:AwsFoo',
          },
          'slot:terradart_aws:AwsFoo.ambigB': {
            'sig': 'helper||FooAmbiguous|bare',
            'required': false,
            'owner': 'class:terradart_aws:AwsFoo',
          },
          'slot:terradart_aws:AwsFoo.removedSlot': {
            'sig': 'helper||FooOldGlobal|bare',
            'required': false,
            'owner': 'class:terradart_aws:AwsFoo',
          },
        });

        final after = snapshotFromApiSurface({
          'class:terradart_aws:AwsFoo': {'sig': 'barrel=foo'},
          'helper:terradart_aws:FooNewGlobal': {'sig': ''},
          'helper:terradart_aws:FooShared': {'sig': ''},
          'helper:terradart_aws:FooScopedNew': {'sig': ''},
          'helper:terradart_aws:FooAmbigA': {'sig': ''},
          'helper:terradart_aws:FooAmbigB': {'sig': ''},
          'helper:terradart_aws:FooStructural': {'sig': ''},
          'enum:terradart_aws:NewAction.drop': {'sig': 'DROP'},
          'slot:terradart_aws:AwsFoo.globalSlot': {
            'sig': 'helper||FooNewGlobal|repeated|bare',
            'required': false,
            'owner': 'class:terradart_aws:AwsFoo',
          },
          'slot:terradart_aws:AwsFoo.scopedSlot': {
            'sig': 'helper||FooScopedNew|repeated|bare',
            'required': false,
            'owner': 'class:terradart_aws:AwsFoo',
          },
          'slot:terradart_aws:AwsFoo.action': {
            'sig': 'enumValue|NewAction|',
            'required': false,
            'owner': 'class:terradart_aws:AwsFoo',
          },
          'slot:terradart_aws:AwsFoo.structural': {
            'sig': 'helper||FooStructural|repeated|bare',
            'required': false,
            'owner': 'class:terradart_aws:AwsFoo',
          },
          'slot:terradart_aws:AwsFoo.ambigA': {
            'sig': 'helper||FooAmbigA|bare',
            'required': false,
            'owner': 'class:terradart_aws:AwsFoo',
          },
          'slot:terradart_aws:AwsFoo.ambigB': {
            'sig': 'helper||FooAmbigB|bare',
            'required': false,
            'owner': 'class:terradart_aws:AwsFoo',
          },
        });

        final renames = deriveGeneratedTypeRenames(before, after);
        expect(renames.globalRenames, {
          'FooOldGlobal': 'FooNewGlobal',
          'OldAction': 'NewAction',
        });
        expect(renames.slotRenames, {
          (owner: 'AwsFoo', slot: 'globalSlot'): (
            oldType: 'FooOldGlobal',
            newType: 'FooNewGlobal',
            positional: false,
          ),
          (owner: 'AwsFoo', slot: 'scopedSlot'): (
            oldType: 'FooShared',
            newType: 'FooScopedNew',
            positional: false,
          ),
          (owner: 'AwsFoo', slot: 'action'): (
            oldType: 'OldAction',
            newType: 'NewAction',
            positional: false,
          ),
          (owner: 'AwsFoo', slot: 'ambigA'): (
            oldType: 'FooAmbiguous',
            newType: 'FooAmbigA',
            positional: false,
          ),
          (owner: 'AwsFoo', slot: 'ambigB'): (
            oldType: 'FooAmbiguous',
            newType: 'FooAmbigB',
            positional: false,
          ),
        });
      },
    );
  });

  group('refreshMigratingAfterCells', () {
    const doc = '''
# Migrating terradart

## Unreleased

### AWS provider 6.71.0

| Before | After |
|---|---|
| `AwsFoo(globalSlot: [FooOldGlobal(...)])` | `AwsFoo(globalSlot: [FooOldGlobal(tag: .literal('FooOldGlobal'))])` |
| `AwsFoo(scopedSlot: [FooShared(...)])` | `AwsFoo(scopedSlot: [FooShared(...)])` |
| `AwsFoo(action: OldAction.drop)` | `AwsFoo(action: OldAction.drop)` |
| `FooOldGlobal` | `FooOldGlobal` |

## 0.35.x → 0.36.0

| Before | After |
|---|---|
| `AwsFoo(globalSlot: [FooOldGlobal(...)])` | `AwsFoo(globalSlot: [FooOldGlobal(...)])` |
''';

    test(
      'refreshes only top-section After cells, leaves Before cells, string literals, and history untouched',
      () {
        const renames = GeneratedTypeRenames(
          globalRenames: {
            'FooOldGlobal': 'FooNewGlobal',
            'OldAction': 'NewAction',
          },
          slotRenames: {
            (owner: 'AwsFoo', slot: 'scopedSlot'): (
              oldType: 'FooShared',
              newType: 'FooScopedNew',
              positional: false,
            ),
          },
        );

        final res = refreshMigratingAfterCells(doc, renames);
        expect(res.changed, isTrue);
        expect(res.modifiedLines, {9, 10, 11, 12});
        expect(res.updatedText, '''
# Migrating terradart

## Unreleased

### AWS provider 6.71.0

| Before | After |
|---|---|
| `AwsFoo(globalSlot: [FooOldGlobal(...)])` | `AwsFoo(globalSlot: [FooNewGlobal(tag: .literal('FooOldGlobal'))])` |
| `AwsFoo(scopedSlot: [FooShared(...)])` | `AwsFoo(scopedSlot: [FooScopedNew(...)])` |
| `AwsFoo(action: OldAction.drop)` | `AwsFoo(action: NewAction.drop)` |
| `FooOldGlobal` | `FooNewGlobal` |

## 0.35.x → 0.36.0

| Before | After |
|---|---|
| `AwsFoo(globalSlot: [FooOldGlobal(...)])` | `AwsFoo(globalSlot: [FooOldGlobal(...)])` |
''');
      },
    );

    test('single-pass swap does not chain-corrupt A -> B -> C', () {
      const swapDoc = '''
# Migrating terradart

## Unreleased

| Before | After |
|---|---|
| `TypeA` | `TypeA` |
| `TypeB` | `TypeB` |
''';
      const renames = GeneratedTypeRenames(
        globalRenames: {'TypeA': 'TypeB', 'TypeB': 'TypeC'},
        slotRenames: {},
      );
      final res = refreshMigratingAfterCells(swapDoc, renames);
      expect(res.updatedText, '''
# Migrating terradart

## Unreleased

| Before | After |
|---|---|
| `TypeA` | `TypeB` |
| `TypeB` | `TypeC` |
''');
    });

    test(
      'refreshes positional After-cell arguments for scoped slot renames',
      () {
        final before = snapshotFromApiSurface({
          'helper:terradart_google:CloudbuildTriggerGithubEventPush': {
            'sig': '',
          },
          'helper:terradart_google:CloudbuildTriggerPush': {'sig': ''},
          'slot:terradart_google:CloudbuildTriggerGithubEventPush.push': {
            'sig': 'helper||CloudbuildTriggerPush|bare|positional',
            'required': true,
            'owner': 'helper:terradart_google:CloudbuildTriggerGithubEventPush',
          },
        });
        final after = snapshotFromApiSurface({
          'helper:terradart_google:CloudbuildTriggerGithubEventPush': {
            'sig': '',
          },
          'helper:terradart_google:CloudbuildTriggerPush': {'sig': ''},
          'helper:terradart_google:CloudbuildTriggerBitbucketPush': {'sig': ''},
          'slot:terradart_google:CloudbuildTriggerGithubEventPush.push': {
            'sig': 'helper||CloudbuildTriggerBitbucketPush|bare|positional',
            'required': true,
            'owner': 'helper:terradart_google:CloudbuildTriggerGithubEventPush',
          },
        });
        final renames = deriveGeneratedTypeRenames(before, after);
        expect(renames.globalRenames, isEmpty);

        const positionalDoc = '''
# Migrating terradart

## Unreleased

| Before | After |
|---|---|
| `CloudbuildTriggerGithubEventPush(CloudbuildTriggerPush(...))` | `CloudbuildTriggerGithubEventPush(CloudbuildTriggerPush(...))` |
''';
        final res = refreshMigratingAfterCells(positionalDoc, renames);
        expect(res.changed, isTrue);
        expect(res.updatedText, '''
# Migrating terradart

## Unreleased

| Before | After |
|---|---|
| `CloudbuildTriggerGithubEventPush(CloudbuildTriggerPush(...))` | `CloudbuildTriggerGithubEventPush(CloudbuildTriggerBitbucketPush(...))` |
''');
      },
    );
  });

  group('refreshAndVerifyMigratingMd', () {
    const initial = '''
# Migrating terradart

## Unreleased

| Before | After |
|---|---|
| `OldType` | `OldType` |
''';
    const renames = GeneratedTypeRenames(
      globalRenames: {'OldType': 'NewType'},
      slotRenames: {},
    );

    test('writes MIGRATING.md when verification passes', () async {
      final tmp = Directory.systemTemp.createTempSync('refresh_mig_ok_');
      addTearDown(() => tmp.deleteSync(recursive: true));
      final file = File(p.join(tmp.path, migratingPath))
        ..writeAsStringSync(initial);

      final outcome = await refreshAndVerifyMigratingMd(
        tmp.path,
        renames,
        verifyAfter: (_, {migrating}) async => migrating!.contains('`NewType`')
            ? (failures: const <String>[], failingLines: const <int>{})
            : (failures: const ['line 7 failed'], failingLines: const {7}),
      );
      expect(outcome.written, isTrue);
      expect(outcome.reason, isNull);
      expect(file.readAsStringSync(), contains('| `OldType` | `NewType` |'));
    });

    test(
      'leaves MIGRATING.md untouched when refreshed line fails compilation',
      () async {
        final tmp = Directory.systemTemp.createTempSync('refresh_mig_fail_');
        addTearDown(() => tmp.deleteSync(recursive: true));
        final file = File(p.join(tmp.path, migratingPath))
          ..writeAsStringSync(initial);

        final outcome = await refreshAndVerifyMigratingMd(
          tmp.path,
          renames,
          verifyAfter: (_, {migrating}) async =>
              (failures: const ['line 7 failed'], failingLines: const {7}),
        );
        expect(outcome.written, isFalse);
        expect(outcome.reason, contains('still fail compile'));
        expect(file.readAsStringSync(), initial);
      },
    );

    test(
      'leaves MIGRATING.md untouched when verification reports unmapped compile failures',
      () async {
        final tmp = Directory.systemTemp.createTempSync(
          'refresh_mig_unmapped_',
        );
        addTearDown(() => tmp.deleteSync(recursive: true));
        final file = File(p.join(tmp.path, migratingPath))
          ..writeAsStringSync(initial);

        final outcome = await refreshAndVerifyMigratingMd(
          tmp.path,
          renames,
          verifyAfter: (_, {migrating}) async => (
            failures: const ['dart pub get failed in /tmp/after: offline'],
            failingLines: const <int>{},
          ),
        );
        expect(outcome.written, isFalse);
        expect(outcome.reason, contains('unmapped'));
        expect(file.readAsStringSync(), initial);
      },
    );
  });
}
