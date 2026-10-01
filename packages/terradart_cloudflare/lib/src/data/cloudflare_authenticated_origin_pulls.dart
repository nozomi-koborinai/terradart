// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../ssl/cloudflare_authenticated_origin_pulls.dart';
import '../zone/cloudflare_zone.dart' show CloudflareZone;

/// Sensitive field paths for `cloudflare_authenticated_origin_pulls`.
const Set<String> _cloudflareAuthenticatedOriginPullsSensitive = <String>{};

/// Factory wrapper for `cloudflare_authenticated_origin_pulls`.
final class DataCloudflareAuthenticatedOriginPulls extends Data {
  static const String tfType = 'cloudflare_authenticated_origin_pulls';

  DataCloudflareAuthenticatedOriginPulls(
    super.localName, {
    required TfArg<String> hostname,
    required RefTo<CloudflareZone> zoneId,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {'hostname': hostname, 'zone_id': zoneId.encodeAs('id')},
       );

  @override
  Set<String> get sensitiveFields =>
      _cloudflareAuthenticatedOriginPullsSensitive;

  /// A reference to the `cloudflare_authenticated_origin_pulls` this data source reads, for
  /// arguments typed `RefTo<CloudflareAuthenticatedOriginPulls>`.
  RefTo<CloudflareAuthenticatedOriginPulls> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

  /// Reference to `cert_id` attribute.
  TfRef<String> get certId => TfRef.attribute<String>(this, 'cert_id');

  /// Reference to `cert_status` attribute.
  TfRef<String> get certStatus => TfRef.attribute<String>(this, 'cert_status');

  /// Reference to `cert_updated_at` attribute.
  TfRef<String> get certUpdatedAt =>
      TfRef.attribute<String>(this, 'cert_updated_at');

  /// Reference to `cert_uploaded_on` attribute.
  TfRef<String> get certUploadedOn =>
      TfRef.attribute<String>(this, 'cert_uploaded_on');

  /// Reference to `certificate` attribute.
  TfRef<String> get certificate => TfRef.attribute<String>(this, 'certificate');

  /// Reference to `created_at` attribute.
  TfRef<String> get createdAt => TfRef.attribute<String>(this, 'created_at');

  /// Reference to `enabled` attribute.
  TfRef<bool> get enabled => TfRef.attribute<bool>(this, 'enabled');

  /// Reference to `expires_on` attribute.
  TfRef<String> get expiresOn => TfRef.attribute<String>(this, 'expires_on');

  /// Reference to `issuer` attribute.
  TfRef<String> get issuer => TfRef.attribute<String>(this, 'issuer');

  /// Reference to `serial_number` attribute.
  TfRef<String> get serialNumber =>
      TfRef.attribute<String>(this, 'serial_number');

  /// Reference to `signature` attribute.
  TfRef<String> get signature => TfRef.attribute<String>(this, 'signature');

  /// Reference to `status` attribute.
  TfRef<String> get status => TfRef.attribute<String>(this, 'status');

  /// Reference to `updated_at` attribute.
  TfRef<String> get updatedAt => TfRef.attribute<String>(this, 'updated_at');

  /// Reference to `hostname` attribute.
  TfRef<String> get hostname => TfRef.attribute<String>(this, 'hostname');

  /// Reference to `zone_id` attribute.
  TfRef<String> get zoneId => TfRef.attribute<String>(this, 'zone_id');
}
