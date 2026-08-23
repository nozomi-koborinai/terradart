// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `cloudflare_authenticated_origin_pulls`.
const Set<String> _cloudflareAuthenticatedOriginPullsSensitive = <String>{
  'private_key',
};

/// Typed helper for the `config` block of
/// `cloudflare_authenticated_origin_pulls` (derived from provider schema).
@immutable
final class AuthenticatedOriginPullsConfig {
  const AuthenticatedOriginPullsConfig({
    this.certId,
    this.enabled,
    this.hostname,
  });

  final TfArg<String>? certId;

  final TfArg<bool>? enabled;

  final TfArg<String>? hostname;

  Map<String, Object?> encode() => {
    if (certId != null) 'cert_id': certId!.toTfJson(),
    if (enabled != null) 'enabled': enabled!.toTfJson(),
    if (hostname != null) 'hostname': hostname!.toTfJson(),
  };
}

/// Factory wrapper for `cloudflare_authenticated_origin_pulls`.
final class CloudflareAuthenticatedOriginPulls extends Resource {
  static const String tfType = 'cloudflare_authenticated_origin_pulls';

  CloudflareAuthenticatedOriginPulls({
    required super.localName,
    required TfArg<String> zoneId,
    required List<AuthenticatedOriginPullsConfig> config,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'zone_id': zoneId,
           'config': TfArg.literal([for (final e in config) e.encode()]),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _cloudflareAuthenticatedOriginPullsSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

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

  /// Reference to `hostname` attribute.
  TfRef<String> get hostname => TfRef.attribute<String>(this, 'hostname');

  /// Reference to `issuer` attribute.
  TfRef<String> get issuer => TfRef.attribute<String>(this, 'issuer');

  /// Reference to `private_key` attribute.
  TfRef<String> get privateKey => TfRef.attribute<String>(this, 'private_key');

  /// Reference to `serial_number` attribute.
  TfRef<String> get serialNumber =>
      TfRef.attribute<String>(this, 'serial_number');

  /// Reference to `signature` attribute.
  TfRef<String> get signature => TfRef.attribute<String>(this, 'signature');

  /// Reference to `status` attribute.
  TfRef<String> get status => TfRef.attribute<String>(this, 'status');

  /// Reference to `updated_at` attribute.
  TfRef<String> get updatedAt => TfRef.attribute<String>(this, 'updated_at');
}
