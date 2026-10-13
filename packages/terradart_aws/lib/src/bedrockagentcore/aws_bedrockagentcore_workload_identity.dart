// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_bedrockagentcore_workload_identity`.
const Set<String> _awsBedrockagentcoreWorkloadIdentitySensitive = <String>{};

/// Factory wrapper for `aws_bedrockagentcore_workload_identity`.
final class AwsBedrockagentcoreWorkloadIdentity extends Resource {
  static const String tfType = 'aws_bedrockagentcore_workload_identity';

  AwsBedrockagentcoreWorkloadIdentity(
    super.localName, {
    TfArg<List<String>>? allowedResourceOauth2ReturnUrls,
    required TfArg<String> name,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'allowed_resource_oauth2_return_urls':
               ?allowedResourceOauth2ReturnUrls,
           'name': name,
           'region': ?region,
           'tags': ?tags,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _awsBedrockagentcoreWorkloadIdentitySensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsBedrockagentcoreWorkloadIdentity>`.
  RefTo<AwsBedrockagentcoreWorkloadIdentity> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `tags_all` attribute.
  TfRef<Map<String, String>> get tagsAll =>
      TfRef.attribute<Map<String, String>>(this, 'tags_all');

  /// Reference to `workload_identity_arn` attribute.
  TfRef<String> get workloadIdentityArn =>
      TfRef.attribute<String>(this, 'workload_identity_arn');

  /// Reference to `allowed_resource_oauth2_return_urls` attribute.
  TfRef<List<String>> get allowedResourceOauth2ReturnUrls =>
      TfRef.attribute<List<String>>(
        this,
        'allowed_resource_oauth2_return_urls',
      );

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}
