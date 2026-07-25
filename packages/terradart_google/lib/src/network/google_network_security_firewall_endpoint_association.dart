// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_network_security_firewall_endpoint_association`.
const Set<String> _googleNetworkSecurityFirewallEndpointAssociationSensitive =
    <String>{};

/// Network Security Firewall Endpoint Association enum for `state`.
enum NetworkSecurityFirewallEndpointAssociationState implements TerraformEnum {
  active('ACTIVE'),
  creating('CREATING'),
  deleting('DELETING'),
  inactive('INACTIVE');

  const NetworkSecurityFirewallEndpointAssociationState(this.terraformValue);
  @override
  final String terraformValue;
}

/// Factory wrapper for `google_network_security_firewall_endpoint_association`.
///
/// Firewall endpoint association links a firewall endpoint to a VPC network in
/// the same zone. After you define this association, Cloud Firewall forwards
/// the zonal workload traffic in your VPC network that requires layer 7
/// inspection to the attached firewall endpoint.
///
/// Network Security **firewall endpoint association** — attaches a VPC
/// network to a Cloud NGFW [GoogleNetworkSecurityFirewallEndpoint].
///
/// **Cost / apply:** gcp-cost: no association SKU under Network Security
/// `E749-01A2-AE1F` (Cloud NGFW Enterprise Endpoint Uptime `B778-1457-4A22`
/// **$1.75/h** bills on the parent endpoint; Data Processing `994B-C7B9-C1F7`
/// **$0.0193/GiBy** when traffic is inspected). billing-behavior: requires a
/// never_apply firewall endpoint; association enables inspection of the
/// linked VPC. Debt-only on `terradart-validate`. **Never** wire into
/// apply-smoke.
///
/// Enable `networksecurity.googleapis.com` before apply.
final class GoogleNetworkSecurityFirewallEndpointAssociation extends Resource {
  static const String tfType =
      'google_network_security_firewall_endpoint_association';

  GoogleNetworkSecurityFirewallEndpointAssociation({
    required super.localName,
    required TfArg<String> name,
    required TfArg<String> location,
    required TfArg<String> firewallEndpoint,
    required TfArg<String> network,
    TfArg<String>? parent,
    TfArg<String>? tlsInspectionPolicy,
    TfArg<bool>? disabled,
    TfArg<Map<String, String>>? labels,
    TfArg<String>? deletionPolicy,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           'location': location,
           'firewall_endpoint': firewallEndpoint,
           'network': network,
           if (parent != null) 'parent': parent,
           if (tlsInspectionPolicy != null)
             'tls_inspection_policy': tlsInspectionPolicy,
           if (disabled != null) 'disabled': disabled,
           if (labels != null) 'labels': labels,
           if (deletionPolicy != null) 'deletion_policy': deletionPolicy,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleNetworkSecurityFirewallEndpointAssociationSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

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

  /// Reference to `id` attribute.
  TfRef<String> get idRef => TfRef.attribute<String>(this, 'id');

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `self_link` attribute.
  TfRef<String> get selfLinkRef => TfRef.attribute<String>(this, 'self_link');
}
