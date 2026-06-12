import 'package:meta/meta.dart';

import 'stack.dart';

/// Concrete [StackProvider] for `hashicorp/time` (used by [TimeSleep]).
@immutable
final class TimeProvider implements StackProvider {
  const TimeProvider({this.providerAlias});

  @override
  final String? providerAlias;

  @override
  String get providerName => 'time';

  @override
  String get source => 'hashicorp/time';

  /// Pinned for `time_sleep` — independent of the Google provider pin.
  @override
  String get versionConstraint => '~> 0.12';

  @override
  Map<String, Object?> get configArgs => const {};

  @override
  Map<String, Object?> toTfJson() => configArgs;
}
