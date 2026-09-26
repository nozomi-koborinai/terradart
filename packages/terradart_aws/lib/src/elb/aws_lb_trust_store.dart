// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_lb_trust_store`.
const Set<String> _awsLbTrustStoreSensitive = <String>{};

/// Factory wrapper for `aws_lb_trust_store`.
final class AwsLbTrustStore extends Resource {
  static const String tfType = 'aws_lb_trust_store';

  AwsLbTrustStore({
    required super.localName,
    required TfArg<String> caCertificatesBundleS3Bucket,
    required TfArg<String> caCertificatesBundleS3Key,
    TfArg<String>? caCertificatesBundleS3ObjectVersion,
    TfArg<String>? name,
    TfArg<String>? namePrefix,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'ca_certificates_bundle_s3_bucket': caCertificatesBundleS3Bucket,
           'ca_certificates_bundle_s3_key': caCertificatesBundleS3Key,
           if (caCertificatesBundleS3ObjectVersion != null)
             'ca_certificates_bundle_s3_object_version':
                 caCertificatesBundleS3ObjectVersion,
           if (name != null) 'name': name,
           if (namePrefix != null) 'name_prefix': namePrefix,
           if (region != null) 'region': region,
           if (tags != null) 'tags': tags,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsLbTrustStoreSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `arn_suffix` attribute.
  TfRef<String> get arnSuffix => TfRef.attribute<String>(this, 'arn_suffix');
}
