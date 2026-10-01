// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../ec2/aws_subnet.dart' show AwsSubnet;
import '../ec2/aws_vpc.dart' show AwsVpc;
import '../iam/aws_iam_role.dart' show AwsIamRole;
import '../kms/aws_kms_key.dart' show AwsKmsKey;

/// Sensitive field paths for `aws_emr_studio`.
const Set<String> _awsEmrStudioSensitive = <String>{};

/// Emr Studio Auth enum for `auth_mode`.
enum EmrStudioAuthMode implements TerraformEnum {
  sso('SSO'),
  iam('IAM');

  const EmrStudioAuthMode(this.terraformValue);
  @override
  final String terraformValue;
}

/// Factory wrapper for `aws_emr_studio`.
final class AwsEmrStudio extends Resource {
  static const String tfType = 'aws_emr_studio';

  AwsEmrStudio({
    required super.localName,
    required TfArg<EmrStudioAuthMode> authMode,
    required TfArg<String> defaultS3Location,
    TfArg<String>? description,
    RefTo<AwsKmsKey>? encryptionKeyArn,
    required TfArg<String> engineSecurityGroupId,
    TfArg<String>? idpAuthUrl,
    TfArg<String>? idpRelayStateParameterName,
    required TfArg<String> name,
    TfArg<String>? region,
    required RefTo<AwsIamRole> serviceRole,
    required TfArg<List<RefTo<AwsSubnet>>> subnetIds,
    TfArg<Map<String, String>>? tags,
    TfArg<String>? userRole,
    required RefTo<AwsVpc> vpcId,
    required TfArg<String> workspaceSecurityGroupId,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'auth_mode': authMode,
           'default_s3_location': defaultS3Location,
           'description': ?description,
           'encryption_key_arn': ?encryptionKeyArn?.encodeAs('arn'),
           'engine_security_group_id': engineSecurityGroupId,
           'idp_auth_url': ?idpAuthUrl,
           'idp_relay_state_parameter_name': ?idpRelayStateParameterName,
           'name': name,
           'region': ?region,
           'service_role': serviceRole.encodeAs('arn'),
           'subnet_ids': subnetIds.encodeAs('id'),
           'tags': ?tags,
           'user_role': ?userRole,
           'vpc_id': vpcId.encodeAs('id'),
           'workspace_security_group_id': workspaceSecurityGroupId,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsEmrStudioSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsEmrStudio>`.
  RefTo<AwsEmrStudio> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `url` attribute.
  TfRef<String> get url => TfRef.attribute<String>(this, 'url');

  /// Reference to `auth_mode` attribute.
  TfRef<String> get authMode => TfRef.attribute<String>(this, 'auth_mode');

  /// Reference to `default_s3_location` attribute.
  TfRef<String> get defaultS3Location =>
      TfRef.attribute<String>(this, 'default_s3_location');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `encryption_key_arn` attribute.
  TfRef<String> get encryptionKeyArn =>
      TfRef.attribute<String>(this, 'encryption_key_arn');

  /// Reference to `engine_security_group_id` attribute.
  TfRef<String> get engineSecurityGroupId =>
      TfRef.attribute<String>(this, 'engine_security_group_id');

  /// Reference to `idp_auth_url` attribute.
  TfRef<String> get idpAuthUrl => TfRef.attribute<String>(this, 'idp_auth_url');

  /// Reference to `idp_relay_state_parameter_name` attribute.
  TfRef<String> get idpRelayStateParameterName =>
      TfRef.attribute<String>(this, 'idp_relay_state_parameter_name');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `service_role` attribute.
  TfRef<String> get serviceRole =>
      TfRef.attribute<String>(this, 'service_role');

  /// Reference to `subnet_ids` attribute.
  TfRef<List<String>> get subnetIds =>
      TfRef.attribute<List<String>>(this, 'subnet_ids');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');

  /// Reference to `user_role` attribute.
  TfRef<String> get userRole => TfRef.attribute<String>(this, 'user_role');

  /// Reference to `vpc_id` attribute.
  TfRef<String> get vpcId => TfRef.attribute<String>(this, 'vpc_id');

  /// Reference to `workspace_security_group_id` attribute.
  TfRef<String> get workspaceSecurityGroupId =>
      TfRef.attribute<String>(this, 'workspace_security_group_id');
}
