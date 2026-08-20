// packages/terradart_codegen/lib/src/codegen/universal_invariants/beta_overlap.dart
/// Gate 9 predicate: resource type names present in BOTH schema JSONs.
///
/// The GA fixture is the full `hashicorp/google` schema and the beta fixture
/// is the filtered beta-only subset, so a non-empty intersection means a
/// beta-only type has been promoted to GA — the "types that also exist in GA
/// stay in `terradart_google`" invariant is broken.
List<String> overlappingResourceTypes({
  required Map<String, dynamic> gaSchema,
  required Map<String, dynamic> betaSchema,
}) {
  Set<String> names(Map<String, dynamic> schema) {
    final providerSchemas =
        (schema['provider_schemas'] as Map?)?.cast<String, dynamic>() ??
            const {};
    final out = <String>{};
    for (final body in providerSchemas.values) {
      final resources = ((body as Map?)?['resource_schemas'] as Map?)
          ?.cast<String, dynamic>();
      if (resources != null) out.addAll(resources.keys);
    }
    return out;
  }

  return names(gaSchema).intersection(names(betaSchema)).toList()..sort();
}
