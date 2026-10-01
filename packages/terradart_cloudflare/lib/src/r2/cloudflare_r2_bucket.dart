// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../account/cloudflare_account.dart' show CloudflareAccount;

/// Sensitive field paths for `cloudflare_r2_bucket`.
const Set<String> _cloudflareR2BucketSensitive = <String>{};

/// R2 Bucket enum for `jurisdiction`.
enum R2BucketJurisdiction implements TerraformEnum {
  defaultCase('default'),
  eu('eu'),
  fedramp('fedramp'),
  us('us'),
  fedrampHigh('fedramp-high');

  const R2BucketJurisdiction(this.terraformValue);
  @override
  final String terraformValue;
}

/// R2 Bucket enum for `location`.
enum R2BucketLocation implements TerraformEnum {
  apac('apac'),
  eeur('eeur'),
  enam('enam'),
  weur('weur'),
  wnam('wnam'),
  oc('oc');

  const R2BucketLocation(this.terraformValue);
  @override
  final String terraformValue;
}

/// R2 Bucket Storage enum for `storage_class`.
enum R2BucketStorageClass implements TerraformEnum {
  standard('Standard'),
  infrequentaccess('InfrequentAccess');

  const R2BucketStorageClass(this.terraformValue);
  @override
  final String terraformValue;
}

/// Factory wrapper for `cloudflare_r2_bucket`.
///
/// Accepted Permissions
///
/// - `Workers R2 Storage Write`
final class CloudflareR2Bucket extends Resource {
  static const String tfType = 'cloudflare_r2_bucket';

  CloudflareR2Bucket(
    super.localName, {
    required RefTo<CloudflareAccount> accountId,
    TfArg<R2BucketJurisdiction>? jurisdiction,
    TfArg<R2BucketLocation>? location,
    required TfArg<String> name,
    TfArg<R2BucketStorageClass>? storageClass,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'account_id': accountId.encodeAs('id'),
           'jurisdiction': ?jurisdiction,
           'location': ?location,
           'name': name,
           'storage_class': ?storageClass,
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflareR2BucketSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<CloudflareR2Bucket>`.
  RefTo<CloudflareR2Bucket> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `creation_date` attribute.
  TfRef<String> get creationDate =>
      TfRef.attribute<String>(this, 'creation_date');

  /// Reference to `account_id` attribute.
  TfRef<String> get accountId => TfRef.attribute<String>(this, 'account_id');

  /// Reference to `jurisdiction` attribute.
  TfRef<String> get jurisdiction =>
      TfRef.attribute<String>(this, 'jurisdiction');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `storage_class` attribute.
  TfRef<String> get storageClass =>
      TfRef.attribute<String>(this, 'storage_class');
}
