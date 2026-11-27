import 'resource_def.dart';

/// Top-level IR root: one provider's schema in unified form.
final class ProviderSchemaIR {
  final String providerName;
  final String providerSource;
  final String providerVersion;
  final Map<String, ResourceDef> resources;
  final Map<String, ResourceDef> dataSources;

  const ProviderSchemaIR({
    required this.providerName,
    required this.providerSource,
    required this.providerVersion,
    required this.resources,
    required this.dataSources,
  });
}
