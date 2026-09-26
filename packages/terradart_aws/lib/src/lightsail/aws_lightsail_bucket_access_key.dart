// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_lightsail_bucket_access_key`.
const Set<String> _awsLightsailBucketAccessKeySensitive = <String>{
  'secret_access_key',
};

/// Factory wrapper for `aws_lightsail_bucket_access_key`.
final class AwsLightsailBucketAccessKey extends Resource {
  static const String tfType = 'aws_lightsail_bucket_access_key';

  AwsLightsailBucketAccessKey({
    required super.localName,
    required TfArg<String> bucketName,
    TfArg<String>? region,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'bucket_name': bucketName,
           if (region != null) 'region': region,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsLightsailBucketAccessKeySensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `access_key_id` attribute.
  TfRef<String> get accessKeyId =>
      TfRef.attribute<String>(this, 'access_key_id');

  /// Reference to `created_at` attribute.
  TfRef<String> get createdAt => TfRef.attribute<String>(this, 'created_at');

  /// Reference to `secret_access_key` attribute.
  TfRef<String> get secretAccessKey =>
      TfRef.attribute<String>(this, 'secret_access_key');

  /// Reference to `status` attribute.
  TfRef<String> get status => TfRef.attribute<String>(this, 'status');
}
