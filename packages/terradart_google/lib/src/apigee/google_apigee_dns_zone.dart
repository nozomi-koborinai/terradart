// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_apigee_dns_zone`.
const Set<String> _googleApigeeDnsZoneSensitive = <String>{};

/// Typed helper for the `peering_config` block of
/// `google_apigee_dns_zone` (derived from provider schema).
@immutable
final class ApigeeDnsZonePeeringConfig {
  const ApigeeDnsZonePeeringConfig({
    required this.targetNetworkId,
    required this.targetProjectId,
  });

  final TfArg<String> targetNetworkId;

  final TfArg<String> targetProjectId;

  Map<String, Object?> encode() => {
    'target_network_id': targetNetworkId.toTfJson(),
    'target_project_id': targetProjectId.toTfJson(),
  };
}

/// Factory wrapper for `google_apigee_dns_zone`.
///
/// Apigee Dns Zone.
///
/// Apigee **DNS zone** — peered DNS zone for private resolution in an org.
///
/// **Cost / apply:** gcp-cost: no DNS-zone SKU under Apigee
/// `1C2D-8C78-EC58` (list_skus keyword network → 0). billing-behavior:
/// requires a never_apply [GoogleApigeeOrganization] and a peered VPC.
/// Debt-only on `terradart-validate`. **Never** wire into apply-smoke.
final class GoogleApigeeDnsZone extends Resource {
  static const String tfType = 'google_apigee_dns_zone';

  GoogleApigeeDnsZone(
    super.localName, {
    required TfArg<String> dnsZoneId,
    required TfArg<String> orgId,
    required TfArg<String> domain,
    required TfArg<String> description,
    required ApigeeDnsZonePeeringConfig peeringConfig,
    TfArg<String>? deletionPolicy,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'dns_zone_id': dnsZoneId,
           'org_id': orgId,
           'domain': domain,
           'description': description,
           'peering_config': TfArg.literal(peeringConfig.encode()),
           'deletion_policy': ?deletionPolicy,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleApigeeDnsZoneSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleApigeeDnsZone>`.
  RefTo<GoogleApigeeDnsZone> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicy =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `dns_zone_id` attribute.
  TfRef<String> get dnsZoneId => TfRef.attribute<String>(this, 'dns_zone_id');

  /// Reference to `domain` attribute.
  TfRef<String> get domain => TfRef.attribute<String>(this, 'domain');

  /// Reference to `org_id` attribute.
  TfRef<String> get orgId => TfRef.attribute<String>(this, 'org_id');
}
