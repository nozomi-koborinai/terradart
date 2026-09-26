// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_auditmanager_control`.
const Set<String> _awsAuditmanagerControlSensitive = <String>{};

/// Factory wrapper for `aws_auditmanager_control`.
final class DataAwsAuditmanagerControl extends Data {
  static const String tfType = 'aws_auditmanager_control';

  DataAwsAuditmanagerControl({
    required super.localName,
    required TfArg<String> name,
    TfArg<String>? region,
    required TfArg<String> type,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           if (region != null) 'region': region,
           'type': type,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsAuditmanagerControlSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `action_plan_instructions` attribute.
  TfRef<String> get actionPlanInstructions =>
      TfRef.attribute<String>(this, 'action_plan_instructions');

  /// Reference to `action_plan_title` attribute.
  TfRef<String> get actionPlanTitle =>
      TfRef.attribute<String>(this, 'action_plan_title');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `control_mapping_sources` attribute.
  TfRef<List<Map<String, Object?>>> get controlMappingSources =>
      TfRef.attribute<List<Map<String, Object?>>>(
        this,
        'control_mapping_sources',
      );

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');

  /// Reference to `testing_information` attribute.
  TfRef<String> get testingInformation =>
      TfRef.attribute<String>(this, 'testing_information');
}
