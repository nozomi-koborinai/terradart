// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_verifiedaccess_instance_trust_provider_attachment`.
const Set<String> _awsVerifiedaccessInstanceTrustProviderAttachmentSensitive =
    <String>{};

/// Factory wrapper for `aws_verifiedaccess_instance_trust_provider_attachment`.
final class AwsVerifiedaccessInstanceTrustProviderAttachment extends Resource {
  static const String tfType =
      'aws_verifiedaccess_instance_trust_provider_attachment';

  AwsVerifiedaccessInstanceTrustProviderAttachment({
    required super.localName,
    TfArg<String>? region,
    required TfArg<String> verifiedaccessInstanceId,
    required TfArg<String> verifiedaccessTrustProviderId,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (region != null) 'region': region,
           'verifiedaccess_instance_id': verifiedaccessInstanceId,
           'verifiedaccess_trust_provider_id': verifiedaccessTrustProviderId,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _awsVerifiedaccessInstanceTrustProviderAttachmentSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}
