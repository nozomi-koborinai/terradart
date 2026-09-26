// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_bedrockagentcore_workload_identity`.
const Set<String> _awsBedrockagentcoreWorkloadIdentitySensitive = <String>{};

/// Factory wrapper for `aws_bedrockagentcore_workload_identity`.
final class AwsBedrockagentcoreWorkloadIdentity extends Resource {
  static const String tfType = 'aws_bedrockagentcore_workload_identity';

  AwsBedrockagentcoreWorkloadIdentity({
    required super.localName,
    TfArg<List<String>>? allowedResourceOauth2ReturnUrls,
    required TfArg<String> name,
    TfArg<String>? region,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (allowedResourceOauth2ReturnUrls != null)
             'allowed_resource_oauth2_return_urls':
                 allowedResourceOauth2ReturnUrls,
           'name': name,
           if (region != null) 'region': region,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _awsBedrockagentcoreWorkloadIdentitySensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `workload_identity_arn` attribute.
  TfRef<String> get workloadIdentityArn =>
      TfRef.attribute<String>(this, 'workload_identity_arn');
}
