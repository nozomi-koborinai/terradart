import 'package:genkit/genkit.dart';
import 'package:genkit_mcp/genkit_mcp.dart';
import 'package:schemantic/schemantic.dart';
import 'package:terradart_google/catalog.dart';

import 'tools/check_coverage.dart';
import 'tools/get_quickstart.dart';
import 'tools/get_resource_schema.dart';
import 'tools/list_barrels.dart';
import 'tools/list_resources.dart';

/// A JSON-Schema `object` input wrapped as a [SchemanticType] so it can be
/// passed to [Genkit.defineTool]'s `inputSchema`.
///
/// genkit_mcp surfaces this schema verbatim in the MCP `tools/list` response,
/// so declaring the real parameter names here lets MCP clients/agents see
/// exactly what to pass. The tool bodies read [Map] inputs directly, so the
/// `parse` step just casts the decoded JSON object.
SchemanticType<Map<String, dynamic>> _objectSchema({
  Map<String, $Schema> properties = const {},
  List<String> required = const [],
}) {
  return SchemanticType.from<Map<String, dynamic>>(
    jsonSchema: $Schema
        .object(
          properties: properties,
          required: required.isEmpty ? null : required,
        )
        .value,
    parse: (json) =>
        (json as Map?)?.cast<String, dynamic>() ?? <String, dynamic>{},
  );
}

/// Builds the `terradart-mcp` MCP server.
///
/// Registers five read-only tools (`list_resources`, `list_barrels`,
/// `get_resource_schema`, `get_quickstart`, `check_coverage`) on a fresh
/// [Genkit] instance and exposes them over the Model Context Protocol via
/// genkit_mcp. The first four project TerraDart's curated `terradartCatalog`
/// (from `package:terradart_google`) into agent-friendly JSON; `check_coverage`
/// analyses `terraform show -json` output against every provider package's
/// catalog (via `terradart_coverage`) and reports coverage metrics.
Future<GenkitMcpServer> buildTerradartMcpServer() async {
  final ai = Genkit();

  ai.defineTool<Map<String, dynamic>, Object>(
    name: 'list_resources',
    description:
        'List curated GCP resources, optionally filtered by service barrel '
        '(the "barrel" arg).',
    inputSchema: _objectSchema(
      properties: {
        'barrel': $Schema.string(
          description: 'Optional service barrel to filter by, e.g. "pubsub".',
        ),
      },
    ),
    // Wrapped in an object: MCP requires `structuredContent` to be a JSON
    // object (record), not a bare array, or strict clients reject the result.
    fn: (input, _) async => <String, Object?>{
      'resources': listResources(
        terradartCatalog,
        barrel: input['barrel'] as String?,
      ).map((r) => r.toJson()).toList(),
    },
  );

  ai.defineTool<Map<String, dynamic>, Object>(
    name: 'list_barrels',
    description: 'List per-service barrels with resource counts.',
    inputSchema: _objectSchema(),
    // Wrapped in an object (see list_resources): `structuredContent` must be
    // a JSON object, not a bare array.
    fn: (input, _) async => <String, Object?>{
      'barrels': listBarrels(terradartCatalog).map((b) => b.toJson()).toList(),
    },
  );

  ai.defineTool<Map<String, dynamic>, Object>(
    name: 'get_resource_schema',
    description:
        'Get constructor params, nested types, sensitive fields, and docs for '
        'a resource by terraform type name (the "name" arg). Returns near-miss '
        'suggestions if not found.',
    inputSchema: _objectSchema(
      properties: {
        'name': $Schema.string(
          description: 'Terraform type name, e.g. "google_pubsub_topic".',
        ),
      },
      required: ['name'],
    ),
    fn: (input, _) async {
      final r = getResourceSchema(terradartCatalog, input['name'] as String);
      if (!r.found) {
        return <String, Object?>{'found': false, 'suggestions': r.suggestions};
      }
      final s = r.schema!;
      return <String, Object?>{
        'found': true,
        'constructor_signature':
            '${s.className}({${s.constructorParams.join(', ')}})',
        'nested_types': s.nestedTypes,
        'sensitive_fields': s.sensitiveFields,
        'doc_comment': s.docComment,
      };
    },
  );

  ai.defineTool<Map<String, dynamic>, Object>(
    name: 'get_quickstart',
    description:
        'Get a runnable Dart Stack template for a named scenario (the '
        '"scenario" arg).',
    inputSchema: _objectSchema(
      properties: {
        'scenario': $Schema.string(
          description: 'Scenario key, e.g. "cloud-run-webhook".',
        ),
      },
      required: ['scenario'],
    ),
    fn: (input, _) async {
      final r = getQuickstart(input['scenario'] as String);
      if (!r.found) {
        return <String, Object?>{'found': false, 'available': r.available};
      }
      final s = r.scenario!;
      return <String, Object?>{
        'found': true,
        'dart_code': s.dartCode,
        'description': s.description,
        'gcs_refs': s.gcsRefs,
      };
    },
  );

  ai.defineTool<Map<String, dynamic>, Object>(
    name: 'check_coverage',
    description:
        'Given `terraform show -json` output (the "tf_json" arg), report how '
        'much of the Terraform config is covered by curated TerraDart '
        'factories (terradart_google, terradart_google_beta, '
        'terradart_appwrite, terradart_cloudflare): coverage %, supported '
        'types with their package, not-in-catalog types, and a per-module '
        'breakdown.',
    inputSchema: _objectSchema(
      properties: {
        'tf_json': $Schema.string(
          description:
              'The full `terraform show -json` output (state or plan JSON).',
        ),
      },
      required: ['tf_json'],
    ),
    fn: (input, _) async => checkCoverage(input['tf_json'] as String),
  );

  return createMcpServer(ai, McpServerOptions(name: 'terradart'));
}
