// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_codeartifact_domain`.
const Set<String> _awsCodeartifactDomainSensitive = <String>{};

/// Factory wrapper for `aws_codeartifact_domain`.
final class AwsCodeartifactDomain extends Resource {
  static const String tfType = 'aws_codeartifact_domain';

  AwsCodeartifactDomain({
    required super.localName,
    required TfArg<String> domain,
    TfArg<String>? encryptionKey,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'domain': domain,
           if (encryptionKey != null) 'encryption_key': encryptionKey,
           if (region != null) 'region': region,
           if (tags != null) 'tags': tags,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsCodeartifactDomainSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `asset_size_bytes` attribute.
  TfRef<String> get assetSizeBytes =>
      TfRef.attribute<String>(this, 'asset_size_bytes');

  /// Reference to `created_time` attribute.
  TfRef<String> get createdTime =>
      TfRef.attribute<String>(this, 'created_time');

  /// Reference to `owner` attribute.
  TfRef<String> get owner => TfRef.attribute<String>(this, 'owner');

  /// Reference to `repository_count` attribute.
  TfRef<num> get repositoryCount =>
      TfRef.attribute<num>(this, 'repository_count');

  /// Reference to `s3_bucket_arn` attribute.
  TfRef<String> get s3BucketArn =>
      TfRef.attribute<String>(this, 's3_bucket_arn');
}
