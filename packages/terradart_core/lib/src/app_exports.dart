import 'package:meta/meta.dart';

import 'dart_source.dart';

/// Where synth writes the Dart file application code imports: the Stack's
/// constants, as the `static const` members of `<name>Constants`.
///
/// ```dart
/// final class OrdersStack extends Stack {
///   OrdersStack()
///     : super(
///         providers: [...],
///         appExports: AppExports('../app_config/lib/orders.g.dart', name: 'Orders'),
///       ) { ... }
/// }
/// ```
///
/// [path] is resolved against the working directory synth runs in — the
/// infra package root for `dart run bin/infra.dart`. The file imports
/// nothing, so it can live in a small package of its own that both the
/// infra package and the app depend on, keeping the provider packages out
/// of the app's dependencies.
@immutable
final class AppExports {
  /// Throws [ArgumentError] when [path] is empty or does not end in `.dart`,
  /// or [name] is not a Dart type name.
  AppExports(this.path, {this.name}) {
    if (!path.endsWith('.dart')) {
      throw ArgumentError.value(path, 'path', 'must name a .dart file');
    }
    final n = name;
    if (n != null && (!isDartIdentifier(n) || n.startsWith('_'))) {
      throw ArgumentError.value(
        n,
        'name',
        'must be a public Dart identifier, e.g. "Orders"',
      );
    }
  }

  /// The generated file, relative to the directory synth runs in.
  final String path;

  /// Prefix of the generated class name; defaults to the Stack's class
  /// name (`OrdersStack` → `OrdersStackConstants`).
  final String? name;
}
