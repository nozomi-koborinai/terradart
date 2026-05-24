import 'package:terradart_agent/src/version.dart';
import 'package:terradart_agent/terradart_agent.dart';

/// terradart-mcp entry point — serves the catalog MCP server over stdio.
///
/// `--version` / `-v` prints the version and exits; otherwise the genkit_mcp
/// server starts on the default stdio transport (what MCP clients connect to).
Future<void> main(List<String> args) async {
  if (args.contains('--version') || args.contains('-v')) {
    print('terradart-mcp $packageVersion');
    return;
  }
  final server = await buildTerradartMcpServer();
  await server.start(); // no transport == stdio (genkit_mcp default)
}
