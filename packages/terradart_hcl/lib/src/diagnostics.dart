import 'source.dart';

/// One parse error with the range it points at.
final class HclDiagnostic {
  /// Creates a diagnostic reporting [message] at [range].
  const HclDiagnostic(this.message, this.range, {this.fileName});

  /// What is wrong, as one sentence.
  final String message;

  /// The source span the error points at.
  final SourceRange range;

  /// The file the error is in, or `null` when parsing a bare string.
  final String? fileName;

  @override
  String toString() {
    final where = fileName == null ? '' : '$fileName:';
    return '$where${range.start}: $message';
  }
}

/// Thrown by the parser / decoder when the input is not valid HCL or
/// Terraform JSON. Carries every diagnostic collected before giving up.
final class HclParseException implements Exception {
  /// Creates the exception from a non-empty list of [diagnostics].
  HclParseException(this.diagnostics)
    : assert(diagnostics.isNotEmpty, 'at least one diagnostic');

  /// Every error found, in source order.
  final List<HclDiagnostic> diagnostics;

  /// The first error found.
  HclDiagnostic get first => diagnostics.first;

  @override
  String toString() =>
      'HclParseException: ${diagnostics.map((d) => d.toString()).join('; ')}';
}
