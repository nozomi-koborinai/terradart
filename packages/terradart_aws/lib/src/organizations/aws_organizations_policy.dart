// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_organizations_policy`.
const Set<String> _awsOrganizationsPolicySensitive = <String>{};

/// Organizations Policy enum for `type`.
extension type const OrganizationsPolicyType._(TfArg<String> _)
    implements TfArg<String> {
  OrganizationsPolicyType.variable(String name) : this._(TfArg.variable(name));
  OrganizationsPolicyType.expression(String template)
    : this._(TfArg.expression(template));
  const OrganizationsPolicyType.arg(TfArg<String> arg) : this._(arg);

  static const serviceControlPolicy = OrganizationsPolicyType._(
    TfArgLiteral('SERVICE_CONTROL_POLICY'),
  );
  static const resourceControlPolicy = OrganizationsPolicyType._(
    TfArgLiteral('RESOURCE_CONTROL_POLICY'),
  );
  static const tagPolicy = OrganizationsPolicyType._(
    TfArgLiteral('TAG_POLICY'),
  );
  static const backupPolicy = OrganizationsPolicyType._(
    TfArgLiteral('BACKUP_POLICY'),
  );
  static const aiservicesOptOutPolicy = OrganizationsPolicyType._(
    TfArgLiteral('AISERVICES_OPT_OUT_POLICY'),
  );
  static const chatbotPolicy = OrganizationsPolicyType._(
    TfArgLiteral('CHATBOT_POLICY'),
  );
  static const declarativePolicyEc2 = OrganizationsPolicyType._(
    TfArgLiteral('DECLARATIVE_POLICY_EC2'),
  );
  static const securityhubPolicy = OrganizationsPolicyType._(
    TfArgLiteral('SECURITYHUB_POLICY'),
  );
  static const inspectorPolicy = OrganizationsPolicyType._(
    TfArgLiteral('INSPECTOR_POLICY'),
  );
  static const upgradeRolloutPolicy = OrganizationsPolicyType._(
    TfArgLiteral('UPGRADE_ROLLOUT_POLICY'),
  );
  static const bedrockPolicy = OrganizationsPolicyType._(
    TfArgLiteral('BEDROCK_POLICY'),
  );
  static const s3Policy = OrganizationsPolicyType._(TfArgLiteral('S3_POLICY'));
  static const networkSecurityDirectorPolicy = OrganizationsPolicyType._(
    TfArgLiteral('NETWORK_SECURITY_DIRECTOR_POLICY'),
  );

  static const List<OrganizationsPolicyType> values = [
    serviceControlPolicy,
    resourceControlPolicy,
    tagPolicy,
    backupPolicy,
    aiservicesOptOutPolicy,
    chatbotPolicy,
    declarativePolicyEc2,
    securityhubPolicy,
    inspectorPolicy,
    upgradeRolloutPolicy,
    bedrockPolicy,
    s3Policy,
    networkSecurityDirectorPolicy,
  ];
}

/// Factory wrapper for `aws_organizations_policy`.
final class AwsOrganizationsPolicy extends Resource {
  static const String tfType = 'aws_organizations_policy';

  AwsOrganizationsPolicy(
    super.localName, {
    required TfArg<String> content,
    TfArg<String>? description,
    required TfArg<String> name,
    TfArg<bool>? skipDestroy,
    TfArg<Map<String, String>>? tags,
    OrganizationsPolicyType? type,
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
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `content` attribute.
  TfRef<String> get content => TfRef.attribute<String>(this, 'content');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `skip_destroy` attribute.
  TfRef<bool> get skipDestroy => TfRef.attribute<bool>(this, 'skip_destroy');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');

  /// Reference to `type` attribute.
  TfRef<String> get type => TfRef.attribute<String>(this, 'type');
}
