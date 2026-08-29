/// Thrown by [TfJsonEncoder.encodeArgMapWithSensitive] when a
/// `TfArgLiteral` is assigned to a sensitive field — Terraform would
/// otherwise reject the resulting apply because v0.x masking left the
/// emitted value as empty string (e.g. `Missing user password`,
/// `Field [payload] is required`).
///
/// Recovery: use [TfArg.variable] for runtime values (the canonical
/// pattern for sensitive inputs supplied at `terraform apply -var`
/// time) and declare the matching variable with `Stack.addVariable`, or
/// — if the resource exposes a write-only variant of the field
/// (`<field>_wo`) — assign the literal there instead.
class SensitiveLiteralError extends StateError {
  SensitiveLiteralError({
    required this.resourceAddress,
    required this.fieldPath,
  }) : super(_buildMessage(resourceAddress, fieldPath));

  /// Fully-qualified Terraform address of the resource that holds the
  /// offending literal, e.g. `google_sql_user.coffee_user`.
  final String resourceAddress;

  /// Dotted path of the offending field within the resource's argMap,
  /// e.g. `password` (top-level) or `customer_encryption.encryption_key`
  /// (nested block).
  final String fieldPath;

  static String _buildMessage(String resourceAddress, String fieldPath) =>
      'Sensitive field "$fieldPath" on $resourceAddress was assigned a '
      'TfArgLiteral. v1.0 no longer silently masks the value (masking '
      'caused apply-time HTTP 400 because providers reject empty '
      'sensitive fields).\n\n'
      'Recommended fix:\n'
      '  $fieldPath: TfArg.variable(\'<your-var-name>\'),\n'
      'then declare it on the Stack:\n'
      '  addVariable(\'<your-var-name>\', '
      'const TfVariable(type: \'string\', sensitive: true));\n'
      'and pass it at `terraform apply -var=...` time.\n\n'
      'Alternative: if the resource exposes a write-only variant '
      '(`<field>_wo`), assign the literal there instead — the `_wo` '
      'variants are write-once and exempt from this check.';
}
