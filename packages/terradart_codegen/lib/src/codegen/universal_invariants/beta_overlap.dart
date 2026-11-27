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
