// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_connect_security_profile`.
const Set<String> _awsConnectSecurityProfileSensitive = <String>{};

/// Factory wrapper for `aws_connect_security_profile`.
final class AwsConnectSecurityProfile extends Resource {
  static const String tfType = 'aws_connect_security_profile';

  AwsConnectSecurityProfile({
    required super.localName,
    TfArg<String>? description,
    required TfArg<String> instanceId,
    required TfArg<String> name,
    TfArg<List<String>>? permissions,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (description != null) 'description': description,
           'instance_id': instanceId,
           'name': name,
           if (permissions != null) 'permissions': permissions,
           if (region != null) 'region': region,
           if (tags != null) 'tags': tags,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsConnectSecurityProfileSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `organization_resource_id` attribute.
  TfRef<String> get organizationResourceId =>
      TfRef.attribute<String>(this, 'organization_resource_id');

  /// Reference to `security_profile_id` attribute.
  TfRef<String> get securityProfileId =>
      TfRef.attribute<String>(this, 'security_profile_id');
}
