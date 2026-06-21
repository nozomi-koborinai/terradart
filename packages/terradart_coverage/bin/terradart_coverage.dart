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
      'Input precedence: --dir (the CLI runs terraform for you), else a file '
      'arg, else stdin (paste `terraform show -json` output).',
    );
    stdout.writeln(parser.usage);
    return 0;
  }

  final Map<String, dynamic> json;
  final dir = args['dir'] as String?;
  if (dir != null) {
    try {
      json = await terraformShowJson(dir);
    } on TerraformUnavailable catch (e) {
      stderr.writeln('terradart-coverage: $e');
      return 3;
    } on TerraformFailed catch (e) {
      stderr.writeln('terradart-coverage: $e');
      return 2;
    }
  } else {
    final String raw;
    if (args.rest.isNotEmpty) {
      raw = await File(args.rest.first).readAsString();
    } else {
      raw = await stdin.transform(utf8.decoder).join();
    }
    try {
      json = jsonDecode(raw) as Map<String, dynamic>;
    } on FormatException catch (e) {
      stderr.writeln(
        'terradart-coverage: input is not valid JSON: ${e.message}',
      );
      stderr.writeln('Hint: pipe `terraform show -json` output, or use --dir.');
      return 2;
    }
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

Future<void> main(List<String> argv) async {
  exitCode = await run(argv);
}
