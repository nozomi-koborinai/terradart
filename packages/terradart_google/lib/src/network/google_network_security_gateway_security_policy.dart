// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_network_security_gateway_security_policy`.
const Set<String> _googleNetworkSecurityGatewaySecurityPolicySensitive =
    <String>{};

/// Factory wrapper for `google_network_security_gateway_security_policy`.
///
/// The GatewaySecurityPolicy resource contains a collection of
/// GatewaySecurityPolicyRules and associated metadata.
///
/// Network Security **gateway security policy** — metadata container for
/// Secure Web Proxy (SWP) gateway rules.
///
/// Creating a policy alone does not provision a gateway, attach rules that
/// inspect traffic, or bill Secure Web Proxy data-plane SKUs.
///
/// Enable `networksecurity.googleapis.com` via [GoogleProjectService]
/// before apply. Location is typically regional (e.g. `us-central1`).
///
/// Example:
/// ```dart
/// GoogleNetworkSecurityGatewaySecurityPolicy(
///   localName: 'swp',
///   name: TfArg.literal('terradart-gateway-policy'),
///   location: TfArg.literal('us-central1'),
///   description: TfArg.literal('TerraDart smoke gateway security policy'),
/// );
/// ```
final class GoogleNetworkSecurityGatewaySecurityPolicy extends Resource {
  static const String tfType =
      'google_network_security_gateway_security_policy';

  GoogleNetworkSecurityGatewaySecurityPolicy({
    required super.localName,
    required TfArg<String> name,
    TfArg<String>? location,
    TfArg<String>? description,
    TfArg<String>? tlsInspectionPolicy,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           if (location != null) 'location': location,
           if (description != null) 'description': description,
           if (tlsInspectionPolicy != null)
             'tls_inspection_policy': tlsInspectionPolicy,
           if (project != null) 'project': project,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleNetworkSecurityGatewaySecurityPolicySensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `create_time` attribute.
  TfRef<String> get createTime => TfRef.attribute<String>(this, 'create_time');

  /// Reference to `self_link` attribute.
  TfRef<String> get selfLink => TfRef.attribute<String>(this, 'self_link');

  /// Reference to `update_time` attribute.
  TfRef<String> get updateTime => TfRef.attribute<String>(this, 'update_time');
}
