// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_ssm_maintenance_window`.
const Set<String> _awsSsmMaintenanceWindowSensitive = <String>{};

/// Factory wrapper for `aws_ssm_maintenance_window`.
final class AwsSsmMaintenanceWindow extends Resource {
  static const String tfType = 'aws_ssm_maintenance_window';

  AwsSsmMaintenanceWindow(
    super.localName, {
    TfArg<bool>? allowUnassociatedTargets,
    required TfArg<num> cutoff,
    TfArg<String>? description,
    required TfArg<num> duration,
    TfArg<bool>? enabled,
    TfArg<String>? endDate,
    required TfArg<String> name,
    TfArg<String>? region,
    required TfArg<String> schedule,
    TfArg<num>? scheduleOffset,
    TfArg<String>? scheduleTimezone,
    TfArg<String>? startDate,
    TfArg<Map<String, String>>? tags,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'allow_unassociated_targets': ?allowUnassociatedTargets,
           'cutoff': cutoff,
           'description': ?description,
           'duration': duration,
           'enabled': ?enabled,
           'end_date': ?endDate,
           'name': name,
           'region': ?region,
           'schedule': schedule,
           'schedule_offset': ?scheduleOffset,
           'schedule_timezone': ?scheduleTimezone,
           'start_date': ?startDate,
           'tags': ?tags,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsSsmMaintenanceWindowSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsSsmMaintenanceWindow>`.
  RefTo<AwsSsmMaintenanceWindow> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `allow_unassociated_targets` attribute.
  TfRef<bool> get allowUnassociatedTargets =>
      TfRef.attribute<bool>(this, 'allow_unassociated_targets');

  /// Reference to `cutoff` attribute.
  TfRef<num> get cutoff => TfRef.attribute<num>(this, 'cutoff');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `duration` attribute.
  TfRef<num> get duration => TfRef.attribute<num>(this, 'duration');

  /// Reference to `enabled` attribute.
  TfRef<bool> get enabled => TfRef.attribute<bool>(this, 'enabled');

  /// Reference to `end_date` attribute.
  TfRef<String> get endDate => TfRef.attribute<String>(this, 'end_date');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `schedule` attribute.
  TfRef<String> get schedule => TfRef.attribute<String>(this, 'schedule');

  /// Reference to `schedule_offset` attribute.
  TfRef<num> get scheduleOffset =>
      TfRef.attribute<num>(this, 'schedule_offset');

  /// Reference to `schedule_timezone` attribute.
  TfRef<String> get scheduleTimezone =>
      TfRef.attribute<String>(this, 'schedule_timezone');

  /// Reference to `start_date` attribute.
  TfRef<String> get startDate => TfRef.attribute<String>(this, 'start_date');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}
