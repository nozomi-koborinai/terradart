// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_ssm_maintenance_window`.
const Set<String> _awsSsmMaintenanceWindowSensitive = <String>{};

/// Factory wrapper for `aws_ssm_maintenance_window`.
final class AwsSsmMaintenanceWindow extends Resource {
  static const String tfType = 'aws_ssm_maintenance_window';

  AwsSsmMaintenanceWindow({
    required super.localName,
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
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}
