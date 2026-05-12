/// Phase 4.1 introduces a code-tagged error vocabulary for `terradart wrap`
/// and the YAML override loader. Codes are stable for CI grep stability.
///
/// - E1xx: yaml validation
/// - E2xx: data source axis violation
/// - E3xx: `--check` mode mismatch
/// - E4xx: file overwrite refusal
/// - E5xx: atomic write rollback / IO
enum LoaderErrorCode {
  /// E101: top-level `kind` is neither `resource` nor `data_source`.
  unknownKind('E101'),

  /// E102: `outputDir` is missing or empty.
  outputDirRequired('E102'),

  /// E103: axis value is malformed. Phase 4.1 reuses this code for shape
  /// failures across `outputDir` (slash, `..`, non-string), `schemaStubBodyMode`
  /// (unknown enum value, non-string), and `fileLeadingComment` (non-string).
  /// A future split (e.g. dedicated `axisValueInvalid` E105) is anticipated
  /// once a second multi-axis category emerges; until then E103 is the canonical
  /// "axis value cannot be parsed" code.
  outputDirInvalid('E103'),

  /// E104: data source `outputDir` does not match the resource sibling rule.
  outputDirMismatchForDataSource('E104'),

  /// E201: a wrapper axis is set on a data source where it is not allowed.
  axisNotAllowedForDataSource('E201'),

  /// E301: `terradart wrap --check` found a file whose content differs from
  /// the freshly emitted output.
  checkMismatch('E301'),

  /// E401: refusal to overwrite a file that is not a TerraDart-generated
  /// artifact (missing or wrong header marker).
  refuseOverwriteNonGenerated('E401'),

  /// E402: `terradart wrap-init` refused to overwrite an existing target file
  /// because `--force` was not provided.
  wrapInitTargetExists('E402'),

  /// E501: atomic write failed and the rollback path was taken.
  atomicWriteFailed('E501'),
  ;

  const LoaderErrorCode(this.tag);

  /// The stable, grep-friendly tag (e.g. `E101`) emitted in formatted output.
  final String tag;
}

/// A single validation failure produced by the YAML override loader or the
/// `terradart wrap` pipeline.
///
/// Errors are accumulated into a [LoaderErrorReport] rather than thrown
/// individually, so users see all problems in one run.
class LoaderError {
  /// Creates a loader error.
  ///
  /// [filePath], [line], and [column] locate the offending YAML node in the
  /// source. [hint] is an optional one-line suggestion shown after the
  /// location (e.g. how to fix the value).
  LoaderError({
    required this.code,
    required this.message,
    required this.filePath,
    required this.line,
    required this.column,
    this.hint,
  });

  /// The stable error code (see [LoaderErrorCode]).
  final LoaderErrorCode code;

  /// A human-readable description of the failure.
  final String message;

  /// Path to the YAML override file that produced the error.
  final String filePath;

  /// 1-based line number of the offending YAML node.
  final int line;

  /// 1-based column number of the offending YAML node.
  final int column;

  /// Optional one-line suggestion shown on a `Hint:` line.
  final String? hint;

  /// Renders the error as a multi-line string. Format:
  ///
  /// ```
  /// [E101] <message>
  ///   at <filePath>:<line>:<column>
  ///   Hint: <hint>          # only present when hint != null
  /// ```
  String format() {
    final buf = StringBuffer()
      ..write('[${code.tag}] ')
      ..write(message)
      ..write('\n  at ')
      ..write(filePath)
      ..write(':')
      ..write(line)
      ..write(':')
      ..write(column);
    if (hint != null) {
      buf.write('\n  Hint: ');
      buf.write(hint);
    }
    return buf.toString();
  }
}

/// Aggregator for a batch of [LoaderError]s produced during one run of
/// `terradart wrap` or the YAML override loader.
///
/// The report is itself an [Exception] so callers can `throw` it once
/// validation finishes (see [fatal]). Producing one report per run lets
/// users fix all errors at once instead of playing whack-a-mole.
class LoaderErrorReport implements Exception {
  /// Creates a report wrapping [errors].
  LoaderErrorReport({required this.errors});

  /// Collected errors in the order they were appended.
  final List<LoaderError> errors;

  /// True when no errors were collected.
  bool get isEmpty => errors.isEmpty;

  /// True when at least one error was collected.
  bool get isNotEmpty => errors.isNotEmpty;

  /// Renders the report as a multi-line string with a header summarising
  /// the count, each error separated by a blank line, and a trailing
  /// instruction to fix and re-run.
  String format() {
    final buf = StringBuffer()
      ..write(
        'terradart wrap: ${errors.length} yaml override(s) failed validation:\n\n',
      )
      ..writeAll(errors.map((e) => e.format()), '\n\n')
      ..write('\n\nFix all errors above and re-run `terradart wrap`.');
    return buf.toString();
  }

  /// Throws `this` if there are errors. No-op when [isEmpty].
  void fatal() {
    if (isNotEmpty) {
      throw this;
    }
  }

  @override
  String toString() => format();
}
