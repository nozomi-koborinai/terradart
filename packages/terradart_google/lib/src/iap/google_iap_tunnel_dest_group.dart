// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_iap_tunnel_dest_group`.
const Set<String> _googleIapTunnelDestGroupSensitive = <String>{};

/// Factory wrapper for `google_iap_tunnel_dest_group`.
///
/// Tunnel destination groups represent resources that have the same tunnel
/// access restrictions.
///
/// IAP **tunnel destination group** — CIDRs/FQDNs that share the same
/// TCP-forwarding access restrictions.
///
/// Used with IAP TCP forwarding (`gcloud compute start-iap-tunnel` / TCP-by-host).
/// Creating a group alone does not open tunnels or bill Chrome Enterprise
/// Premium; Cloud IAP for GCP-hosted targets is free per Google Cloud pricing.
///
/// Enable `iap.googleapis.com` via [GoogleProjectService] before apply.
/// Set [region] to match the network resources in the group (provider
/// region is used when omitted).
///
/// Example:
/// ```dart
/// GoogleIapTunnelDestGroup(
///   localName: 'internal',
///   groupName: TfArg.literal('terradart-internal'),
///   region: TfArg.literal('us-central1'),
///   cidrs: TfArg.literal(['10.1.0.0/16']),
/// );
/// ```
final class GoogleIapTunnelDestGroup extends Resource {
  static const String tfType = 'google_iap_tunnel_dest_group';

  GoogleIapTunnelDestGroup({
    required super.localName,
    required TfArg<String> groupName,
    TfArg<String>? region,
    TfArg<List<String>>? cidrs,
    TfArg<List<String>>? fqdns,
    TfArg<String>? deletionPolicy,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'group_name': groupName,
           if (region != null) 'region': region,
           if (cidrs != null) 'cidrs': cidrs,
           if (fqdns != null) 'fqdns': fqdns,
           if (deletionPolicy != null) 'deletion_policy': deletionPolicy,
           if (project != null) 'project': project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleIapTunnelDestGroupSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}
