import 'package:genkit_mcp/genkit_mcp.dart';
import 'package:terradart_agent/terradart_agent.dart';
import 'package:test/test.dart';

void main() {
  test('buildTerradartMcpServer exposes the 6 tools', () async {
    final GenkitMcpServer server = await buildTerradartMcpServer();
    final resp = await server.handleRequest(<String, dynamic>{
      'jsonrpc': '2.0',
      'method': 'tools/list',
      'id': 1,
    });
    final listed = ((resp!['result'] as Map<String, Object?>)['tools'] as List)
        .cast<Map<String, Object?>>();
    final tools = listed.map((t) => t['name'] as String).toList();
    expect(
      tools,
      containsAll(<String>[
        'list_resources',
        'list_barrels',
        'get_resource_schema',
        'get_quickstart',
        'check_coverage',
        'migrate_module',
      ]),
    );
    // The listing is what an agent reads to know what to pass, so the real
    // parameter names are declared, not an opaque object.
    final migrate = listed.firstWhere((t) => t['name'] == 'migrate_module');
    final schema = migrate['inputSchema'] as Map<String, Object?>;
    expect((schema['properties'] as Map<String, Object?>).keys, {
      'source',
      'name',
      'syntax',
      'allow_todo',
    });
    expect(schema['required'], ['source']);
  });

  test('tools/call returns object structuredContent with real data', () async {
    final server = await buildTerradartMcpServer();
    Future<Map<String, dynamic>> call(
      String name, [
      Map<String, dynamic>? args,
    ]) async {
      final resp = await server.handleRequest(<String, dynamic>{
        'jsonrpc': '2.0',
        'method': 'tools/call',
        'id': 2,
        'params': <String, dynamic>{'name': name, 'arguments': ?args},
      });
      return resp!['result'] as Map<String, dynamic>;
    }

    // MCP requires `structuredContent` to be a JSON object (record), not a
    // bare array; strict clients (e.g. Cursor) reject arrays. Assert every
    // tool returns an object — this is the regression guard for that bug.
    final barrels = await call('list_barrels', <String, dynamic>{});
    expect(barrels['isError'], isNot(true));
    expect(
      barrels['structuredContent'],
      isA<Map<String, Object?>>(),
      reason: 'structuredContent must be a JSON object, not an array',
    );
    expect(
      (barrels['structuredContent'] as Map<String, Object?>)['barrels'] as List,
      isNotEmpty,
    );

    final pubsub = await call('list_resources', {'barrel': 'pubsub'});
    expect(pubsub['structuredContent'], isA<Map<String, Object?>>());
    final entries =
        (pubsub['structuredContent'] as Map<String, Object?>)['resources']
            as List;
    expect(entries, isNotEmpty);
    expect(entries.map((e) => (e as Map<String, Object?>)['barrel']).toSet(), {
      'pubsub',
    });

    final schema = await call('get_resource_schema', {
      'name': 'google_pubsub_topic',
    });
    expect(schema['structuredContent'], isA<Map<String, Object?>>());
    final sc = schema['structuredContent'] as Map<String, Object?>;
    expect(sc['found'], isTrue);
    expect(
      sc.keys,
      containsAll([
        'constructor_signature',
        'nested_types',
        'sensitive_fields',
        'doc_comment',
      ]),
    );

    final quickstart = await call('get_quickstart', {
      'scenario': 'cloud-run-webhook',
    });
    expect(quickstart['structuredContent'], isA<Map<String, Object?>>());

    // The migrator's answer is an object too, and it carries the Dart it
    // generated rather than a description of it.
    final migrated = await call('migrate_module', {
      'source':
          'resource "google_storage_bucket" "assets" {\n'
          '  name     = "a"\n'
          '  location = "US"\n'
          '}\n',
      'name': 'demo',
    });
    expect(migrated['isError'], isNot(true));
    expect(migrated['structuredContent'], isA<Map<String, Object?>>());
    final out = migrated['structuredContent'] as Map<String, Object?>;
    expect(out['migrated'], isTrue);
    expect(out['dart_source'], contains('final class DemoStack extends Stack'));

    // A source that does not parse is an answer, not a failed call: the
    // agent reads the reason and fixes what it passed.
    final broken = await call('migrate_module', {'source': 'resource "x" {'});
    expect(broken['isError'], isNot(true));
    expect(
      (broken['structuredContent'] as Map<String, Object?>)['error'],
      contains('not valid HCL'),
    );

    // Argument-free call to an optional-param tool must NOT error
    // (regression guard for the null-safe parse fix).
    final noArgs = await call('list_resources');
    expect(noArgs['isError'], isNot(true));
    expect(noArgs['structuredContent'], isA<Map<String, Object?>>());
  });
}
