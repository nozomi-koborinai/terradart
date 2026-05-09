import 'resource.dart';

/// Thrown by `Stack.add` / `Stack.addData` when an entry with the same
/// `(kind, terraformType, localName)` triple is registered twice.
final class DuplicateResourceError extends Error {
  DuplicateResourceError({
    required this.kind,
    required this.terraformType,
    required this.localName,
  });

  final ResourceKind kind;
  final String terraformType;
  final String localName;

  @override
  String toString() =>
      'DuplicateResourceError: ${kind.name} "$terraformType" with '
      'localName "$localName" already registered in this Stack.';
}
