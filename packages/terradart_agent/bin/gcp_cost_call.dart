// gcp_cost_call — call a gcp-cost MCP tool without an MCP host UI.
//
// Cursor Cloud Agents do not launch command-type MCP servers inside the VM
// (verified 2026-07-04), so agents invoke this CLI instead; it connects to
// the local gcp-cost-mcp-server over stdio using genkit_mcp's client — the
// same package terradart_agent already uses on the server side. The
// transport makes no decisions: tool choice, arguments, and interpretation
// stay with the calling agent.
//
// The server starts via tool/gcp-cost-mcp-wrapper.sh, which materializes
// the GOOGLE_APPLICATION_CREDENTIALS secret (inline JSON) into a file for
// ADC. Run from the repository root:
//
//   dart run terradart_agent:gcp_cost_call --list
//   dart run terradart_agent:gcp_cost_call list_services '{"name":"Cloud Run"}'
//   dart run terradart_agent:gcp_cost_call get_estimation_guide '{"service_name":"Cloud Tasks"}'
import 'dart:convert';
import 'dart:io';

import 'package:genkit_mcp/genkit_mcp.dart';

const _wrapperPath = 'tool/gcp-cost-mcp-wrapper.sh';

Future<void> main(List<String> args) async {
  if (args.isEmpty || (args.first != '--list' && args.length > 2)) {
    stderr.writeln(
      'usage: dart run terradart_agent:gcp_cost_call --list\n'
      '       dart run terradart_agent:gcp_cost_call <tool_name> \'<json_arguments>\'',
    );
    exit(2);
  }
  if (!File(_wrapperPath).existsSync()) {
    stderr.writeln(
      'gcp_cost_call: $_wrapperPath not found — run from the repository root.',
    );
    exit(2);
  }

  Map<String, dynamic> toolArguments = const {};
  final list = args.first == '--list';
  if (!list && args.length == 2) {
    try {
      toolArguments = jsonDecode(args[1]) as Map<String, dynamic>;
    } on Object {
      stderr.writeln(
        'gcp_cost_call: second argument must be a JSON object, got: ${args[1]}',
      );
      exit(2);
    }
  }

  final client = GenkitMcpClient(
    McpClientOptions(
      name: 'terradart-gcp-cost-call',
      // The server logs startup chatter to stderr, which genkit_mcp's
      // transport would echo into our stdout — silence it at the source
      // (debugging: launch the wrapper manually to see the logs).
      mcpServer: McpServerConfig(
        command: 'bash',
        args: ['-c', 'exec bash $_wrapperPath 2>/dev/null'],
      ),
    ),
  );
  try {
    await client.ready();
    if (client.error != null) {
      stderr.writeln('gcp_cost_call: connection failed — ${client.error}');
      exit(1);
    }
    if (list) {
      final result = await client.listTools();
      print(const JsonEncoder.withIndent('  ').convert(result));
      return;
    }
    final result = await client.callTool(
      name: args.first,
      arguments: toolArguments,
    );
    final content = result['content'];
    if (content is List) {
      for (final part in content) {
        if (part is Map && part['text'] != null) print(part['text']);
      }
    } else {
      print(const JsonEncoder.withIndent('  ').convert(result));
    }
    if (result['isError'] == true) exit(1);
  } finally {
    await client.close();
  }
}
