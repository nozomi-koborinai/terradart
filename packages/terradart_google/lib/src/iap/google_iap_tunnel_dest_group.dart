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
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'group_name': groupName,
           'region': ?region,
           'cidrs': ?cidrs,
           'fqdns': ?fqdns,
           'deletion_policy': ?deletionPolicy,
           'project': ?project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleIapTunnelDestGroupSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleIapTunnelDestGroup>`.
  RefTo<GoogleIapTunnelDestGroup> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `cidrs` attribute.
  TfRef<List<String>> get cidrs => TfRef.attribute<List<String>>(this, 'cidrs');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicy =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `fqdns` attribute.
  TfRef<List<String>> get fqdns => TfRef.attribute<List<String>>(this, 'fqdns');

  /// Reference to `group_name` attribute.
  TfRef<String> get groupName => TfRef.attribute<String>(this, 'group_name');

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');
}
