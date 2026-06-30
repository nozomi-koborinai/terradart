// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_network_management_connectivity_test`.
const Set<String> _googleNetworkManagementConnectivityTestSensitive =
    <String>{};

/// Factory wrapper for `google_network_management_connectivity_test`.
///
/// A connectivity test are a static analysis of your resource configurations
/// that enables you to evaluate connectivity to and from Google Cloud resources
/// in your Virtual Private Cloud (VPC) network.
///
/// Network Management connectivity test — probes reachability between a
/// [source] and [destination] endpoint (IP, FQDN, GCE instance, etc.).
///
/// Enable `networkmanagement.googleapis.com` before apply.
///
/// Example:
/// ```dart
/// GoogleNetworkManagementConnectivityTest(
///   localName: 'dns_probe',
///   name: TfArg.literal('dns-probe'),
///   protocol: TfArg.literal('TCP'),
///   source: TfArg.literal([
///     {'ip_address': '10.0.0.1', 'port': 53},
///   ]),
///   destination: TfArg.literal([
///     {'ip_address': '8.8.8.8', 'port': 53},
///   ]),
/// );
/// ```
final class GoogleNetworkManagementConnectivityTest extends Resource {
  static const String tfType = 'google_network_management_connectivity_test';

  GoogleNetworkManagementConnectivityTest({
    required super.localName,
    required TfArg<String> name,
    TfArg<String>? protocol,
    required TfArg<Map<String, dynamic>> source,
    required TfArg<Map<String, dynamic>> destination,
    TfArg<String>? description,
    TfArg<String>? project,
    TfArg<String>? deletionPolicy,
    TfArg<bool>? bypassFirewallChecks,
    TfArg<List<String>>? relatedProjects,
    TfArg<bool>? roundTrip,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           if (protocol != null) 'protocol': protocol,
           'source': source,
           'destination': destination,
           if (description != null) 'description': description,
           if (project != null) 'project': project,
           if (deletionPolicy != null) 'deletion_policy': deletionPolicy,
           if (bypassFirewallChecks != null)
             'bypass_firewall_checks': bypassFirewallChecks,
           if (relatedProjects != null) 'related_projects': relatedProjects,
           if (roundTrip != null) 'round_trip': roundTrip,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleNetworkManagementConnectivityTestSensitive;

  /// Reference to `effective_labels` attribute.
  TfRef<Map<String, String>> get effectiveLabels =>
      TfRef.attribute<Map<String, String>>(this, 'effective_labels');

  /// Reference to `terraform_labels` attribute.
  TfRef<Map<String, String>> get terraformLabels =>
      TfRef.attribute<Map<String, String>>(this, 'terraform_labels');

  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');
}
