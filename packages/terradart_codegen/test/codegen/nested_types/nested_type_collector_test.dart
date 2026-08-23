import 'dart:convert';
import 'dart:io';

import 'package:terradart_codegen/src/codegen/naming.dart';
import 'package:terradart_codegen/src/codegen/nested_types/nested_type_collector.dart';
import 'package:test/test.dart';

const _schemaPath = 'test/fixtures/wrap/source/schema.json';

/// Loads `resource_schemas[terraformType].block` as a raw decoded JSON map
/// (the shape [collectNestedTypes] consumes), straight from the pinned
/// provider-schema fixture — no IR parsing involved.
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

/// `google_app_engine_domain_mapping` -> `AppEngineDomainMapping`.
///
/// The collector takes `resourcePrefix` as caller-supplied, so this mirrors
/// what the real caller (the Task 4 wrapper-emitter wiring) will do: strip
/// the `google_` provider prefix, then reuse naming.dart's existing public
/// snake->Pascal helper rather than writing a new one here.
String _resourcePrefixOf(String terraformType) {
  const providerPrefix = 'google_';
  final short = terraformType.startsWith(providerPrefix)
      ? terraformType.substring(providerPrefix.length)
      : terraformType;
  return snakeToPascal(short);
}

void main() {
  test(
      'google_app_engine_domain_mapping: ssl_settings becomes the only '
      'nested spec (timeouts filtered, computed-only attr dropped, enum '
      'detected)', () {
    const terraformType = 'google_app_engine_domain_mapping';
    final specs = collectNestedTypes(
      resourceBlock: _blockOf(terraformType),
      resourcePrefix: _resourcePrefixOf(terraformType),
      customSlotKeys: const {},
      excludedPaths: const {},
    );

    // Only `ssl_settings` should survive — the schema's other block_type,
    // `timeouts`, is Terraform SDK metadata and is never a derivable spec.
    expect(specs, hasLength(1));
    final sslSettings = specs.single;
    expect(sslSettings.tfName, 'ssl_settings');
    expect(sslSettings.path, ['ssl_settings']);
    expect(sslSettings.className, 'AppEngineDomainMappingSslSettings');
    // nesting_mode: list, max_items: 1 -> not a repeated collection.
    expect(sslSettings.repeated, isFalse);
    // no min_items -> the block itself is optional.
    expect(sslSettings.required, isFalse);
    expect(sslSettings.children, isEmpty);
    expect(sslSettings.excludedChildren, isEmpty);

    final sslManagementType =
        sslSettings.attrs.firstWhere((a) => a.tfName == 'ssl_management_type');
    expect(sslManagementType.dartName, 'sslManagementType');
    expect(sslManagementType.required, isTrue);
    expect(sslManagementType.enumValues, ['AUTOMATIC', 'MANUAL']);
    expect(
      sslManagementType.dartType,
      'AppEngineDomainMappingSslSettingsSslManagementType',
    );

    final certificateId =
        sslSettings.attrs.firstWhere((a) => a.tfName == 'certificate_id');
    expect(certificateId.dartName, 'certificateId');
    // optional + computed -> kept, not required.
    expect(certificateId.required, isFalse);
    expect(certificateId.enumValues, isNull);
    expect(certificateId.dartType, 'String');

    // pending_managed_certificate_id is computed-only (computed, neither
    // optional nor required) and must be dropped entirely.
    expect(
      sslSettings.attrs
          .any((a) => a.tfName == 'pending_managed_certificate_id'),
      isFalse,
    );
  });

  test(
      'google_access_context_manager_access_level: excludedPaths records '
      'the child by name without descending, customSlot keys hide the '
      'whole subtree, and a max_items-less list block is repeated', () {
    const terraformType = 'google_access_context_manager_access_level';
    final block = _blockOf(terraformType);
    final resourcePrefix = _resourcePrefixOf(terraformType);

    final specs = collectNestedTypes(
      resourceBlock: block,
      resourcePrefix: resourcePrefix,
      customSlotKeys: const {},
      excludedPaths: const {'basic.conditions'},
    );

    final basic = specs.firstWhere((s) => s.tfName == 'basic');
    expect(basic.path, ['basic']);
    expect(basic.className, 'AccessContextManagerAccessLevelBasic');
    // `basic.conditions` is excluded: recorded by name on the parent, WITH
    // the real cardinality (repeated + required — see the unrestricted
    // re-run below) rather than the collector silently discarding it.
    final excludedConditions = basic.excludedChildren.single;
    expect(excludedConditions.tfName, 'conditions');
    expect(excludedConditions.repeated, isTrue);
    expect(excludedConditions.required, isTrue);
    // ...and NOT present as a child spec (the subtree is not descended).
    expect(basic.children.any((c) => c.tfName == 'conditions'), isFalse);

    // Re-run unrestricted (no excludedPaths) to pin `repeated` on the same
    // real block: `conditions` is nesting_mode list with min_items: 1 and
    // no max_items, so it is both required and repeated.
    final unrestricted = collectNestedTypes(
      resourceBlock: block,
      resourcePrefix: resourcePrefix,
      customSlotKeys: const {},
      excludedPaths: const {},
    );
    final unrestrictedBasic =
        unrestricted.firstWhere((s) => s.tfName == 'basic');
    // `basic` carries both its own attribute (combining_function) AND a
    // nested block (conditions) — the recursion must produce both from the
    // same block map, not just one or the other.
    expect(
      unrestrictedBasic.attrs.any((a) => a.tfName == 'combining_function'),
      isTrue,
    );
    final conditions =
        unrestrictedBasic.children.firstWhere((c) => c.tfName == 'conditions');
    expect(conditions.repeated, isTrue);
    expect(conditions.required, isTrue);

    // customSlot keys hide the whole subtree: no trace anywhere (contrast
    // with excludedPaths above, which still records the bare name) — tested
    // at the ROOT ('basic', a top-level block_types entry)...
    final withCustomSlot = collectNestedTypes(
      resourceBlock: block,
      resourcePrefix: resourcePrefix,
      customSlotKeys: const {'basic'},
      excludedPaths: const {},
    );
    expect(withCustomSlot.any((s) => s.tfName == 'basic'), isFalse);
    // ...and an unrelated sibling block is unaffected by the customSlot skip.
    expect(withCustomSlot.any((s) => s.tfName == 'custom'), isTrue);

    // ...and NESTED ('conditions', a child two levels down): `basic` itself
    // must still be collected (with its own attrs intact), but with
    // `conditions` entirely gone from both `children` AND
    // `excludedChildren` — true invisibility, unlike excludedPaths.
    final withNestedCustomSlot = collectNestedTypes(
      resourceBlock: block,
      resourcePrefix: resourcePrefix,
      customSlotKeys: const {'conditions'},
      excludedPaths: const {},
    );
    final basicWithNestedCustomSlot =
        withNestedCustomSlot.firstWhere((s) => s.tfName == 'basic');
    expect(
      basicWithNestedCustomSlot.attrs
          .any((a) => a.tfName == 'combining_function'),
      isTrue,
    );
    expect(
      basicWithNestedCustomSlot.children.any((c) => c.tfName == 'conditions'),
      isFalse,
    );
    expect(basicWithNestedCustomSlot.excludedChildren, isEmpty);
  });

  test(
      'google_os_config_patch_deployment: a list(string) attr with an enum '
      'description becomes a first-class repeated enum, not a scalar one', () {
    const terraformType = 'google_os_config_patch_deployment';
    final specs = collectNestedTypes(
      resourceBlock: _blockOf(terraformType),
      resourcePrefix: _resourcePrefixOf(terraformType),
      customSlotKeys: const {},
      excludedPaths: const {},
    );

    final patchConfig = specs.firstWhere((s) => s.tfName == 'patch_config');
    final windowsUpdate =
        patchConfig.children.firstWhere((c) => c.tfName == 'windows_update');
    expect(windowsUpdate.path, ['patch_config', 'windows_update']);
    expect(
      windowsUpdate.className,
      'OsConfigPatchDeploymentPatchConfigWindowsUpdate',
    );

    // `classifications` is `["list", "string"]` with a "Possible values:
    // [...]" description — schema type AND description agree it's a
    // repeated enum, so it must render as one (not a self-contradictory
    // scalar enum dartType on a list-typed field).
    final classifications =
        windowsUpdate.attrs.firstWhere((a) => a.tfName == 'classifications');
    expect(classifications.dartName, 'classifications');
    expect(classifications.required, isFalse);
    expect(classifications.repeated, isTrue);
    expect(classifications.enumValues, [
      'CRITICAL',
      'SECURITY',
      'DEFINITION',
      'DRIVER',
      'FEATURE_PACK',
      'SERVICE_PACK',
      'TOOL',
      'UPDATE_ROLLUP',
      'UPDATE',
    ]);
    expect(
      classifications.dartType,
      'OsConfigPatchDeploymentPatchConfigWindowsUpdateClassifications',
    );
  });

  test(
      'google_access_context_manager_access_level: both device_policy '
      'allow-lists become repeated enums when the conditions subtree is '
      'not excluded', () {
    const terraformType = 'google_access_context_manager_access_level';
    final specs = collectNestedTypes(
      resourceBlock: _blockOf(terraformType),
      resourcePrefix: _resourcePrefixOf(terraformType),
      customSlotKeys: const {},
      excludedPaths: const {},
    );

    final basic = specs.firstWhere((s) => s.tfName == 'basic');
    final conditions =
        basic.children.firstWhere((c) => c.tfName == 'conditions');
    final devicePolicy =
        conditions.children.firstWhere((c) => c.tfName == 'device_policy');
    expect(
      devicePolicy.className,
      'AccessContextManagerAccessLevelBasicConditionsDevicePolicy',
    );

    final managementLevels = devicePolicy.attrs
        .firstWhere((a) => a.tfName == 'allowed_device_management_levels');
    expect(managementLevels.repeated, isTrue);
    expect(managementLevels.enumValues, [
      'MANAGEMENT_UNSPECIFIED',
      'NONE',
      'BASIC',
      'COMPLETE',
    ]);
    expect(
      managementLevels.dartType,
      'AccessContextManagerAccessLevelBasicConditionsDevicePolicy'
      'AllowedDeviceManagementLevels',
    );

    final encryptionStatuses = devicePolicy.attrs
        .firstWhere((a) => a.tfName == 'allowed_encryption_statuses');
    expect(encryptionStatuses.repeated, isTrue);
    expect(encryptionStatuses.enumValues, [
      'ENCRYPTION_UNSPECIFIED',
      'ENCRYPTION_UNSUPPORTED',
      'UNENCRYPTED',
      'ENCRYPTED',
    ]);
    expect(
      encryptionStatuses.dartType,
      'AccessContextManagerAccessLevelBasicConditionsDevicePolicy'
      'AllowedEncryptionStatuses',
    );

    // A plain list(string) with NO enum description must still fall back
    // to the conservative shape, not be swept up by the new repeated-enum
    // branch.
    final ipSubnetworks =
        conditions.attrs.firstWhere((a) => a.tfName == 'ip_subnetworks');
    expect(ipSubnetworks.repeated, isFalse);
    expect(ipSubnetworks.enumValues, isNull);
    expect(ipSubnetworks.dartType, 'List<Object?>');
  });

  test(
      'google_os_config_os_policy_assignment: an excluded child that is '
      'itself required-and-repeated keeps that cardinality (Task 5 flip — '
      'the real nestedTypeExcludes target)', () {
    const terraformType = 'google_os_config_os_policy_assignment';
    final specs = collectNestedTypes(
      resourceBlock: _blockOf(terraformType),
      resourcePrefix: _resourcePrefixOf(terraformType),
      customSlotKeys: const {},
      excludedPaths: const {'os_policies.resource_groups.resources'},
    );

    final osPolicies = specs.firstWhere((s) => s.tfName == 'os_policies');
    final resourceGroups =
        osPolicies.children.firstWhere((c) => c.tfName == 'resource_groups');
    // `resources` is NOT descended into...
    expect(
      resourceGroups.children.any((c) => c.tfName == 'resources'),
      isFalse,
    );
    // ...but IS recorded on its parent with the real schema cardinality:
    // nesting_mode list, min_items: 1, no max_items -> required AND
    // repeated. Forcing this to a scalar-optional passthrough (the pre-fix
    // behavior) would make the opaque field unable to hold more than one
    // resource per group, silently narrowing what the API allows.
    final excludedResources = resourceGroups.excludedChildren
        .firstWhere((c) => c.tfName == 'resources');
    expect(excludedResources.repeated, isTrue);
    expect(excludedResources.required, isTrue);
  });

  test(
      'plugin-framework nested_type objects become specs; computed-only '
      'objects are skipped (Cloudflare zone/dns shape)', () {
    const zoneBlock = {
      'attributes': {
        'name': {'type': 'string', 'required': true},
        'account': {
          'nested_type': {
            'attributes': {
              'id': {'type': 'string', 'optional': true},
            },
            'nesting_mode': 'single',
          },
          'required': true,
        },
        'meta': {
          'nested_type': {
            'attributes': {
              'cdn_only': {'type': 'bool', 'computed': true},
            },
            'nesting_mode': 'single',
          },
          'computed': true,
        },
      },
    };
    final zoneSpecs = collectNestedTypes(
      resourceBlock: zoneBlock,
      resourcePrefix: 'Zone',
      customSlotKeys: const {},
      excludedPaths: const {},
    );
    expect(zoneSpecs.map((s) => s.tfName), ['account']);
    final account = zoneSpecs.single;
    expect(account.className, 'ZoneAccount');
    expect(account.required, isTrue);
    expect(account.repeated, isFalse);
    expect(account.attrs.single.tfName, 'id');
    expect(account.attrs.single.required, isFalse);
    expect(account.attrs.single.dartType, 'String');

    const dnsBlock = {
      'attributes': {
        'data': {
          'nested_type': {
            'attributes': {
              'priority': {'type': 'number', 'optional': true},
              'target': {'type': 'string', 'optional': true},
            },
            'nesting_mode': 'single',
          },
          'optional': true,
        },
        'settings': {
          'nested_type': {
            'attributes': {
              'flatten_cname': {
                'type': 'bool',
                'optional': true,
                'computed': true
              },
            },
            'nesting_mode': 'single',
          },
          'optional': true,
          'computed': true,
        },
      },
    };
    final dnsSpecs = collectNestedTypes(
      resourceBlock: dnsBlock,
      resourcePrefix: 'DnsRecord',
      customSlotKeys: const {},
      excludedPaths: const {},
    );
    expect(
        dnsSpecs.map((s) => s.tfName).toList()..sort(), ['data', 'settings']);
  });
}
