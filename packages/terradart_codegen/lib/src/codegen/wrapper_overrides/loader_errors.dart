enum LoaderErrorCode {
  unknownKind('E101'),
  outputDirRequired('E102'),
  outputDirInvalid('E103'),
  outputDirMismatchForDataSource('E104'),
  axisNotAllowedForDataSource('E201'),
  checkMismatch('E301'),
  refuseOverwriteNonGenerated('E401'),
  wrapInitTargetExists('E402'),
  wrapPromoteRequiresExistingYaml('E403'),
  wrapPromoteRequiresMm('E404'),
  atomicWriteFailed('E501');

  const LoaderErrorCode(this.tag);

  final String tag;
}

class LoaderError {
  LoaderError({
    required this.code,
    required this.message,
    required this.filePath,
    required this.line,
    required this.column,
    this.hint,
  });

  final LoaderErrorCode code;

  final String message;

  final String filePath;

  final int line;

  final int column;

  final String? hint;

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

class LoaderErrorReport implements Exception {
  LoaderErrorReport({required this.errors});

  final List<LoaderError> errors;

  bool get isEmpty => errors.isEmpty;

  bool get isNotEmpty => errors.isNotEmpty;

  String format() {
    final buf = StringBuffer()
      ..write(
        'terradart wrap: ${errors.length} yaml override(s) failed validation:\n\n',
      )
      ..writeAll(errors.map((e) => e.format()), '\n\n')
      ..write('\n\nFix all errors above and re-run `terradart wrap`.');
    return buf.toString();
  }

  void fatal() {
    if (isNotEmpty) {
      throw this;
    }
  }

  @override
  String toString() => format();
}
