// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_auditmanager_control`.
const Set<String> _awsAuditmanagerControlSensitive = <String>{};

/// Typed helper for the `control_mapping_sources` block of
/// `aws_auditmanager_control` (derived from provider schema).
@immutable
final class AuditmanagerControlControlMappingSources {
  const AuditmanagerControlControlMappingSources({
    this.sourceDescription,
    this.sourceFrequency,
    this.sourceKeyword,
    required this.sourceName,
    required this.sourceSetUpOption,
    required this.sourceType,
    this.troubleshootingText,
  });

  final TfArg<String>? sourceDescription;

  final TfArg<AuditmanagerControlControlMappingSourcesSourceFrequency>?
  sourceFrequency;

  final TfArg<List<Object?>>? sourceKeyword;

  final TfArg<String> sourceName;

  final TfArg<AuditmanagerControlControlMappingSourcesSourceSetUpOption>
  sourceSetUpOption;

  final TfArg<AuditmanagerControlControlMappingSourcesSourceType> sourceType;

  final TfArg<String>? troubleshootingText;

  Map<String, Object?> encode() => {
    if (sourceDescription != null)
      'source_description': sourceDescription!.toTfJson(),
    if (sourceFrequency != null)
      'source_frequency': sourceFrequency!.toTfJson(),
    if (sourceKeyword != null) 'source_keyword': sourceKeyword!.toTfJson(),
    'source_name': sourceName.toTfJson(),
    'source_set_up_option': sourceSetUpOption.toTfJson(),
    'source_type': sourceType.toTfJson(),
    if (troubleshootingText != null)
      'troubleshooting_text': troubleshootingText!.toTfJson(),
  };
}

/// `source_frequency` — derived from the provider schema description.
enum AuditmanagerControlControlMappingSourcesSourceFrequency
    implements TerraformEnum {
  daily('DAILY'),
  weekly('WEEKLY'),
  monthly('MONTHLY');

  const AuditmanagerControlControlMappingSourcesSourceFrequency(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// `source_set_up_option` — derived from the provider schema description.
enum AuditmanagerControlControlMappingSourcesSourceSetUpOption
    implements TerraformEnum {
  systemControlsMapping('System_Controls_Mapping'),
  proceduralControlsMapping('Procedural_Controls_Mapping');

  const AuditmanagerControlControlMappingSourcesSourceSetUpOption(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// `source_type` — derived from the provider schema description.
enum AuditmanagerControlControlMappingSourcesSourceType
    implements TerraformEnum {
  awsCloudtrail('AWS_Cloudtrail'),
  awsConfig('AWS_Config'),
  awsSecurityHub('AWS_Security_Hub'),
  awsApiCall('AWS_API_Call'),
  manual('MANUAL'),
  commonControl('Common_Control'),
  coreControl('Core_Control');

  const AuditmanagerControlControlMappingSourcesSourceType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Factory wrapper for `aws_auditmanager_control`.
final class AwsAuditmanagerControl extends Resource {
  static const String tfType = 'aws_auditmanager_control';

  AwsAuditmanagerControl({
    required super.localName,
    TfArg<String>? actionPlanInstructions,
    TfArg<String>? actionPlanTitle,
    TfArg<String>? description,
    required TfArg<String> name,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    TfArg<String>? testingInformation,
    List<AuditmanagerControlControlMappingSources>? controlMappingSources,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (actionPlanInstructions != null)
             'action_plan_instructions': actionPlanInstructions,
           if (actionPlanTitle != null) 'action_plan_title': actionPlanTitle,
           if (description != null) 'description': description,
           'name': name,
           if (region != null) 'region': region,
           if (tags != null) 'tags': tags,
           if (testingInformation != null)
             'testing_information': testingInformation,
           if (controlMappingSources != null)
             'control_mapping_sources': TfArg.literal([
               for (final e in controlMappingSources) e.encode(),
             ]),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsAuditmanagerControlSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsAuditmanagerControl>`.
  RefTo<AwsAuditmanagerControl> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `tags_all` attribute.
  TfRef<Map<String, String>> get tagsAll =>
      TfRef.attribute<Map<String, String>>(this, 'tags_all');

  /// Reference to `type` attribute.
  TfRef<String> get type => TfRef.attribute<String>(this, 'type');
}
