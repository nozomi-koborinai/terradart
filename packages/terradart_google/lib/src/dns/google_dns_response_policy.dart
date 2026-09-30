// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_dns_response_policy`.
const Set<String> _googleDnsResponsePolicySensitive = <String>{};

/// Typed helper for the `gke_clusters` block of
/// `google_dns_response_policy` (derived from provider schema).
@immutable
final class DnsResponsePolicyGkeClusters {
  const DnsResponsePolicyGkeClusters({required this.gkeClusterName});

  final TfArg<String> gkeClusterName;

  Map<String, Object?> encode() => {
    'gke_cluster_name': gkeClusterName.toTfJson(),
  };
}

/// Typed helper for the `networks` block of
/// `google_dns_response_policy` (derived from provider schema).
@immutable
final class DnsResponsePolicyNetworks {
  const DnsResponsePolicyNetworks({required this.networkUrl});

  final TfArg<String> networkUrl;

  Map<String, Object?> encode() => {'network_url': networkUrl.toTfJson()};
}

/// Factory wrapper for `google_dns_response_policy`.
///
/// A Response Policy is a collection of selectors that apply to queries made
/// against one or more Virtual Private Cloud networks.
final class GoogleDnsResponsePolicy extends Resource {
  static const String tfType = 'google_dns_response_policy';

  GoogleDnsResponsePolicy({
    required super.localName,
    required TfArg<String> responsePolicyName,
    TfArg<String>? description,
    TfArg<String>? project,
    List<DnsResponsePolicyNetworks>? networks,
    List<DnsResponsePolicyGkeClusters>? gkeClusters,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'response_policy_name': responsePolicyName,
           'description': ?description,
           'project': ?project,
           if (networks != null)
             'networks': TfArg.literal([for (final e in networks) e.encode()]),
           if (gkeClusters != null)
             'gke_clusters': TfArg.literal([
               for (final e in gkeClusters) e.encode(),
             ]),
         },
       );

  @override
  Set<String> get sensitiveFields => _googleDnsResponsePolicySensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleDnsResponsePolicy>`.
  RefTo<GoogleDnsResponsePolicy> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicyRef =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `description` attribute.
  TfRef<String> get descriptionRef =>
      TfRef.attribute<String>(this, 'description');

  /// Reference to `project` attribute.
  TfRef<String> get projectRef => TfRef.attribute<String>(this, 'project');

  /// Reference to `response_policy_name` attribute.
  TfRef<String> get responsePolicyNameRef =>
      TfRef.attribute<String>(this, 'response_policy_name');
}
