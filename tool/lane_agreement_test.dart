// Lists that are still edited by hand. Adding a lane to tool/providers.yaml
// and nowhere else fails this file. Surfaces that follow the yaml are
// covered by tool/lane_surface_test.dart.
import 'dart:io';

import 'package:terradart_codegen/src/codegen/providers/provider_registry.dart';
import 'package:terradart_migrate/terradart_migrate.dart';
import 'package:test/test.dart';

import 'bump_plan.dart';
import 'wrap_lanes.dart';

void main() {
  final yaml = File(providersPath).readAsStringSync();
  final lanes = parseWrapLanes(yaml);
  final bumpNames = parseBumpLanes(yaml).map((lane) => lane.lane.name).toSet();

  String packageOf(WrapLane lane) => lane.outputPackage.split('/').last;

  void expectMentions(String path, String package) {
    final text = File(path).readAsStringSync();
    expect(
      RegExp('\\b${RegExp.escape(package)}\\b').hasMatch(text),
      isTrue,
      reason: '$path does not mention $package',
    );
  }

  test('every lane has a type prefix and a coverage title', () {
    for (final lane in lanes) {
      expect(lane.typePrefix, isNotNull, reason: lane.name);
      expect(lane.siteTitle, isNotNull, reason: lane.name);
    }
  });

  test('typePrefix matches ProviderRules', () {
    for (final lane in lanes) {
      final rules = providerRulesById[lane.source];
      expect(rules, isNotNull, reason: '${lane.name} ${lane.source}');
      expect(rules!.terraformTypePrefix, lane.typePrefix, reason: lane.name);
    }
  });

  test('every lane manifest is registered', () {
    final registered = allMigrateManifests.map((m) => m.package).toSet();
    for (final lane in lanes) {
      expect(registered, contains(packageOf(lane)), reason: lane.name);
    }
  });

  test('publish.yml names every lane package', () {
    for (final lane in lanes) {
      expectMentions('.github/workflows/publish.yml', packageOf(lane));
    }
  });

  test('the release bump and the migrator pubspec name every lane package', () {
    for (final lane in lanes) {
      expectMentions('tool/bump_version.sh', packageOf(lane));
      expectMentions(
        'packages/terradart_migrate/pubspec.yaml',
        packageOf(lane),
      );
    }
  });

  test('labeler.yml covers each lane path from the yaml', () {
    final labeler = File('.github/labeler.yml').readAsStringSync();
    final globs = [
      for (final match in RegExp(r"'([^']+)'").allMatches(labeler))
        match.group(1)!,
    ];
    bool covered(String path) => globs.any((glob) {
      if (!glob.endsWith('/**')) return false;
      final prefix = glob.substring(0, glob.length - 3);
      return path == prefix || path.startsWith('$prefix/');
    });
    for (final lane in lanes) {
      expect(covered(lane.outputPackage), isTrue, reason: lane.outputPackage);
      expect(covered(lane.overridesRoot), isTrue, reason: lane.overridesRoot);
      expect(covered(lane.schemaDir), isTrue, reason: lane.schemaDir);
    }
  });

  test('the migrator sensitive index imports every lane catalog', () {
    final context = File(
      'packages/terradart_migrate/lib/src/emit/context.dart',
    ).readAsStringSync();
    for (final lane in lanes) {
      expect(
        context,
        contains("package:${packageOf(lane)}/catalog.dart"),
        reason: lane.name,
      );
    }
  });

  test('the migrator recipe key is the registry source name', () {
    final emitter = File(
      'packages/terradart_migrate/lib/src/emit/stack_emitter.dart',
    ).readAsStringSync();
    for (final lane in lanes) {
      final block = lane.source.split('/').last;
      expect(emitter, contains("'$block':"), reason: lane.name);
    }
  });

  test('schema-bump workflow_dispatch options are the bump lanes', () {
    final workflow = File(
      '.github/workflows/schema-bump.yml',
    ).readAsStringSync();
    final listed = RegExp(r'options:\s*\[([^\]]*)\]')
        .firstMatch(workflow)!
        .group(1)!
        .split(',')
        .map((part) => part.trim())
        .toSet();
    expect(listed, {...bumpNames, 'all'});
  });

  test('the CI package matrix is the workspace list', () {
    final ci = File('.github/workflows/ci.yml').readAsStringSync();
    expect(ci, contains('fromJson(needs.workspace_packages.outputs.packages)'));
    expect(ci, isNot(contains('package: [terradart_')));
  });

  test('docs and the site name every lane a reader can import', () {
    const docs = [
      'README.md',
      'CONTRIBUTING.md',
      'AGENTS.md',
      'skills/terradart/SKILL.md',
    ];
    final astro = File('website/astro.config.mjs').readAsStringSync();
    final landing = File(
      'website/src/components/landing/providers.ts',
    ).readAsStringSync();
    for (final lane in lanes) {
      final package = packageOf(lane);
      for (final path in docs) {
        expectMentions(path, package);
      }
      expect(astro, contains('docs/coverage/${lane.name}'), reason: lane.name);
      // google-beta is a section of providers/google.md, not its own page.
      if (lane.name == 'google-beta') continue;
      final guide = File(
        'website/src/content/docs/docs/providers/${lane.name}.md',
      );
      expect(guide.existsSync(), isTrue, reason: guide.path);
      expect(astro, contains('docs/providers/${lane.name}'), reason: lane.name);
      expect(landing, contains(package), reason: lane.name);
    }
  });
}
