import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Concrete [StackProvider] for `hashicorp/time` (used by `TimeSleep`).
@immutable
final class TimeProvider implements StackProvider {
  const TimeProvider();

  @override
  String get providerName => 'time';

  @override
  String get source => 'hashicorp/time';

  /// Pinned for `time_sleep` — independent of the Google provider pin.
  ///
  /// Maintained by hand: unlike the Google pin in `_provider_meta.dart`,
  /// no schema-bump automation tracks `hashicorp/time` releases. Bump
  /// deliberately when upstream ships a new major.
  @override
  String get versionConstraint => '~> 0.12';

  @override
  Map<String, Object?> get configArgs => const {};
}
