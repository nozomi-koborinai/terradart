// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_emr_studio`.
const Set<String> _awsEmrStudioSensitive = <String>{};

/// Factory wrapper for `aws_emr_studio`.
final class AwsEmrStudio extends Resource {
  static const String tfType = 'aws_emr_studio';

  AwsEmrStudio({
    required super.localName,
    required TfArg<String> authMode,
    required TfArg<String> defaultS3Location,
    TfArg<String>? description,
    TfArg<String>? encryptionKeyArn,
    required TfArg<String> engineSecurityGroupId,
    TfArg<String>? idpAuthUrl,
    TfArg<String>? idpRelayStateParameterName,
    required TfArg<String> name,
    TfArg<String>? region,
    required TfArg<String> serviceRole,
    required TfArg<List<String>> subnetIds,
    TfArg<Map<String, String>>? tags,
    TfArg<String>? userRole,
    required TfArg<String> vpcId,
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
           if (description != null) 'description': description,
           if (encryptionKeyArn != null) 'encryption_key_arn': encryptionKeyArn,
           'engine_security_group_id': engineSecurityGroupId,
           if (idpAuthUrl != null) 'idp_auth_url': idpAuthUrl,
           if (idpRelayStateParameterName != null)
             'idp_relay_state_parameter_name': idpRelayStateParameterName,
           'name': name,
           if (region != null) 'region': region,
           'service_role': serviceRole,
           'subnet_ids': subnetIds,
           if (tags != null) 'tags': tags,
           if (userRole != null) 'user_role': userRole,
           'vpc_id': vpcId,
           'workspace_security_group_id': workspaceSecurityGroupId,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsEmrStudioSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `url` attribute.
  TfRef<String> get url => TfRef.attribute<String>(this, 'url');
}
