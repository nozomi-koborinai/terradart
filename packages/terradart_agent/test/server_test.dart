import 'package:genkit_mcp/genkit_mcp.dart';
import 'package:terradart_agent/terradart_agent.dart';
import 'package:test/test.dart';

void main() {
  test('buildTerradartMcpServer exposes the 4 catalog tools', () async {
    final GenkitMcpServer server = await buildTerradartMcpServer();
    final resp = await server.handleRequest(<String, dynamic>{
      'jsonrpc': '2.0',
      'method': 'tools/list',
      'id': 1,
    });
    final tools = ((resp!['result'] as Map)['tools'] as List)
        .map((t) => (t as Map)['name'] as String)
        .toList();
    expect(
      tools,
      containsAll(<String>[
        'list_resources',
        'list_barrels',
        'get_resource_schema',
        'get_quickstart',
      ]),
    );
  });

  test('tools/call round-trips real catalog data', () async {
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

    final barrels = await call('list_barrels', <String, dynamic>{});
    expect(barrels['isError'], isNot(true));
    expect(barrels['structuredContent'], isA<List<Object?>>());
    expect(barrels['structuredContent'] as List, isNotEmpty);

    final pubsub = await call('list_resources', {'barrel': 'pubsub'});
    final entries = pubsub['structuredContent'] as List;
    expect(entries, isNotEmpty);
    expect(entries.map((e) => (e as Map)['barrel']).toSet(), {'pubsub'});

    final schema = await call('get_resource_schema', {
      'name': 'google_pubsub_topic',
    });
    final sc = schema['structuredContent'] as Map;
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

    // Argument-free call to an optional-param tool must NOT error
    // (regression guard for the null-safe parse fix).
    final noArgs = await call('list_resources');
    expect(noArgs['isError'], isNot(true));
  });
}
