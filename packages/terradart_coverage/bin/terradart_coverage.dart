import 'dart:convert';
import 'dart:io';

import 'package:args/args.dart';
import 'package:terradart_coverage/terradart_coverage.dart';

Future<int> run(List<String> argv) async {
  final parser = ArgParser()
    ..addOption(
      'dir',
      help:
          'Terraform directory to scan. Recursively reads .tf / .tf.json — no '
          'terraform run, init, backend, or credentials. Defaults to the '
          'current directory.',
    )
    ..addFlag('json', negatable: false, help: 'Emit machine-readable JSON.')
    ..addFlag('help', abbr: 'h', negatable: false);
  final args = parser.parse(argv);
  if (args['help'] as bool) {
    stdout.writeln(
      'Usage: terradart-coverage [--json] [--dir <dir> | <terraform-show.json>]',
    );
    stdout.writeln(
      'Reports how much of a Terraform configuration is covered by curated '
      'TerraDart factories (terradart_google, terradart_google_beta, '
      'terradart_appwrite, terradart_cloudflare).\n'
      'By default it scans .tf / .tf.json under --dir (or the current '
      'directory), with no terraform run, init, or credentials. Pipe '
      '`terraform show -json` (or pass it as a file) for an evaluated view '
      'with exact instance counts and remote modules expanded.',
    );
    stdout.writeln(parser.usage);
    return 0;
  }

  final input = resolveInput(
    dirOption: args['dir'] as String?,
    fileArg: args.rest.isNotEmpty ? args.rest.first : null,
    stdinIsTerminal: stdin.hasTerminal,
  );

  final ParseOutcome parsed;
  switch (input) {
    case DirectoryInput(:final dir):
      try {
        parsed = scanConfigDir(dir);
      } on FormatException catch (e) {
        stderr.writeln('terradart-coverage: ${e.message}');
        return 2;
      }
    case FileInput(:final path):
      final p = _parseShowJson(await File(path).readAsString());
      if (p == null) return 2;
      parsed = p;
    case StdinInput():
      final p = _parseShowJson(await stdin.transform(utf8.decoder).join());
      if (p == null) return 2;
      parsed = p;
  }

  final report = buildCoverageReport(parsed, CatalogIndex.all());
  stdout.writeln(
    (args['json'] as bool) ? renderJson(report) : renderText(report),
  );
  return 0;
}

/// Decodes and parses a `terraform show -json` document, printing a hint and
/// returning null on failure so the caller can exit non-zero.
ParseOutcome? _parseShowJson(String raw) {
  final Map<String, dynamic> json;
  try {
    json = jsonDecode(raw) as Map<String, dynamic>;
  } on FormatException catch (e) {
    stderr.writeln('terradart-coverage: input is not valid JSON: ${e.message}');
    stderr.writeln(
      'Hint: pipe `terraform show -json` output, or point --dir at a '
      'Terraform directory.',
    );
    return null;
  }
  try {
    return parseShowJson(json);
  } on FormatException catch (e) {
    stderr.writeln('terradart-coverage: ${e.message}');
    return null;
  }
}

Future<void> main(List<String> argv) async {
  exitCode = await run(argv);
}
