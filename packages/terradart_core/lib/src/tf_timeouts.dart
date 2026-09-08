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
///   localName: 'primary',
///   name: TfArg.literal('app-postgres'),
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
  }) =>
      TfTimeouts(
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
  ///
  /// Throws [ArgumentError] for a value that is not a Go duration string
  /// (`30m`, `1h30m`, `1500ms`) — Terraform would reject it at plan time,
  /// far from the Dart that wrote it.
  Map<String, String>? toTfJson() {
    if (isEmpty) return null;
    final out = <String, String>{};
    void put(String key, String? value) {
      if (value == null) return;
      if (!_duration.hasMatch(value)) {
        throw ArgumentError.value(
          value,
          key,
          'is not a Terraform duration string (e.g. "30m", "1h30m", "90s")',
        );
      }
      out[key] = value;
    }

    put('create', create);
    put('read', read);
    put('update', update);
    put('delete', delete);
    return out;
  }

  /// One or more `<number><unit>` pairs, the units Go's `ParseDuration`
  /// accepts. A leading sign is not allowed — a negative timeout is a typo.
  static final RegExp _duration = RegExp(
    r'^(\d+(\.\d+)?(ns|us|µs|μs|ms|s|m|h))+$',
  );

  static String? _seconds(Duration? d, String name) {
    if (d == null) return null;
    if (d.isNegative || d.inSeconds == 0) {
      throw ArgumentError.value(
        d,
        name,
        'must be at least one second',
      );
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
