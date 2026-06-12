import 'resource.dart';
import 'tf_arg.dart';

/// Hand-written wrapper for `time_sleep` (`hashicorp/time`).
///
/// Waits after create (and optionally before destroy) — commonly inserted
/// after [GoogleProjectService] enablement to absorb GCP API propagation lag.
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
}
