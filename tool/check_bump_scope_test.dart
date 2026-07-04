import 'dart:io';

import 'package:test/test.dart';

import 'check_bump_scope.dart';

void main() {
  group('checkBumpScope', () {
    const rules = [
      'packages/terradart_google/lib/',
      'tool/curation_backlog.yaml',
    ];

    test('prefix rule allows nested paths', () {
      final violations = checkBumpScope(
        changed: const [
          'packages/terradart_google/lib/src/compute/google_compute_router.dart',
          'packages/terradart_google/lib/compute.dart',
        ],
        rules: rules,
      );
      expect(violations, isEmpty);
    });

    test('exact rule allows only that file', () {
      expect(
        checkBumpScope(
          changed: const ['tool/curation_backlog.yaml'],
          rules: rules,
        ),
        isEmpty,
      );
      expect(
        checkBumpScope(
          changed: const ['tool/curation_backlog.yaml.bak'],
          rules: rules,
        ),
        equals(['tool/curation_backlog.yaml.bak']),
      );
    });

    test('violations are reported, allowed files are not', () {
      final violations = checkBumpScope(
        changed: const [
          'packages/terradart_google/lib/pubsub.dart',
          'MIGRATING.md',
          '.github/workflows/ci.yml',
        ],
        rules: rules,
      );
      expect(violations, equals(['MIGRATING.md', '.github/workflows/ci.yml']));
    });

    test('prefix rule does not match a sibling with the same stem', () {
      final violations = checkBumpScope(
        changed: const ['packages/terradart_google/lib2/evil.dart'],
        rules: rules,
      );
      expect(violations, equals(['packages/terradart_google/lib2/evil.dart']));
    });

    test('committed ledger parses and allows a canonical bump file set', () {
      final rules = loadBumpRules('tool/bump_allowed_paths.yaml');
      expect(rules, isNotEmpty);
      final violations = checkBumpScope(
        changed: const [
          'packages/terradart_codegen/test/fixtures/wrap/source/schema.json',
          'packages/terradart_codegen/test/fixtures/wrap/source/provider_version.txt',
          'packages/terradart_codegen/test/fixtures/wrap/source/mm/google_pubsub_topic.yaml',
          'packages/terradart_google/lib/src/_provider_meta.dart',
          'packages/terradart_google/lib/src/compute/google_compute_route.dart',
          'packages/terradart_google/lib/compute.dart',
          'packages/terradart_codegen/lib/src/codegen/wrapper_overrides/yaml/google_compute_route.yaml',
          'packages/terradart_codegen/lib/src/codegen/barrels/barrels.yaml',
          'packages/terradart_codegen/test/golden/google_pubsub_topic.factory.expected.dart.golden',
          'packages/terradart_codegen/test/fixtures/wrap/expected_output/pubsub/google_pubsub_topic.dart',
          'packages/terradart_codegen/test/cli/wrap_command_test.dart',
          'packages/terradart_google/test/catalog/catalog_count_test.dart',
          'tool/doc_expectations.dart',
          'tool/curation_backlog.yaml',
          '.schema-bump/drift_report.md',
          'examples/compute_route_quickstart/lib/main.dart',
          'website/src/content/docs/docs/coverage.md',
        ],
        rules: rules,
      );
      expect(violations, isEmpty);
    });

    test('committed ledger rejects the deliberate exclusions', () {
      final rules = loadBumpRules('tool/bump_allowed_paths.yaml');
      final violations = checkBumpScope(
        changed: const [
          'MIGRATING.md',
          'CHANGELOG.md',
          '.github/workflows/schema-bump.yml',
          'tool/check_bump_scope.dart',
          '.cursor/agents/schema-bump-postprocess.md',
          '.claude/settings.json',
        ],
        rules: rules,
      );
      expect(violations, hasLength(6));
    });

    test('committed ledger rejects Tier-3 evidence from real PR #244', () {
      // #244 shipped a sealed-class design (compute_route next_hop) — its
      // hand-written test follow-up and exactly-one debt entry are exactly
      // the signals that must keep a bump PR OUT of the auto-merge path.
      final rules = loadBumpRules('tool/bump_allowed_paths.yaml');
      final violations = checkBumpScope(
        changed: const [
          'packages/terradart_google/test/synth/encode_round_trip_test.dart',
          'tool/exactly_one_lint_debt.yaml',
        ],
        rules: rules,
      );
      expect(violations, hasLength(2));
    });
  });

  test('loadBumpRules throws on a missing ledger', () {
    expect(
      () => loadBumpRules('tool/does_not_exist.yaml'),
      throwsA(isA<FileSystemException>()),
    );
  });

  test('committed wave ledger allows the Wave surface and rejects exclusions',
      () {
    final rules = loadBumpRules('tool/wave_allowed_paths.yaml');
    expect(rules, isNotEmpty);
    expect(
      checkBumpScope(
        changed: const [
          'packages/terradart_codegen/lib/src/codegen/wrapper_overrides/yaml/google_new_thing.yaml',
          'packages/terradart_codegen/test/fixtures/wrap/source/mm/google_new_thing.yaml',
          'tool/mm_yaml_sources.yaml',
          'packages/terradart_google/lib/src/new_thing/google_new_thing.dart',
          'packages/terradart_google/lib/new_thing.dart',
          'examples/new_thing_quickstart/lib/main.dart',
          'README.md',
          'CONTRIBUTING.md',
          'packages/terradart_google/README.md',
          'packages/terradart_agent/README.md',
          'website/src/content/docs/docs/why-terradart.mdx',
          'website/src/content/docs/docs/coverage.md',
          'website/src/content/docs/docs/status.md',
          'website/src/content/docs/docs/agent/index.md',
          'website/src/content/docs/docs/agent/tools-reference.md',
          'packages/terradart_codegen/test/codegen/wrapper_overrides/yaml_loader_test.dart',
          'tool/curation_backlog.yaml',
          'tool/apply_cost_denylist.yaml',
          'tool/doc_expectations.dart',
        ],
        rules: rules,
      ),
      isEmpty,
    );
    expect(
      checkBumpScope(
        changed: const [
          'MIGRATING.md',
          'CHANGELOG.md',
          'packages/terradart_core/pubspec.yaml',
          '.github/workflows/ci.yml',
          'tool/check_bump_scope.dart',
          'tool/exactly_one_lint_debt.yaml',
          '.cursor/agents/wave-shipper.md',
        ],
        rules: rules,
      ),
      hasLength(7),
    );
  });
}
