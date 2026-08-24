// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `cloudflare_r2_bucket_sippy`.
const Set<String> _cloudflareR2BucketSippySensitive = <String>{
  'destination.secret_access_key',
  'source.account_key',
  'source.private_key',
  'source.sas_token',
  'source.secret_access_key',
};

/// Typed helper for the `destination` block of
/// `cloudflare_r2_bucket_sippy` (derived from provider schema).
@immutable
final class R2BucketSippyDestination {
  const R2BucketSippyDestination({
    this.accessKeyId,
    this.cloudProvider,
    this.secretAccessKey,
  });

  final TfArg<String>? accessKeyId;

  final TfArg<String>? cloudProvider;

  final TfArg<String>? secretAccessKey;

  Map<String, Object?> encode() => {
    if (accessKeyId != null) 'access_key_id': accessKeyId!.toTfJson(),
    if (cloudProvider != null) 'cloud_provider': cloudProvider!.toTfJson(),
    if (secretAccessKey != null)
      'secret_access_key': secretAccessKey!.toTfJson(),
  };
}

/// Typed helper for the `source` block of
/// `cloudflare_r2_bucket_sippy` (derived from provider schema).
@immutable
final class R2BucketSippySource {
  const R2BucketSippySource({
    this.accessKeyId,
    this.accountKey,
    this.accountName,
    this.bucket,
    this.bucketUrl,
    this.clientEmail,
    this.cloudProvider,
    this.container,
    this.privateKey,
    this.region,
    this.sasToken,
    this.secretAccessKey,
  });

  final TfArg<String>? accessKeyId;

  final TfArg<String>? accountKey;

  final TfArg<String>? accountName;

  final TfArg<String>? bucket;

  final TfArg<String>? bucketUrl;

  final TfArg<String>? clientEmail;

  final TfArg<String>? cloudProvider;

  final TfArg<String>? container;

  final TfArg<String>? privateKey;

  final TfArg<String>? region;

  final TfArg<String>? sasToken;

  final TfArg<String>? secretAccessKey;

  Map<String, Object?> encode() => {
    if (accessKeyId != null) 'access_key_id': accessKeyId!.toTfJson(),
    if (accountKey != null) 'account_key': accountKey!.toTfJson(),
    if (accountName != null) 'account_name': accountName!.toTfJson(),
    if (bucket != null) 'bucket': bucket!.toTfJson(),
    if (bucketUrl != null) 'bucket_url': bucketUrl!.toTfJson(),
    if (clientEmail != null) 'client_email': clientEmail!.toTfJson(),
    if (cloudProvider != null) 'cloud_provider': cloudProvider!.toTfJson(),
    if (container != null) 'container': container!.toTfJson(),
    if (privateKey != null) 'private_key': privateKey!.toTfJson(),
    if (region != null) 'region': region!.toTfJson(),
    if (sasToken != null) 'sas_token': sasToken!.toTfJson(),
    if (secretAccessKey != null)
      'secret_access_key': secretAccessKey!.toTfJson(),
  };
}

/// Factory wrapper for `cloudflare_r2_bucket_sippy`.
///
/// Accepted Permissions
///
/// - `Workers R2 Storage Write`
final class CloudflareR2BucketSippy extends Resource {
  static const String tfType = 'cloudflare_r2_bucket_sippy';

  CloudflareR2BucketSippy({
    required super.localName,
    required TfArg<String> accountId,
    required TfArg<String> bucketName,
    TfArg<String>? jurisdiction,
    R2BucketSippyDestination? destination,
    R2BucketSippySource? source,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'account_id': accountId,
           'bucket_name': bucketName,
           if (jurisdiction != null) 'jurisdiction': jurisdiction,
           if (destination != null)
             'destination': TfArg.literal(destination.encode()),
           if (source != null) 'source': TfArg.literal(source.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflareR2BucketSippySensitive;

  /// Reference to `enabled` attribute.
  TfRef<bool> get enabled => TfRef.attribute<bool>(this, 'enabled');
}
