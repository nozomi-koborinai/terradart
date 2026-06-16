import 'dart:convert';
import 'dart:io';

import 'package:args/args.dart';
import 'package:terradart_coverage/terradart_coverage.dart';
import 'package:terradart_google/catalog.dart';

Future<int> run(List<String> argv) async {
  final parser = ArgParser()
    ..addFlag('json', negatable: false, help: 'Emit machine-readable JSON.')
    ..addFlag('help', abbr: 'h', negatable: false);
  final args = parser.parse(argv);
  if (args['help'] as bool) {
    stdout.writeln(
      'Usage: terradart-coverage [--json] [<terraform-show.json>]',
    );
    stdout.writeln(
      'Reads `terraform show -json` output from the file arg or '
      'stdin and reports terradart_google coverage.',
    );
    stdout.writeln(parser.usage);
    return 0;
  }

  final String raw;
  if (args.rest.isNotEmpty) {
    raw = await File(args.rest.first).readAsString();
  } else {
    raw = await stdin.transform(utf8.decoder).join();
  }

  final Map<String, dynamic> json;
  try {
    json = jsonDecode(raw) as Map<String, dynamic>;
  } on FormatException catch (e) {
    stderr.writeln('terradart-coverage: input is not valid JSON: ${e.message}');
    stderr.writeln('Hint: pipe `terraform show -json` output.');
    return 2;
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
