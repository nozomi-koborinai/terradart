import 'dart:convert';
import 'dart:io';

import 'package:terradart_codegen/src/codegen/wrapper_overrides/_registry.dart';
import 'package:test/test.dart';

/// Cross-wrapper invariant: a curated resource whose pinned schema exposes a
/// `deletion_protection` attribute must curate the input. The emitter sets
/// `supportsDeletionProtection => true` from the schema regardless of
/// paramOrder, so omitting the slot advertises the capability (devMode
/// injection, catalog) while giving users no way to set the flag — Wave 32
/// shipped `google_redis_instance` in exactly that state.
void main() {
  test(
      'every curated resource whose schema has deletion_protection lists it '
      'in paramOrder', () {
    final loaded = loadWrapperOverrides(
      rootDir: 'lib/src/codegen/wrapper_overrides/yaml',
    );
    final schema = jsonDecode(
      File('test/fixtures/wrap/source/schema.json').readAsStringSync(),
    ) as Map<String, dynamic>;
    final providerSchemas = schema['provider_schemas'] as Map<String, dynamic>;
    final resourceSchemas = (providerSchemas.values.first
        as Map<String, dynamic>)['resource_schemas'] as Map<String, dynamic>;

    final violations = <String>[];
    for (final entry in loaded.resources.entries) {
      final paramOrder = entry.value.paramOrder;
      // Omitted paramOrder means schema-default ordering, which already
      // includes every input attribute — nothing to check.
      if (paramOrder == null) continue;
      final res = resourceSchemas[entry.key] as Map<String, dynamic>?;
      if (res == null) continue;
      final attrs = ((res['block'] as Map<String, dynamic>)['attributes'] ??
          const <String, dynamic>{}) as Map<String, dynamic>;
      if (!attrs.containsKey('deletion_protection')) continue;
      if (!paramOrder.contains('deletion_protection')) {
        violations.add(entry.key);
      }
    }
    expect(
      violations,
      isEmpty,
      reason: 'These overrides curate a resource whose schema exposes '
          'deletion_protection but omit it from paramOrder, so the wrapper '
          'advertises supportsDeletionProtection with no way to set the '
          'flag: $violations. Add deletion_protection to paramOrder.',
    );
  });
}
