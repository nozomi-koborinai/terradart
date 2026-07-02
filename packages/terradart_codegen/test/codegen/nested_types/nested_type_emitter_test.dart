import 'dart:convert';
import 'dart:io';

import 'package:dart_style/dart_style.dart';
import 'package:terradart_codegen/src/codegen/naming.dart';
import 'package:terradart_codegen/src/codegen/nested_types/nested_type_collector.dart';
import 'package:terradart_codegen/src/codegen/nested_types/nested_type_emitter.dart';
import 'package:test/test.dart';

/// The exact `dart_style` configuration `terradart wrap` formats generated
/// files with (`wrap_command.dart`) — comparisons below run BOTH the
/// emitter's raw output and the hand-written expected source through this
/// same formatter, so the test pins the format-stable *contract* rather
/// than the emitter's own (irrelevant) internal whitespace choices.
final _formatter =
    DartFormatter(languageVersion: DartFormatter.latestLanguageVersion);

String _fmt(String source) => _formatter.format(source);

const _schemaPath = 'test/fixtures/wrap/source/schema.json';

/// Loads `resource_schemas[terraformType].block` straight from the pinned
/// provider-schema fixture, mirroring `nested_type_collector_test.dart`.
Map<String, dynamic> _blockOf(String terraformType) {
  final decoded =
      jsonDecode(File(_schemaPath).readAsStringSync()) as Map<String, dynamic>;
  final providerSchemas =
      (decoded['provider_schemas'] as Map).cast<String, dynamic>();
  final providerBody =
      (providerSchemas.values.single as Map).cast<String, dynamic>();
  final resourceSchemas =
      (providerBody['resource_schemas'] as Map).cast<String, dynamic>();
  final resource =
      (resourceSchemas[terraformType] as Map).cast<String, dynamic>();
  return (resource['block'] as Map).cast<String, dynamic>();
}

String _resourcePrefixOf(String terraformType) {
  const providerPrefix = 'google_';
  final short = terraformType.startsWith(providerPrefix)
      ? terraformType.substring(providerPrefix.length)
      : terraformType;
  return snakeToPascal(short);
}

void main() {
  group(
      'renderNestedTypes: byte-pinned idiom (google_app_engine_domain_mapping.ssl_settings)',
      () {
    // NOTE on `sslManagementType.required`: the brief's pinned idiom text
    // renders `sslManagementType` as optional. The REAL provider schema
    // (test/fixtures/wrap/source/schema.json) actually marks
    // `ssl_management_type` `"required": true` — confirmed by the already
    // -committed, already-green `nested_type_collector_test.dart`
    // ("ssl_management_type" test expects `.required, isTrue`). This test
    // deliberately hand-constructs `required: false` to match the brief's
    // literal pinned text byte-for-byte (the point of this test is pinning
    // the FORMAT/idiom, not replaying this one resource's real schema). The
    // group below ("real collector output") separately renders the ACTUAL
    // collector output for this resource and confirms the required-attr
    // shape kicks in correctly for the real `required: true` data.
    test('matches the hand-written helper idiom byte-for-byte (post-format)',
        () {
      final certificateId = const NestedAttrSpec(
        tfName: 'certificate_id',
        dartName: 'certificateId',
        dartType: 'String',
        required: false,
      );
      final sslManagementType = const NestedAttrSpec(
        tfName: 'ssl_management_type',
        dartName: 'sslManagementType',
        dartType: 'AppEngineDomainMappingSslSettingsSslManagementType',
        required: false,
        enumValues: ['AUTOMATIC', 'MANUAL'],
      );
      final sslSettings = NestedBlockSpec(
        tfName: 'ssl_settings',
        path: const ['ssl_settings'],
        className: 'AppEngineDomainMappingSslSettings',
        repeated: false,
        required: false,
        // Deliberately reversed vs. tfName-alphabetical order, to prove
        // renderNestedTypes re-sorts attrs itself rather than trusting
        // caller-supplied order.
        attrs: [sslManagementType, certificateId],
        children: const [],
        excludedChildTfNames: const [],
      );

      final actual = renderNestedTypes(
        [sslSettings],
        resourceTerraformType: 'google_app_engine_domain_mapping',
      );

      const expected = '''
/// Typed helper for the `ssl_settings` block of
/// `google_app_engine_domain_mapping` (derived from provider schema).
@immutable
final class AppEngineDomainMappingSslSettings {
  const AppEngineDomainMappingSslSettings({
    this.certificateId,
    this.sslManagementType,
  });

  final TfArg<String>? certificateId;

  final TfArg<AppEngineDomainMappingSslSettingsSslManagementType>?
      sslManagementType;

  Map<String, Object?> encode() => {
        if (certificateId != null) 'certificate_id': certificateId!.toTfJson(),
        if (sslManagementType != null)
          'ssl_management_type': sslManagementType!.toTfJson(),
      };
}

/// `ssl_management_type` — derived from the provider schema description.
enum AppEngineDomainMappingSslSettingsSslManagementType implements TerraformEnum {
  automatic('AUTOMATIC'),
  manual('MANUAL');

  const AppEngineDomainMappingSslSettingsSslManagementType(this.terraformValue);
  @override
  final String terraformValue;
}
''';

      expect(_fmt(actual), _fmt(expected));
    });
  });

  group('renderNestedTypes: real collector output', () {
    test('ssl_management_type renders as required (real schema: required=true)',
        () {
      const terraformType = 'google_app_engine_domain_mapping';
      final specs = collectNestedTypes(
        resourceBlock: _blockOf(terraformType),
        resourcePrefix: _resourcePrefixOf(terraformType),
        customSlotKeys: const {},
        excludedPaths: const {},
      );

      final formatted = _fmt(renderNestedTypes(
        specs,
        resourceTerraformType: terraformType,
      ));

      // required attr: `required this.x`, non-nullable field, unconditional
      // encode entry (no `if (x != null)` guard, no `!` before the call).
      // Fragments are checked independently, not as one contiguous string,
      // because the class name is long enough that dart_style wraps the
      // field declaration across lines (same reason the main idiom test
      // above shows `sslManagementType`'s own field split in two).
      expect(formatted, contains('required this.sslManagementType'));
      expect(
        formatted,
        contains('TfArg<AppEngineDomainMappingSslSettingsSslManagementType>'),
      );
      expect(
        formatted,
        matches(RegExp(r'TfArg<\w+SslManagementType>\s+sslManagementType;')),
      );
      expect(
        formatted,
        contains("'ssl_management_type': sslManagementType.toTfJson(),"),
      );
      expect(formatted, isNot(contains('sslManagementType!.toTfJson()')));
      expect(formatted, isNot(contains('if (sslManagementType != null)')));

      // certificate_id stays optional (schema: optional + computed).
      expect(formatted, contains('this.certificateId,'));
      expect(formatted, contains('final TfArg<String>? certificateId;'));
    });
  });

  group('renderNestedTypes: additional shape rules', () {
    test(
        'a repeated child block renders as List<Child>? and encodes via .encode()',
        () {
      final conditions = const NestedBlockSpec(
        tfName: 'conditions',
        path: ['basic', 'conditions'],
        className: 'AccessLevelBasicConditions',
        repeated: true,
        required: false,
        attrs: [],
        children: [],
        excludedChildTfNames: [],
      );
      final basic = NestedBlockSpec(
        tfName: 'basic',
        path: const ['basic'],
        className: 'AccessLevelBasic',
        repeated: false,
        required: false,
        attrs: const [],
        children: [conditions],
        excludedChildTfNames: const [],
      );

      final formatted = _fmt(renderNestedTypes(
        [basic],
        resourceTerraformType: 'google_access_context_manager_access_level',
      ));

      expect(
        formatted,
        contains('final List<AccessLevelBasicConditions>? conditions;'),
      );
      expect(formatted, contains('if (conditions != null)'));
      expect(
        formatted,
        contains(
          "'conditions': [for (final e in conditions!) e.encode()],",
        ),
      );
      // Depth-first: the child's own class is rendered too.
      expect(
        formatted,
        contains('final class AccessLevelBasicConditions {'),
      );
    });

    test(
        'a required attr renders required this.x, non-nullable field, unconditional entry',
        () {
      final requiredAttr = const NestedAttrSpec(
        tfName: 'display_name',
        dartName: 'displayName',
        dartType: 'String',
        required: true,
      );
      final spec = NestedBlockSpec(
        tfName: 'thing',
        path: const ['thing'],
        className: 'FooThing',
        repeated: false,
        required: false,
        attrs: [requiredAttr],
        children: const [],
        excludedChildTfNames: const [],
      );

      final formatted = _fmt(renderNestedTypes(
        [spec],
        resourceTerraformType: 'google_foo',
      ));

      // A single named param collapses onto one line under dart_style (no
      // trailing comma) — assert on the parameter text itself, not on a
      // trailing comma that only appears when the line is long enough to
      // force a multi-line parameter list.
      expect(formatted, contains('required this.displayName'));
      expect(formatted, contains('final TfArg<String> displayName;'));
      // Same collapse-to-one-line caveat as the constructor param above: a
      // lone map entry that fits on one line loses its trailing comma too.
      expect(
        formatted,
        contains("'display_name': displayName.toTfJson()"),
      );
      expect(formatted, isNot(contains('displayName!.toTfJson()')));
      expect(formatted, isNot(contains('if (displayName != null)')));
    });

    test(
        'an excludedChildTfNames entry renders a TfArg<Map<String, dynamic>>? passthrough',
        () {
      final spec = const NestedBlockSpec(
        tfName: 'thing',
        path: ['thing'],
        className: 'FooThing',
        repeated: false,
        required: false,
        attrs: [],
        children: [],
        excludedChildTfNames: ['device_policy'],
      );

      final formatted = _fmt(renderNestedTypes(
        [spec],
        resourceTerraformType: 'google_foo',
      ));

      expect(
        formatted,
        contains('final TfArg<Map<String, dynamic>>? devicePolicy;'),
      );
      expect(
        formatted,
        contains(
          "if (devicePolicy != null) 'device_policy': devicePolicy!.toTfJson(),",
        ),
      );
    });

    test(
        'a repeated enum attribute renders List<TfArg<EnumClass>>? and encodes each element',
        () {
      final repeatedEnumAttr = const NestedAttrSpec(
        tfName: 'allowed_statuses',
        dartName: 'allowedStatuses',
        dartType: 'FooThingAllowedStatuses',
        required: false,
        enumValues: ['ESSENTIAL', 'FULL'],
        repeated: true,
      );
      final spec = NestedBlockSpec(
        tfName: 'thing',
        path: const ['thing'],
        className: 'FooThing',
        repeated: false,
        required: false,
        attrs: [repeatedEnumAttr],
        children: const [],
        excludedChildTfNames: const [],
      );

      final formatted = _fmt(renderNestedTypes(
        [spec],
        resourceTerraformType: 'google_foo',
      ));

      expect(
        formatted,
        contains(
            'final List<TfArg<FooThingAllowedStatuses>>? allowedStatuses;'),
      );
      expect(formatted, contains('if (allowedStatuses != null)'));
      expect(
        formatted,
        contains(
          "'allowed_statuses': [for (final e in allowedStatuses!) e.toTfJson()],",
        ),
      );
      expect(
        formatted,
        contains('enum FooThingAllowedStatuses implements TerraformEnum {'),
      );
      expect(formatted, contains("essential('ESSENTIAL'),"));
      expect(formatted, contains("full('FULL');"));
    });

    test(
        'field order: attrs (alphabetical) first, then block-type children '
        '— derived and excluded merged (alphabetical) — second', () {
      final zzzAttr = const NestedAttrSpec(
        tfName: 'zzz_attr',
        dartName: 'zzzAttr',
        dartType: 'String',
        required: false,
      );
      final aaaAttr = const NestedAttrSpec(
        tfName: 'aaa_attr',
        dartName: 'aaaAttr',
        dartType: 'String',
        required: false,
      );
      final mmmChild = const NestedBlockSpec(
        tfName: 'mmm_child',
        path: ['thing', 'mmm_child'],
        className: 'FooThingMmmChild',
        repeated: false,
        required: false,
        attrs: [],
        children: [],
        excludedChildTfNames: [],
      );
      final spec = NestedBlockSpec(
        tfName: 'thing',
        path: const ['thing'],
        className: 'FooThing',
        repeated: false,
        required: false,
        // Deliberately unsorted, and deliberately interleaving attrs with
        // the child, to prove the two-group rule below isn't an accident
        // of input order.
        attrs: [zzzAttr, aaaAttr],
        children: [mmmChild],
        excludedChildTfNames: const ['bbb_excluded'],
      );

      final formatted = _fmt(renderNestedTypes(
        [spec],
        resourceTerraformType: 'google_foo',
      ));

      final aaaIdx = formatted.indexOf('aaaAttr');
      final zzzIdx = formatted.indexOf('zzzAttr');
      final bbbIdx = formatted.indexOf('bbbExcluded');
      final mmmIdx = formatted.indexOf('mmmChild');
      expect([aaaIdx, zzzIdx, bbbIdx, mmmIdx], everyElement(greaterThan(-1)));
      // Group 1 (attrs, alphabetical): aaa_attr before zzz_attr.
      expect(aaaIdx, lessThan(zzzIdx));
      // Group 2 (block-type children, alphabetical, derived+excluded
      // merged): bbb_excluded before mmm_child — and the whole group comes
      // after every attr.
      expect(zzzIdx, lessThan(bbbIdx));
      expect(bbbIdx, lessThan(mmmIdx));
    });
  });

  group('renderNestedTypes: determinism', () {
    test('same specs produce identical output on repeated calls', () {
      final a = const NestedBlockSpec(
        tfName: 'aaa',
        path: ['aaa'],
        className: 'FooAaa',
        repeated: false,
        required: false,
        attrs: [],
        children: [],
        excludedChildTfNames: [],
      );
      final b = const NestedBlockSpec(
        tfName: 'bbb',
        path: ['bbb'],
        className: 'FooBbb',
        repeated: false,
        required: false,
        attrs: [],
        children: [],
        excludedChildTfNames: [],
      );

      final first =
          renderNestedTypes([a, b], resourceTerraformType: 'google_foo');
      final second =
          renderNestedTypes([a, b], resourceTerraformType: 'google_foo');
      expect(first, second);
    });

    test('output is stable across input list-order permutations', () {
      final a = const NestedBlockSpec(
        tfName: 'aaa',
        path: ['aaa'],
        className: 'FooAaa',
        repeated: false,
        required: false,
        attrs: [],
        children: [],
        excludedChildTfNames: [],
      );
      final b = const NestedBlockSpec(
        tfName: 'bbb',
        path: ['bbb'],
        className: 'FooBbb',
        repeated: false,
        required: false,
        attrs: [],
        children: [],
        excludedChildTfNames: [],
      );
      final c = const NestedBlockSpec(
        tfName: 'ccc',
        path: ['ccc'],
        className: 'FooCcc',
        repeated: false,
        required: false,
        attrs: [],
        children: [],
        excludedChildTfNames: [],
      );

      final canonical =
          renderNestedTypes([a, b, c], resourceTerraformType: 'google_foo');
      for (final permuted in [
        [a, c, b],
        [b, a, c],
        [b, c, a],
        [c, a, b],
        [c, b, a],
      ]) {
        expect(
          renderNestedTypes(permuted, resourceTerraformType: 'google_foo'),
          canonical,
        );
      }
    });
  });

  group('nestedParamType', () {
    test('single block -> "ClassName?"', () {
      final spec = const NestedBlockSpec(
        tfName: 'ssl_settings',
        path: ['ssl_settings'],
        className: 'AppEngineDomainMappingSslSettings',
        repeated: false,
        required: false,
        attrs: [],
        children: [],
        excludedChildTfNames: [],
      );
      expect(nestedParamType(spec), 'AppEngineDomainMappingSslSettings?');
    });

    test('repeated block -> "List<ClassName>?"', () {
      final spec = const NestedBlockSpec(
        tfName: 'conditions',
        path: ['basic', 'conditions'],
        className: 'AccessLevelBasicConditions',
        repeated: true,
        required: false,
        attrs: [],
        children: [],
        excludedChildTfNames: [],
      );
      expect(nestedParamType(spec), 'List<AccessLevelBasicConditions>?');
    });
  });
}
