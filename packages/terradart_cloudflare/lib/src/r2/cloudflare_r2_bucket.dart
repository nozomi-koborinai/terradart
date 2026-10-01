// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../account/cloudflare_account.dart' show CloudflareAccount;

/// Sensitive field paths for `cloudflare_r2_bucket`.
const Set<String> _cloudflareR2BucketSensitive = <String>{};

/// R2 Bucket enum for `jurisdiction`.
extension type const R2BucketJurisdiction._(TfArg<String> _)
    implements TfArg<String> {
  R2BucketJurisdiction.variable(String name) : this._(TfArg.variable(name));
  R2BucketJurisdiction.expression(String template)
    : this._(TfArg.expression(template));
  const R2BucketJurisdiction.arg(TfArg<String> arg) : this._(arg);

  static const defaultCase = R2BucketJurisdiction._(TfArgLiteral('default'));
  static const eu = R2BucketJurisdiction._(TfArgLiteral('eu'));
  static const fedramp = R2BucketJurisdiction._(TfArgLiteral('fedramp'));
  static const us = R2BucketJurisdiction._(TfArgLiteral('us'));
  static const fedrampHigh = R2BucketJurisdiction._(
    TfArgLiteral('fedramp-high'),
  );

  static const List<R2BucketJurisdiction> values = [
    defaultCase,
    eu,
    fedramp,
    us,
    fedrampHigh,
  ];
}

/// R2 Bucket enum for `location`.
extension type const R2BucketLocation._(TfArg<String> _)
    implements TfArg<String> {
  R2BucketLocation.variable(String name) : this._(TfArg.variable(name));
  R2BucketLocation.expression(String template)
    : this._(TfArg.expression(template));
  const R2BucketLocation.arg(TfArg<String> arg) : this._(arg);

  static const apac = R2BucketLocation._(TfArgLiteral('apac'));
  static const eeur = R2BucketLocation._(TfArgLiteral('eeur'));
  static const enam = R2BucketLocation._(TfArgLiteral('enam'));
  static const weur = R2BucketLocation._(TfArgLiteral('weur'));
  static const wnam = R2BucketLocation._(TfArgLiteral('wnam'));
  static const oc = R2BucketLocation._(TfArgLiteral('oc'));

  static const List<R2BucketLocation> values = [
    apac,
    eeur,
    enam,
    weur,
    wnam,
    oc,
  ];
}

/// R2 Bucket Storage enum for `storage_class`.
extension type const R2BucketStorageClass._(TfArg<String> _)
    implements TfArg<String> {
  R2BucketStorageClass.variable(String name) : this._(TfArg.variable(name));
  R2BucketStorageClass.expression(String template)
    : this._(TfArg.expression(template));
  const R2BucketStorageClass.arg(TfArg<String> arg) : this._(arg);

  static const standard = R2BucketStorageClass._(TfArgLiteral('Standard'));
  static const infrequentaccess = R2BucketStorageClass._(
    TfArgLiteral('InfrequentAccess'),
  );

  static const List<R2BucketStorageClass> values = [standard, infrequentaccess];
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
    R2BucketJurisdiction? jurisdiction,
    R2BucketLocation? location,
    required TfArg<String> name,
    R2BucketStorageClass? storageClass,
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
