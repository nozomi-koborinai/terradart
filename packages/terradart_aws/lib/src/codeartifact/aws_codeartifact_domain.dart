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
           'encryption_key': ?encryptionKey,
           'region': ?region,
           'tags': ?tags,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsCodeartifactDomainSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsCodeartifactDomain>`.
  RefTo<AwsCodeartifactDomain> get ref => RefTo.of(this);

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

  /// Reference to `domain` attribute.
  TfRef<String> get domainRef => TfRef.attribute<String>(this, 'domain');

  /// Reference to `encryption_key` attribute.
  TfRef<String> get encryptionKeyRef =>
      TfRef.attribute<String>(this, 'encryption_key');

  /// Reference to `region` attribute.
  TfRef<String> get regionRef => TfRef.attribute<String>(this, 'region');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tagsRef =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}
