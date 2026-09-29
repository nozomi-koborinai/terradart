// The tool/ test convention keeps this file outside test/, so the analyzer
// does not recognize it as a test for @visibleForTesting purposes.
// ignore_for_file: invalid_use_of_visible_for_testing_member

import 'dart:io';

import 'package:test/test.dart';

import 'bump_lane_gates.dart';
import 'wrap_lanes.dart';

void main() {
  final lanes = {
    for (final lane in parseWrapLanes(File(providersPath).readAsStringSync()))
      lane.name: lane,
  };

  test('google runs the universal invariants in terradart_codegen', () {
    expect(laneGates(lanes['google']!).map((g) => '$g'), [
      'universal QA gates: (cd packages/terradart_codegen && dart test '
          'test/codegen/universal_invariants_test.dart -r expanded)',
    ]);
  });

  test('aws runs its package tests and its lint-override', () {
    expect(laneGates(lanes['aws']!).map((g) => '$g'), [
      'terradart_aws tests: (cd packages/terradart_aws && dart test -r '
          'expanded)',
      'terradart lint-override: (cd . && dart tool/wrap_lanes.dart --lane '
          'aws --gate lint)',
    ]);
  });

  test('aws analyzes the examples that depend on terradart_aws', () {
    final examples = dependentExamples('.', 'terradart_aws');
    expect(examples, contains('examples/aws_leftover_quickstart'));
    expect(examples, isNot(contains('examples/cloudflare_dns_quickstart')));
    expect(laneGates(lanes['aws']!, examples: examples).last.args, [
      'analyze',
      ...examples,
    ]);
  });

  test('every gate directory exists', () {
    for (final lane in lanes.values) {
      for (final gate in laneGates(lane)) {
        expect(
          Directory(gate.workingDirectory).existsSync(),
          isTrue,
          reason: '$gate',
        );
      }
    }
  });
}
