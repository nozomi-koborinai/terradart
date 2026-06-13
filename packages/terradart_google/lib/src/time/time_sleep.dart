import 'package:terradart_core/terradart_core.dart';

/// Hand-written wrapper for `time_sleep` (`hashicorp/time`).
///
/// Waits after create (and optionally before destroy) — commonly inserted
/// after `google_project_service` enablement to absorb GCP API propagation
/// lag (`Apis.enable` wires this automatically).
///
/// Durations are Terraform duration strings; use [TfArg.duration] to convert
/// from a Dart [Duration]:
///
/// ```dart
/// TimeSleep(
///   localName: 'wait',
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
  TimeSleep({
    required super.localName,
    required TfArg<String> createDuration,
    TfArg<String>? destroyDuration,
    TfArg<Map<String, String>>? triggers,
    super.dependsOn,
    super.lifecycle,
  }) : super(
          terraformType: 'time_sleep',
          argMap: {
            'create_duration': createDuration,
            if (destroyDuration != null) 'destroy_duration': destroyDuration,
            if (triggers != null) 'triggers': triggers,
          },
        );

  @override
  Set<String> get sensitiveFields => const {};

  /// Reference to `id` (RFC3339 timestamp of the completed wait).
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}
