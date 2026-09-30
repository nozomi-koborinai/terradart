// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_organizations_policy`.
const Set<String> _awsOrganizationsPolicySensitive = <String>{};

/// Organizations Policy enum for `type`.
enum OrganizationsPolicyType implements TerraformEnum {
  serviceControlPolicy('SERVICE_CONTROL_POLICY'),
  resourceControlPolicy('RESOURCE_CONTROL_POLICY'),
  tagPolicy('TAG_POLICY'),
  backupPolicy('BACKUP_POLICY'),
  aiservicesOptOutPolicy('AISERVICES_OPT_OUT_POLICY'),
  chatbotPolicy('CHATBOT_POLICY'),
  declarativePolicyEc2('DECLARATIVE_POLICY_EC2'),
  securityhubPolicy('SECURITYHUB_POLICY'),
  inspectorPolicy('INSPECTOR_POLICY'),
  upgradeRolloutPolicy('UPGRADE_ROLLOUT_POLICY'),
  bedrockPolicy('BEDROCK_POLICY'),
  s3Policy('S3_POLICY'),
  networkSecurityDirectorPolicy('NETWORK_SECURITY_DIRECTOR_POLICY');

  const OrganizationsPolicyType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Factory wrapper for `aws_organizations_policy`.
final class AwsOrganizationsPolicy extends Resource {
  static const String tfType = 'aws_organizations_policy';

  AwsOrganizationsPolicy({
    required super.localName,
    required TfArg<String> content,
    TfArg<String>? description,
    required TfArg<String> name,
    TfArg<bool>? skipDestroy,
    TfArg<Map<String, String>>? tags,
    TfArg<OrganizationsPolicyType>? type,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'content': content,
           'description': ?description,
           'name': name,
           'skip_destroy': ?skipDestroy,
           'tags': ?tags,
           'type': ?type,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsOrganizationsPolicySensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsOrganizationsPolicy>`.
  RefTo<AwsOrganizationsPolicy> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `content` attribute.
  TfRef<String> get contentRef => TfRef.attribute<String>(this, 'content');

  /// Reference to `description` attribute.
  TfRef<String> get descriptionRef =>
      TfRef.attribute<String>(this, 'description');

  /// Reference to `skip_destroy` attribute.
  TfRef<bool> get skipDestroyRef => TfRef.attribute<bool>(this, 'skip_destroy');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tagsRef =>
      TfRef.attribute<Map<String, String>>(this, 'tags');

  /// Reference to `type` attribute.
  TfRef<String> get typeRef => TfRef.attribute<String>(this, 'type');
}
