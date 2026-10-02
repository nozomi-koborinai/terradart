import 'package:meta/meta.dart';

/// `timeouts { ... }` on a resource or data source: how long Terraform
/// waits for each operation before giving up.
///
/// Provider-neutral, like `lifecycle`: each operation takes a [Duration],
/// which synth writes as the Go duration string Terraform reads (`'45m'`,
/// `'1h30m'`, `'1m30s'`). Terraform forbids references in this block — the
/// values must be literals — so there is no `TfArg` here.
///
/// ```dart
/// add(GoogleSqlDatabaseInstance(
///   'primary',
///   name: .literal('app-postgres'),
///   databaseVersion: .postgres16,
///   timeouts: const TfTimeouts(
///     create: Duration(minutes: 45),
///     update: Duration(minutes: 45),
///     delete: Duration(minutes: 45),
///   ),
/// ));
/// ```
///
/// Which operations a block may set is the provider's business: a resource
/// whose schema declares no `timeouts` — or none for the operation set here
/// — is rejected by `terraform validate`, not by synth.
@immutable
final class TfTimeouts {
  const TfTimeouts({this.create, this.read, this.update, this.delete});

  /// How long the create operation may take.
  final Duration? create;

  /// How long the read (refresh) operation may take.
  final Duration? read;

  /// How long the update operation may take.
  final Duration? update;

  /// How long the delete operation may take.
  final Duration? delete;

  /// True when no operation is set, so synth emits no block.
  bool get isEmpty =>
      create == null && read == null && update == null && delete == null;

  /// The `timeouts` block as Terraform JSON, or `null` when [isEmpty].
  Map<String, String>? toTfJson() => isEmpty
      ? null
      : {for (final (key, value) in _set) key: goDurationString(value)};

  /// The set operations whose [Duration] is negative, as `(operation,
  /// value)`; synth reports each one instead of leaving it for Terraform to
  /// reject at plan time.
  @internal
  Iterable<(String, String)> get invalidOperations => [
    for (final (key, value) in _set)
      if (value.isNegative) (key, goDurationString(value)),
  ];

  Iterable<(String, Duration)> get _set => [
    if (create case final v?) ('create', v),
    if (read case final v?) ('read', v),
    if (update case final v?) ('update', v),
    if (delete case final v?) ('delete', v),
  ];

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

/// [d] as the Go duration string Terraform reads: hours, minutes, seconds,
/// milliseconds and microseconds, each unit only when it is not zero
/// (`Duration(minutes: 90)` is `1h30m`, zero is `0s`).
String goDurationString(Duration d) {
  if (d.isNegative) return '-${goDurationString(-d)}';
  final parts = [
    (d.inHours, 'h'),
    (d.inMinutes % 60, 'm'),
    (d.inSeconds % 60, 's'),
    (d.inMilliseconds % 1000, 'ms'),
    (d.inMicroseconds % 1000, 'us'),
  ];
  final text = [
    for (final (n, unit) in parts)
      if (n != 0) '$n$unit',
  ].join();
  return text.isEmpty ? '0s' : text;
}

/// The [Duration] a Go duration string (`'30m'`, `'1h30m'`, `'1.5s'`) is,
/// or `null` when [text] is not one, or is finer than a microsecond.
Duration? parseGoDuration(String text) {
  if (!_goDuration.hasMatch(text)) return null;
  var nanos = 0;
  for (final m in _goDurationPart.allMatches(text)) {
    final unit = _unitNanos[m[3]]!;
    final fraction = m[2] ?? '';
    final scale = _pow10(fraction.length);
    final part = (fraction.isEmpty ? 0 : int.parse(fraction)) * unit;
    if (part % scale != 0) return null;
    nanos += int.parse(m[1]!) * unit + part ~/ scale;
  }
  if (nanos % 1000 != 0) return null;
  return Duration(microseconds: nanos ~/ 1000);
}

int _pow10(int n) {
  var p = 1;
  for (var i = 0; i < n; i++) {
    p *= 10;
  }
  return p;
}

final RegExp _goDuration = RegExp(r'^(\d+(\.\d+)?(ns|us|µs|μs|ms|s|m|h))+$');
final RegExp _goDurationPart = RegExp(
  r'(\d+)(?:\.(\d+))?(ns|us|µs|μs|ms|s|m|h)',
);
const Map<String, int> _unitNanos = {
  'ns': 1,
  'us': 1000,
  'µs': 1000,
  'μs': 1000,
  'ms': 1000000,
  's': 1000000000,
  'm': 60000000000,
  'h': 3600000000000,
};
