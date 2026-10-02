// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../zone/cloudflare_zone.dart' show CloudflareZone;

/// Sensitive field paths for `cloudflare_custom_ssl`.
const Set<String> _cloudflareCustomSslSensitive = <String>{'private_key'};

/// Custom Ssl Bundle enum for `bundle_method`.
extension type const CustomSslBundleMethod._(TfArg<String> _)
    implements TfArg<String> {
  CustomSslBundleMethod.variable(String name) : this._(TfArg.variable(name));
  CustomSslBundleMethod.expression(String template)
    : this._(TfArg.expression(template));
  const CustomSslBundleMethod.arg(TfArg<String> arg) : this._(arg);

  static const ubiquitous = CustomSslBundleMethod._(TfArgLiteral('ubiquitous'));
  static const optimal = CustomSslBundleMethod._(TfArgLiteral('optimal'));
  static const force = CustomSslBundleMethod._(TfArgLiteral('force'));

  static const List<CustomSslBundleMethod> values = [
    ubiquitous,
    optimal,
    force,
  ];
}

/// Custom Ssl enum for `deploy`.
extension type const CustomSslDeploy._(TfArg<String> _)
    implements TfArg<String> {
  CustomSslDeploy.variable(String name) : this._(TfArg.variable(name));
  CustomSslDeploy.expression(String template)
    : this._(TfArg.expression(template));
  const CustomSslDeploy.arg(TfArg<String> arg) : this._(arg);

  static const staging = CustomSslDeploy._(TfArgLiteral('staging'));
  static const production = CustomSslDeploy._(TfArgLiteral('production'));

  static const List<CustomSslDeploy> values = [staging, production];
}

/// Custom Ssl enum for `type`.
extension type const CustomSslType._(TfArg<String> _) implements TfArg<String> {
  CustomSslType.variable(String name) : this._(TfArg.variable(name));
  CustomSslType.expression(String template)
    : this._(TfArg.expression(template));
  const CustomSslType.arg(TfArg<String> arg) : this._(arg);

  static const legacyCustom = CustomSslType._(TfArgLiteral('legacy_custom'));
  static const sniCustom = CustomSslType._(TfArgLiteral('sni_custom'));

  static const List<CustomSslType> values = [legacyCustom, sniCustom];
}

/// Typed helper for the `geo_restrictions` block of
/// `cloudflare_custom_ssl` (derived from provider schema).
@immutable
final class CustomSslGeoRestrictions {
  const CustomSslGeoRestrictions({this.label});

  final CustomSslLabel? label;

  @internal
  Map<String, Object?> encode() => {'label': ?label?.toTfJson()};
}

/// `label` — derived from the provider schema description.
extension type const CustomSslLabel._(TfArg<String> _)
    implements TfArg<String> {
  CustomSslLabel.variable(String name) : this._(TfArg.variable(name));
  CustomSslLabel.expression(String template)
    : this._(TfArg.expression(template));
  const CustomSslLabel.arg(TfArg<String> arg) : this._(arg);

  static const us = CustomSslLabel._(TfArgLiteral('us'));
  static const eu = CustomSslLabel._(TfArgLiteral('eu'));
  static const highestSecurity = CustomSslLabel._(
    TfArgLiteral('highest_security'),
  );

  static const List<CustomSslLabel> values = [us, eu, highestSecurity];
}

/// Factory wrapper for `cloudflare_custom_ssl`.
///
/// Accepted Permissions
///
/// - `Access: Mutual TLS Certificates Read` - `Access: Mutual TLS Certificates
/// Write` - `SSL and Certificates Read` - `SSL and Certificates Write`
final class CloudflareCustomSsl extends Resource {
  static const String tfType = 'cloudflare_custom_ssl';

  CloudflareCustomSsl(
    super.localName, {
    CustomSslBundleMethod? bundleMethod,
    required TfArg<String> certificate,
    TfArg<String>? customCsrId,
    CustomSslDeploy? deploy,
    TfArg<String>? policy,
    Sensitive<String>? privateKey,
    CustomSslType? type,
    required RefTo<CloudflareZone> zoneId,
    CustomSslGeoRestrictions? geoRestrictions,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'bundle_method': ?bundleMethod,
           'certificate': certificate,
           'custom_csr_id': ?customCsrId,
           'deploy': ?deploy,
           'policy': ?policy,
           'private_key': ?privateKey,
           'type': ?type,
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

  /// Reference to `bundle_method` attribute.
  TfRef<String> get bundleMethod =>
      TfRef.attribute<String>(this, 'bundle_method');

  /// Reference to `certificate` attribute.
  TfRef<String> get certificate => TfRef.attribute<String>(this, 'certificate');

  /// Reference to `custom_csr_id` attribute.
  TfRef<String> get customCsrId =>
      TfRef.attribute<String>(this, 'custom_csr_id');

  /// Reference to `deploy` attribute.
  TfRef<String> get deploy => TfRef.attribute<String>(this, 'deploy');

  /// Reference to `policy` attribute.
  TfRef<String> get policy => TfRef.attribute<String>(this, 'policy');

  /// Reference to `private_key` attribute.
  TfRef<String> get privateKey => TfRef.attribute<String>(this, 'private_key');

  /// Reference to `type` attribute.
  TfRef<String> get type => TfRef.attribute<String>(this, 'type');

  /// Reference to `zone_id` attribute.
  TfRef<String> get zoneId => TfRef.attribute<String>(this, 'zone_id');
}
