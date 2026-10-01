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
           'description': ?description,
           'instance_id': instanceId,
           'name': name,
           'permissions': ?permissions,
           'region': ?region,
           'tags': ?tags,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsConnectSecurityProfileSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsConnectSecurityProfile>`.
  RefTo<AwsConnectSecurityProfile> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

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

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `instance_id` attribute.
  TfRef<String> get instanceId => TfRef.attribute<String>(this, 'instance_id');

  /// Reference to `permissions` attribute.
  TfRef<List<String>> get permissions =>
      TfRef.attribute<List<String>>(this, 'permissions');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}
