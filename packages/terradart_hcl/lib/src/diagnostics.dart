import 'source.dart';

/// One parse error with the range it points at.
final class HclDiagnostic {
  const HclDiagnostic(this.message, this.range, {this.fileName});

  final String message;
  final SourceRange range;
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
  HclParseException(this.diagnostics)
    : assert(diagnostics.isNotEmpty, 'at least one diagnostic');

  final List<HclDiagnostic> diagnostics;

  HclDiagnostic get first => diagnostics.first;

  @override
  String toString() =>
      'HclParseException: ${diagnostics.map((d) => d.toString()).join('; ')}';
}
