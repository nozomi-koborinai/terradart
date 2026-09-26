// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_arcregionswitch_plan`.
const Set<String> _awsArcregionswitchPlanSensitive = <String>{};

/// Factory wrapper for `aws_arcregionswitch_plan`.
final class DataAwsArcregionswitchPlan extends Data {
  static const String tfType = 'aws_arcregionswitch_plan';

  DataAwsArcregionswitchPlan({
    required super.localName,
    required TfArg<String> arn,
    TfArg<String>? region,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {'arn': arn, if (region != null) 'region': region},
       );

  @override
  Set<String> get sensitiveFields => _awsArcregionswitchPlanSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `execution_role` attribute.
  TfRef<String> get executionRole =>
      TfRef.attribute<String>(this, 'execution_role');

  /// Reference to `owner` attribute.
  TfRef<String> get owner => TfRef.attribute<String>(this, 'owner');

  /// Reference to `primary_region` attribute.
  TfRef<String> get primaryRegion =>
      TfRef.attribute<String>(this, 'primary_region');

  /// Reference to `recovery_approach` attribute.
  TfRef<String> get recoveryApproach =>
      TfRef.attribute<String>(this, 'recovery_approach');

  /// Reference to `recovery_time_objective_minutes` attribute.
  TfRef<num> get recoveryTimeObjectiveMinutes =>
      TfRef.attribute<num>(this, 'recovery_time_objective_minutes');

  /// Reference to `regions` attribute.
  TfRef<List<String>> get regions =>
      TfRef.attribute<List<String>>(this, 'regions');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');

  /// Reference to `updated_at` attribute.
  TfRef<String> get updatedAt => TfRef.attribute<String>(this, 'updated_at');

  /// Reference to `version` attribute.
  TfRef<String> get version => TfRef.attribute<String>(this, 'version');
}
