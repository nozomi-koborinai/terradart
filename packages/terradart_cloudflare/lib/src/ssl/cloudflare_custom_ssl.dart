// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../zone/cloudflare_zone.dart' show CloudflareZone;

/// Sensitive field paths for `cloudflare_custom_ssl`.
const Set<String> _cloudflareCustomSslSensitive = <String>{'private_key'};

/// Custom Ssl Bundle enum for `bundle_method`.
enum CustomSslBundleMethod implements TerraformEnum {
  ubiquitous('ubiquitous'),
  optimal('optimal'),
  force('force');

  const CustomSslBundleMethod(this.terraformValue);
  @override
  final String terraformValue;
}

/// Custom Ssl enum for `deploy`.
enum CustomSslDeploy implements TerraformEnum {
  staging('staging'),
  production('production');

  const CustomSslDeploy(this.terraformValue);
  @override
  final String terraformValue;
}

/// Custom Ssl enum for `type`.
enum CustomSslType implements TerraformEnum {
  legacyCustom('legacy_custom'),
  sniCustom('sni_custom');

  const CustomSslType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `geo_restrictions` block of
/// `cloudflare_custom_ssl` (derived from provider schema).
@immutable
final class CustomSslGeoRestrictions {
  const CustomSslGeoRestrictions({this.label});

  final TfArg<CustomSslGeoRestrictionsLabel>? label;

  Map<String, Object?> encode() => {
    if (label != null) 'label': label!.toTfJson(),
  };
}

/// `label` — derived from the provider schema description.
enum CustomSslGeoRestrictionsLabel implements TerraformEnum {
  us('us'),
  eu('eu'),
  highestSecurity('highest_security');

  const CustomSslGeoRestrictionsLabel(this.terraformValue);
  @override
  final String terraformValue;
}

/// Factory wrapper for `cloudflare_custom_ssl`.
///
/// Accepted Permissions
///
/// - `Access: Mutual TLS Certificates Read` - `Access: Mutual TLS Certificates
/// Write` - `SSL and Certificates Read` - `SSL and Certificates Write`
final class CloudflareCustomSsl extends Resource {
  static const String tfType = 'cloudflare_custom_ssl';

  CloudflareCustomSsl({
    required super.localName,
    TfArg<CustomSslBundleMethod>? bundleMethod,
    required TfArg<String> certificate,
    TfArg<String>? customCsrId,
    TfArg<CustomSslDeploy>? deploy,
    TfArg<String>? policy,
    TfArg<String>? privateKey,
    TfArg<CustomSslType>? type,
    required RefTo<CloudflareZone> zoneId,
    CustomSslGeoRestrictions? geoRestrictions,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (bundleMethod != null) 'bundle_method': bundleMethod,
           'certificate': certificate,
           if (customCsrId != null) 'custom_csr_id': customCsrId,
           if (deploy != null) 'deploy': deploy,
           if (policy != null) 'policy': policy,
           if (privateKey != null) 'private_key': privateKey,
           if (type != null) 'type': type,
           'zone_id': zoneId.encodeAs('id'),
           if (geoRestrictions != null)
             'geo_restrictions': TfArg.literal(geoRestrictions.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflareCustomSslSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<CloudflareCustomSsl>`.
  RefTo<CloudflareCustomSsl> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `expires_on` attribute.
  TfRef<String> get expiresOn => TfRef.attribute<String>(this, 'expires_on');

  /// Reference to `hosts` attribute.
  TfRef<List<String>> get hosts => TfRef.attribute<List<String>>(this, 'hosts');

  /// Reference to `issuer` attribute.
  TfRef<String> get issuer => TfRef.attribute<String>(this, 'issuer');

  /// Reference to `modified_on` attribute.
  TfRef<String> get modifiedOn => TfRef.attribute<String>(this, 'modified_on');

  /// Reference to `policy_restrictions` attribute.
  TfRef<String> get policyRestrictions =>
      TfRef.attribute<String>(this, 'policy_restrictions');

  /// Reference to `priority` attribute.
  TfRef<num> get priority => TfRef.attribute<num>(this, 'priority');

  /// Reference to `signature` attribute.
  TfRef<String> get signature => TfRef.attribute<String>(this, 'signature');

  /// Reference to `status` attribute.
  TfRef<String> get status => TfRef.attribute<String>(this, 'status');

  /// Reference to `uploaded_on` attribute.
  TfRef<String> get uploadedOn => TfRef.attribute<String>(this, 'uploaded_on');
}
