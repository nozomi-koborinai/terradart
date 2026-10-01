import 'package:meta/meta.dart';

/// `timeouts { ... }` on a resource or data source: how long Terraform
/// waits for each operation before giving up.
///
/// Provider-neutral, like `lifecycle`: every value is a Go duration string
/// written the way Terraform writes it (`'30m'`, `'1h30m'`, `'90s'`), and
/// synth copies it verbatim. Terraform forbids references in this block —
/// the values must be literals — so there is no `TfArg` here.
///
/// ```dart
/// add(GoogleSqlDatabaseInstance(
///   'primary',
///   name: .literal('app-postgres'),
///   databaseVersion: .literal(.postgres16),
///   timeouts: const TfTimeouts(create: '45m', update: '45m', delete: '45m'),
/// ));
/// ```
///
/// Which operations a block may set is the provider's business: a resource
/// whose schema declares no `timeouts` — or none for the operation set here
/// — is rejected by `terraform validate`, not by synth.
@immutable
final class TfTimeouts {
  const TfTimeouts({this.create, this.read, this.update, this.delete});

  /// Build one from [Duration]s, rendered as whole seconds (`'1800s'`).
  factory TfTimeouts.of({
    Duration? create,
    Duration? read,
    Duration? update,
    Duration? delete,
  }) => TfTimeouts(
    create: _seconds(create, 'create'),
    read: _seconds(read, 'read'),
    update: _seconds(update, 'update'),
    delete: _seconds(delete, 'delete'),
  );

  /// `create = "30m"` — the create operation's timeout.
  final String? create;

  /// `read = "5m"` — the read (refresh) operation's timeout.
  final String? read;

  /// `update = "30m"` — the update operation's timeout.
  final String? update;

  /// `delete = "30m"` — the delete operation's timeout.
  final String? delete;

  /// True when no operation is set, so synth emits no block.
  bool get isEmpty =>
      create == null && read == null && update == null && delete == null;

  /// The `timeouts` block as Terraform JSON, or `null` when [isEmpty].
  Map<String, String>? toTfJson() => isEmpty ? null : Map.fromEntries(_set);

  /// The set operations whose value is not a Go duration string (`30m`,
  /// `1h30m`, `1500ms`), as `(operation, value)`; synth reports each one
  /// instead of leaving it for Terraform to reject at plan time.
  @internal
  Iterable<(String, String)> get invalidOperations => [
    for (final MapEntry(:key, :value) in _set)
      if (!isDuration(value)) (key, value),
  ];

  Iterable<MapEntry<String, String>> get _set => [
    if (create case final v?) MapEntry('create', v),
    if (read case final v?) MapEntry('read', v),
    if (update case final v?) MapEntry('update', v),
    if (delete case final v?) MapEntry('delete', v),
  ];

  /// Whether [value] is a timeout Terraform accepts: one or more
  /// `<number><unit>` pairs, the units Go's `ParseDuration` accepts
  /// (`30m`, `1h30m`, `1500ms`). A leading sign is not allowed — a negative
  /// timeout is a typo.
  static bool isDuration(String value) => _duration.hasMatch(value);

  static final RegExp _duration = RegExp(
    r'^(\d+(\.\d+)?(ns|us|µs|μs|ms|s|m|h))+$',
  );

  static String? _seconds(Duration? d, String name) {
    if (d == null) return null;
    if (d.isNegative || d.inSeconds == 0) {
      throw ArgumentError.value(d, name, 'must be at least one second');
    }
    return '${d.inSeconds}s';
  }

  @override
  bool operator ==(Object other) =>
      other is TfTimeouts &&
      other.create == create &&
      other.read == read &&
      other.update == update &&
      other.delete == delete;

  @override
  int get hashCode => Object.hash(create, read, update, delete);

  @override
  String toString() => 'TfTimeouts(${toTfJson() ?? {}})';
}
