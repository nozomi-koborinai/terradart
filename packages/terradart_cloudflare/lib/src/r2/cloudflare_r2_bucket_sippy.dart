// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../account/cloudflare_account.dart' show CloudflareAccount;

/// Sensitive field paths for `cloudflare_r2_bucket_sippy`.
const Set<String> _cloudflareR2BucketSippySensitive = <String>{
  'destination.secret_access_key',
  'source.account_key',
  'source.private_key',
  'source.sas_token',
  'source.secret_access_key',
};

/// R2 Bucket Sippy enum for `jurisdiction`.
extension type const R2BucketSippyJurisdiction._(TfArg<String> _)
    implements TfArg<String> {
  R2BucketSippyJurisdiction.variable(String name)
    : this._(TfArg.variable(name));
  R2BucketSippyJurisdiction.expression(String template)
    : this._(TfArg.expression(template));
  const R2BucketSippyJurisdiction.arg(TfArg<String> arg) : this._(arg);

  static const defaultCase = R2BucketSippyJurisdiction._(
    TfArgLiteral('default'),
  );
  static const eu = R2BucketSippyJurisdiction._(TfArgLiteral('eu'));
  static const fedramp = R2BucketSippyJurisdiction._(TfArgLiteral('fedramp'));

  static const List<R2BucketSippyJurisdiction> values = [
    defaultCase,
    eu,
    fedramp,
  ];
}

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

  final R2BucketSippyDestinationCloudProvider? cloudProvider;

  final Sensitive<String>? secretAccessKey;

  @internal
  Map<String, Object?> encode() => {
    'access_key_id': ?accessKeyId?.toTfJson(),
    'cloud_provider': ?cloudProvider?.toTfJson(),
    'secret_access_key': ?secretAccessKey?.toTfJson(),
  };
}

/// `cloud_provider` — derived from the provider schema description.
extension type const R2BucketSippyDestinationCloudProvider._(TfArg<String> _)
    implements TfArg<String> {
  R2BucketSippyDestinationCloudProvider.variable(String name)
    : this._(TfArg.variable(name));
  R2BucketSippyDestinationCloudProvider.expression(String template)
    : this._(TfArg.expression(template));
  const R2BucketSippyDestinationCloudProvider.arg(TfArg<String> arg)
    : this._(arg);

  static const r2 = R2BucketSippyDestinationCloudProvider._(TfArgLiteral('r2'));

  static const List<R2BucketSippyDestinationCloudProvider> values = [r2];
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

  final Sensitive<String>? accountKey;

  final TfArg<String>? accountName;

  final TfArg<String>? bucket;

  final TfArg<String>? bucketUrl;

  final TfArg<String>? clientEmail;

  final R2BucketSippySourceCloudProvider? cloudProvider;

  final TfArg<String>? container;

  final Sensitive<String>? privateKey;

  final TfArg<String>? region;

  final Sensitive<String>? sasToken;

  final Sensitive<String>? secretAccessKey;

  @internal
  Map<String, Object?> encode() => {
    'access_key_id': ?accessKeyId?.toTfJson(),
    'account_key': ?accountKey?.toTfJson(),
    'account_name': ?accountName?.toTfJson(),
    'bucket': ?bucket?.toTfJson(),
    'bucket_url': ?bucketUrl?.toTfJson(),
    'client_email': ?clientEmail?.toTfJson(),
    'cloud_provider': ?cloudProvider?.toTfJson(),
    'container': ?container?.toTfJson(),
    'private_key': ?privateKey?.toTfJson(),
    'region': ?region?.toTfJson(),
    'sas_token': ?sasToken?.toTfJson(),
    'secret_access_key': ?secretAccessKey?.toTfJson(),
  };
}

/// `cloud_provider` — derived from the provider schema description.
extension type const R2BucketSippySourceCloudProvider._(TfArg<String> _)
    implements TfArg<String> {
  R2BucketSippySourceCloudProvider.variable(String name)
    : this._(TfArg.variable(name));
  R2BucketSippySourceCloudProvider.expression(String template)
    : this._(TfArg.expression(template));
  const R2BucketSippySourceCloudProvider.arg(TfArg<String> arg) : this._(arg);

  static const aws = R2BucketSippySourceCloudProvider._(TfArgLiteral('aws'));
  static const gcs = R2BucketSippySourceCloudProvider._(TfArgLiteral('gcs'));
  static const s3 = R2BucketSippySourceCloudProvider._(TfArgLiteral('s3'));
  static const azure = R2BucketSippySourceCloudProvider._(
    TfArgLiteral('azure'),
  );

  static const List<R2BucketSippySourceCloudProvider> values = [
    aws,
    gcs,
    s3,
    azure,
  ];
}

/// Factory wrapper for `cloudflare_r2_bucket_sippy`.
///
/// Accepted Permissions
///
/// - `Workers R2 Storage Write`
final class CloudflareR2BucketSippy extends Resource {
  static const String tfType = 'cloudflare_r2_bucket_sippy';

  CloudflareR2BucketSippy(
    super.localName, {
    required RefTo<CloudflareAccount> accountId,
    required TfArg<String> bucketName,
    R2BucketSippyJurisdiction? jurisdiction,
    R2BucketSippyDestination? destination,
    R2BucketSippySource? source,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'account_id': accountId.encodeAs('id'),
           'bucket_name': bucketName,
           'jurisdiction': ?jurisdiction,
           if (destination != null)
             'destination': TfArg.literal(destination.encode()),
           if (source != null) 'source': TfArg.literal(source.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflareR2BucketSippySensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<CloudflareR2BucketSippy>`.
  RefTo<CloudflareR2BucketSippy> get ref => RefTo.of(this);

  /// Reference to `enabled` attribute.
  TfRef<bool> get enabled => TfRef.attribute<bool>(this, 'enabled');

  /// Reference to `account_id` attribute.
  TfRef<String> get accountId => TfRef.attribute<String>(this, 'account_id');

  /// Reference to `bucket_name` attribute.
  TfRef<String> get bucketName => TfRef.attribute<String>(this, 'bucket_name');

  /// Reference to `jurisdiction` attribute.
  TfRef<String> get jurisdiction =>
      TfRef.attribute<String>(this, 'jurisdiction');
}
