import 'package:terradart_core/terradart_core.dart';

/// Hand-written wrapper for `time_sleep` (`hashicorp/time`).
///
/// Waits after create (and optionally before destroy) — commonly inserted
/// to absorb eventual consistency, such as GCP API enablement propagation
/// (`terradart_google`'s `Apis.enable` wires this automatically) or AWS IAM
/// role propagation.
///
/// Durations are Terraform duration strings; use [TfArg.duration] to convert
/// from a Dart [Duration]:
///
/// ```dart
/// TimeSleep(
///   'wait',
///   createDuration: TfArg.duration(const Duration(seconds: 60)),
/// );
/// ```
///
/// [triggers] re-creates the sleep (and so re-runs the wait) whenever any
/// map value changes; use upstream attribute interpolations
/// (`ref.interpolation`) as values to key the wait to those resources.
///
/// Requires `TimeProvider` in `Stack.providers` — synth fails fast when the
/// `time` provider is missing.
final class TimeSleep extends Resource {
  /// Creates a `time_sleep` resource addressed as `time_sleep.<localName>`.
  ///
  /// [createDuration] is the wait after create (for example `'60s'`);
  /// [destroyDuration], when set, is the wait before destroy.
  TimeSleep(
    super.localName, {
    required TfArg<String> createDuration,
    TfArg<String>? destroyDuration,
    TfArg<Map<String, String>>? triggers,
    super.dependsOn,
    super.lifecycle,
  }) : super(
         terraformType: 'time_sleep',
         argMap: {
           'create_duration': createDuration,
           'destroy_duration': ?destroyDuration,
           'triggers': ?triggers,
         },
       );

  @override
  Set<String> get sensitiveFields => const {};

  /// Reference to `id` (RFC3339 timestamp of the completed wait).
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}
