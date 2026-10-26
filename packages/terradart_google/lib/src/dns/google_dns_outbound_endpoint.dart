// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../compute/google_compute_network.dart' show GoogleComputeNetwork;
import '../compute/google_compute_subnetwork.dart' show GoogleComputeSubnetwork;

/// Sensitive field paths for `google_dns_outbound_endpoint`.
const Set<String> _googleDnsOutboundEndpointSensitive = <String>{};

/// Factory wrapper for `google_dns_outbound_endpoint`.
///
/// An OutboundEndpoint is a regional resource to enable outbound forwarding
/// from a private IP range in VPCs to on-premise or other networks.
final class GoogleDnsOutboundEndpoint extends Resource {
  static const String tfType = 'google_dns_outbound_endpoint';

  GoogleDnsOutboundEndpoint(
    super.localName, {
    TfArg<Map<String, String>>? annotations,
    TfArg<String>? deletionPolicy,
    TfArg<String>? description,
    TfArg<String>? endpointIp,
    TfArg<Map<String, String>>? labels,
    required TfArg<String> location,
    required TfArg<String> name,
    required RefTo<GoogleComputeNetwork> network,
    TfArg<String>? project,
    required RefTo<GoogleComputeSubnetwork> subnetwork,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'annotations': ?annotations,
           'deletion_policy': ?deletionPolicy,
           'description': ?description,
           'endpoint_ip': ?endpointIp,
           'labels': ?labels,
           'location': location,
           'name': name,
           'network': network.encodeAs('id'),
           'project': ?project,
           'subnetwork': subnetwork.encodeAs('id'),
         },
       );

  @override
  Set<String> get sensitiveFields => _googleDnsOutboundEndpointSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleDnsOutboundEndpoint>`.
  RefTo<GoogleDnsOutboundEndpoint> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `create_time` attribute.
  TfRef<String> get createTime => TfRef.attribute<String>(this, 'create_time');

  /// Reference to `effective_annotations` attribute.
  TfRef<Map<String, String>> get effectiveAnnotations =>
      TfRef.attribute<Map<String, String>>(this, 'effective_annotations');

  /// Reference to `effective_labels` attribute.
  TfRef<Map<String, String>> get effectiveLabels =>
      TfRef.attribute<Map<String, String>>(this, 'effective_labels');

  /// Reference to `terraform_labels` attribute.
  TfRef<Map<String, String>> get terraformLabels =>
      TfRef.attribute<Map<String, String>>(this, 'terraform_labels');

  /// Reference to `update_time` attribute.
  TfRef<String> get updateTime => TfRef.attribute<String>(this, 'update_time');

  /// Reference to `annotations` attribute.
  TfRef<Map<String, String>> get annotations =>
      TfRef.attribute<Map<String, String>>(this, 'annotations');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicy =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `endpoint_ip` attribute.
  TfRef<String> get endpointIp => TfRef.attribute<String>(this, 'endpoint_ip');

  /// Reference to `labels` attribute.
  TfRef<Map<String, String>> get labels =>
      TfRef.attribute<Map<String, String>>(this, 'labels');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `network` attribute.
  TfRef<String> get network => TfRef.attribute<String>(this, 'network');

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');

  /// Reference to `subnetwork` attribute.
  TfRef<String> get subnetwork => TfRef.attribute<String>(this, 'subnetwork');
}
