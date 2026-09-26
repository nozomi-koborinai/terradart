// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_connect_security_profile`.
const Set<String> _awsConnectSecurityProfileSensitive = <String>{};

/// Factory wrapper for `aws_connect_security_profile`.
final class DataAwsConnectSecurityProfile extends Data {
  static const String tfType = 'aws_connect_security_profile';

  DataAwsConnectSecurityProfile({
    required super.localName,
    required TfArg<String> instanceId,
    TfArg<String>? name,
    TfArg<String>? region,
    TfArg<String>? securityProfileId,
    TfArg<Map<String, String>>? tags,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'instance_id': instanceId,
           if (name != null) 'name': name,
           if (region != null) 'region': region,
           if (securityProfileId != null)
             'security_profile_id': securityProfileId,
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

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `organization_resource_id` attribute.
  TfRef<String> get organizationResourceId =>
      TfRef.attribute<String>(this, 'organization_resource_id');

  /// Reference to `permissions` attribute.
  TfRef<List<String>> get permissions =>
      TfRef.attribute<List<String>>(this, 'permissions');
}
