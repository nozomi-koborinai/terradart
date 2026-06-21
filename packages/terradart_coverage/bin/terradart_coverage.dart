import 'dart:convert';
import 'dart:io';

import 'package:args/args.dart';
import 'package:terradart_coverage/terradart_coverage.dart';
import 'package:terradart_google/catalog.dart';

Future<int> run(List<String> argv) async {
  final parser = ArgParser()
    ..addOption(
      'dir',
      help:
          'Terraform working directory to read. Runs `terraform show -json` '
          'for you; works with .tf (HCL) or .tf.json configs.',
    )
    ..addFlag('json', negatable: false, help: 'Emit machine-readable JSON.')
    ..addFlag('help', abbr: 'h', negatable: false);
  final args = parser.parse(argv);
  if (args['help'] as bool) {
    stdout.writeln(
      'Usage: terradart-coverage [--json] '
      '[--dir <terraform-dir> | <terraform-show.json>]',
    );
    stdout.writeln(
      'Reports terradart_google coverage of a Terraform configuration.\n'
      'Input precedence: --dir, else a file argument, else (with nothing '
      'piped in) the current directory, else piped stdin.',
    );
    stdout.writeln(parser.usage);
    return 0;
  }

  final input = resolveInput(
    dirOption: args['dir'] as String?,
    fileArg: args.rest.isNotEmpty ? args.rest.first : null,
    stdinIsTerminal: stdin.hasTerminal,
  );

  final Map<String, dynamic> json;
  switch (input) {
    case DirectoryInput(:final dir):
      try {
        json = await terraformShowJson(dir);
      } on TerraformUnavailable catch (e) {
        stderr.writeln('terradart-coverage: $e');
        return 3;
      } on TerraformFailed catch (e) {
        stderr.writeln('terradart-coverage: $e');
        return 2;
      }
    case FileInput(:final path):
      final decoded = _decodeShowJson(await File(path).readAsString());
      if (decoded == null) return 2;
      json = decoded;
    case StdinInput():
      final decoded = _decodeShowJson(
        await stdin.transform(utf8.decoder).join(),
      );
      if (decoded == null) return 2;
      json = decoded;
  }

  final ParseOutcome parsed;
  try {
    parsed = parseShowJson(json);
  } on FormatException catch (e) {
    stderr.writeln('terradart-coverage: ${e.message}');
    return 2;
  }

  final report = buildCoverageReport(parsed, CatalogIndex(terradartCatalog));
  stdout.writeln(
    (args['json'] as bool) ? renderJson(report) : renderText(report),
  );
  return 0;
}

/// Decodes a `terraform show -json` document, or prints a hint and returns
/// null so the caller can exit non-zero.
Map<String, dynamic>? _decodeShowJson(String raw) {
  try {
    return jsonDecode(raw) as Map<String, dynamic>;
  } on FormatException catch (e) {
    stderr.writeln('terradart-coverage: input is not valid JSON: ${e.message}');
    stderr.writeln('Hint: pipe `terraform show -json` output, or use --dir.');
    return null;
  }
}

Future<void> main(List<String> argv) async {
  exitCode = await run(argv);
}
