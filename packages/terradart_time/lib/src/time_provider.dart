import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// The `hashicorp/time` version constraint [TimeProvider] emits.
///
/// Maintained by hand: no schema-bump automation tracks `hashicorp/time`
/// releases. Bump deliberately when upstream ships a new major.
const String kTimeProviderVersionConstraint = '~> 0.12';

/// Concrete [StackProvider] for `hashicorp/time` (used by `TimeSleep`).
@immutable
final class TimeProvider implements StackProvider {
  const TimeProvider({this.alias});

  /// Provider alias (`provider "time" { alias = "eu" }`), or `null` for
  /// the default configuration. Select it on a resource with
  /// `provider: 'time.<alias>'`.
  @override
  final String? alias;

  @override
  String get providerName => 'time';

  @override
  String get source => 'hashicorp/time';

  @override
  String get versionConstraint => kTimeProviderVersionConstraint;

  @override
  Map<String, Object?> get configArgs => const {};
}
