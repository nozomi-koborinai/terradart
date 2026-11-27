import 'package:terradart_core/terradart_core.dart';

/// Hand-written wrapper for `time_sleep` (`hashicorp/time`).
///
/// Waits after create, before destroy, or both — commonly inserted to absorb
/// eventual consistency, such as GCP API enablement propagation
/// (`terradart_google`'s `enableApis` wires this automatically) or AWS IAM
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
  /// [createDuration] is the wait after create (for example `'60s'`), and
  /// [destroyDuration] the wait before destroy. Set at least one of them.
  TimeSleep(
    super.localName, {
    TfArg<String>? createDuration,
    TfArg<String>? destroyDuration,
    TfArg<Map<String, String>>? triggers,
    super.dependsOn,
    super.lifecycle,
    super.provider,
  }) : super(
         terraformType: tfType,
         argMap: {
           'create_duration': ?createDuration,
           'destroy_duration': ?destroyDuration,
           'triggers': ?triggers,
         },
       ) {
    if (createDuration == null && destroyDuration == null) {
      throw ArgumentError(
        'TimeSleep needs createDuration, destroyDuration, or both',
      );
    }
  }

  static const String tfType = 'time_sleep';

  @override
  Set<String> get sensitiveFields => const {};

  /// A reference to this resource, for arguments typed `RefTo<TimeSleep>`.
  RefTo<TimeSleep> get ref => RefTo.of(this);

  /// Reference to `id` (RFC3339 timestamp of the completed wait).
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `create_duration` attribute.
  TfRef<String> get createDuration =>
      TfRef.attribute<String>(this, 'create_duration');

  /// Reference to `destroy_duration` attribute.
  TfRef<String> get destroyDuration =>
      TfRef.attribute<String>(this, 'destroy_duration');

  /// Reference to `triggers` attribute.
  TfRef<Map<String, String>> get triggers =>
      TfRef.attribute<Map<String, String>>(this, 'triggers');
}
