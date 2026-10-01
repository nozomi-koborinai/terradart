// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_network_security_firewall_endpoint`.
const Set<String> _googleNetworkSecurityFirewallEndpointSensitive = <String>{};

/// Typed helper for the `endpoint_settings` block of
/// `google_network_security_firewall_endpoint` (derived from provider schema).
@immutable
final class NetworkSecurityFirewallEndpointSettings {
  const NetworkSecurityFirewallEndpointSettings({this.jumboFramesEnabled});

  final TfArg<bool>? jumboFramesEnabled;

  Map<String, Object?> encode() => {
    'jumbo_frames_enabled': ?jumboFramesEnabled?.toTfJson(),
  };
}

/// Factory wrapper for `google_network_security_firewall_endpoint`.
///
/// A Firewall endpoint is a Cloud Firewall resource that enables layer 7
/// advanced protection capabilities, such as intrusion prevention, in your
/// network.
///
/// Network Security **Cloud NGFW firewall endpoint** — zonal L7 advanced
/// protection appliance (intrusion prevention) for VPC traffic.
///
/// **Cost / apply:** gcp-cost: Network Security `E749-01A2-AE1F` Cloud NGFW
/// Enterprise Endpoint Uptime SKU `B778-1457-4A22` **$1.75/h** (plus Cloud
/// NGFW Enterprise Data Processing `994B-C7B9-C1F7` **$0.0193/GiBy** when
/// traffic is inspected). billing-behavior: endpoint uptime bills while the
/// endpoint exists; destroy stops endpoint-hour charges. [parent] is
/// typically `organizations/{organization_id}` (project parent also
/// accepted); org-scoped endpoints are not applyable on standalone
/// `terradart-validate`. Too expensive for apply-smoke even once — debt-only.
/// **Never** wire into apply-smoke.
///
/// Enable `networksecurity.googleapis.com` before apply. Organization-scoped
/// creates also need [billingProjectId] (+ provider `user_project_override`).
final class GoogleNetworkSecurityFirewallEndpoint extends Resource {
  static const String tfType = 'google_network_security_firewall_endpoint';

  GoogleNetworkSecurityFirewallEndpoint(
    super.localName, {
    required TfArg<String> name,
    required TfArg<String> location,
    required TfArg<String> parent,
    TfArg<String>? billingProjectId,
    NetworkSecurityFirewallEndpointSettings? endpointSettings,
    TfArg<Map<String, String>>? labels,
    TfArg<String>? deletionPolicy,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           'location': location,
           'parent': parent,
           'billing_project_id': ?billingProjectId,
           if (endpointSettings != null)
             'endpoint_settings': TfArg.literal(endpointSettings.encode()),
           'labels': ?labels,
           'deletion_policy': ?deletionPolicy,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleNetworkSecurityFirewallEndpointSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleNetworkSecurityFirewallEndpoint>`.
  RefTo<GoogleNetworkSecurityFirewallEndpoint> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `associated_networks` attribute.
  TfRef<List<String>> get associatedNetworks =>
      TfRef.attribute<List<String>>(this, 'associated_networks');

  /// Reference to `create_time` attribute.
  TfRef<String> get createTime => TfRef.attribute<String>(this, 'create_time');

  /// Reference to `effective_labels` attribute.
  TfRef<Map<String, String>> get effectiveLabels =>
      TfRef.attribute<Map<String, String>>(this, 'effective_labels');

  /// Reference to `reconciling` attribute.
  TfRef<bool> get reconciling => TfRef.attribute<bool>(this, 'reconciling');

  /// Reference to `self_link` attribute.
  TfRef<String> get selfLink => TfRef.attribute<String>(this, 'self_link');

  /// Reference to `state` attribute.
  TfRef<String> get state => TfRef.attribute<String>(this, 'state');

  /// Reference to `terraform_labels` attribute.
  TfRef<Map<String, String>> get terraformLabels =>
      TfRef.attribute<Map<String, String>>(this, 'terraform_labels');

  /// Reference to `update_time` attribute.
  TfRef<String> get updateTime => TfRef.attribute<String>(this, 'update_time');

  /// Reference to `billing_project_id` attribute.
  TfRef<String> get billingProjectId =>
      TfRef.attribute<String>(this, 'billing_project_id');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicy =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `labels` attribute.
  TfRef<Map<String, String>> get labels =>
      TfRef.attribute<Map<String, String>>(this, 'labels');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `parent` attribute.
  TfRef<String> get parent => TfRef.attribute<String>(this, 'parent');
}
