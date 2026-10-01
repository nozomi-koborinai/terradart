// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../compute/google_compute_network.dart' show GoogleComputeNetwork;
import '../compute/google_compute_subnetwork.dart' show GoogleComputeSubnetwork;

/// Sensitive field paths for `google_compute_service_attachment`.
const Set<String> _googleComputeServiceAttachmentSensitive = <String>{};

/// Connection preference for `google_compute_service_attachment.connection_preference`.
enum ServiceAttachmentConnectionPreference implements TerraformEnum {
  acceptAutomatic('ACCEPT_AUTOMATIC'),
  acceptManual('ACCEPT_MANUAL');

  const ServiceAttachmentConnectionPreference(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `consumer_accept_lists` block of
/// `google_compute_service_attachment` (derived from provider schema).
@immutable
final class ComputeServiceAttachmentConsumerAcceptLists {
  const ComputeServiceAttachmentConsumerAcceptLists({
    required this.connectionLimit,
    this.endpointUrl,
    this.networkUrl,
    this.projectIdOrNum,
  });

  final TfArg<num> connectionLimit;

  final TfArg<String>? endpointUrl;

  final RefTo<GoogleComputeNetwork>? networkUrl;

  final TfArg<String>? projectIdOrNum;

  Map<String, Object?> encode() => {
    'connection_limit': connectionLimit.toTfJson(),
    'endpoint_url': ?endpointUrl?.toTfJson(),
    'network_url': ?networkUrl?.encodeAs('id').toTfJson(),
    'project_id_or_num': ?projectIdOrNum?.toTfJson(),
  };
}

/// Factory wrapper for `google_compute_service_attachment`.
///
/// Represents a ServiceAttachment resource.
final class GoogleComputeServiceAttachment extends Resource {
  static const String tfType = 'google_compute_service_attachment';

  GoogleComputeServiceAttachment({
    required super.localName,
    required TfArg<ServiceAttachmentConnectionPreference> connectionPreference,
    TfArg<List<String>>? consumerRejectLists,
    TfArg<String>? description,
    TfArg<List<String>>? domainNames,
    required TfArg<bool> enableProxyProtocol,
    required TfArg<String> name,
    required TfArg<List<RefTo<GoogleComputeSubnetwork>>> natSubnets,
    TfArg<String>? project,
    TfArg<num>? propagatedConnectionLimit,
    TfArg<bool>? reconcileConnections,
    TfArg<String>? region,
    TfArg<bool>? sendPropagatedConnectionLimitIfZero,
    TfArg<bool>? showNatIps,
    required TfArg<String> targetService,
    List<ComputeServiceAttachmentConsumerAcceptLists>? consumerAcceptLists,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'connection_preference': connectionPreference,
           'consumer_reject_lists': ?consumerRejectLists,
           'description': ?description,
           'domain_names': ?domainNames,
           'enable_proxy_protocol': enableProxyProtocol,
           'name': name,
           'nat_subnets': natSubnets.encodeAs('self_link'),
           'project': ?project,
           'propagated_connection_limit': ?propagatedConnectionLimit,
           'reconcile_connections': ?reconcileConnections,
           'region': ?region,
           'send_propagated_connection_limit_if_zero':
               ?sendPropagatedConnectionLimitIfZero,
           'show_nat_ips': ?showNatIps,
           'target_service': targetService,
           if (consumerAcceptLists != null)
             'consumer_accept_lists': TfArg.literal([
               for (final e in consumerAcceptLists) e.encode(),
             ]),
         },
       );

  @override
  Set<String> get sensitiveFields => _googleComputeServiceAttachmentSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleComputeServiceAttachment>`.
  RefTo<GoogleComputeServiceAttachment> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `connected_endpoints` attribute.
  TfRef<List<Map<String, Object?>>> get connectedEndpoints =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'connected_endpoints');

  /// Reference to `fingerprint` attribute.
  TfRef<String> get fingerprint => TfRef.attribute<String>(this, 'fingerprint');

  /// Reference to `psc_service_attachment_id` attribute.
  TfRef<List<Map<String, Object?>>> get pscServiceAttachmentId =>
      TfRef.attribute<List<Map<String, Object?>>>(
        this,
        'psc_service_attachment_id',
      );

  /// Reference to `self_link` attribute.
  TfRef<String> get selfLink => TfRef.attribute<String>(this, 'self_link');

  /// Reference to `connection_preference` attribute.
  TfRef<String> get connectionPreferenceRef =>
      TfRef.attribute<String>(this, 'connection_preference');

  /// Reference to `consumer_reject_lists` attribute.
  TfRef<List<String>> get consumerRejectListsRef =>
      TfRef.attribute<List<String>>(this, 'consumer_reject_lists');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicyRef =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `description` attribute.
  TfRef<String> get descriptionRef =>
      TfRef.attribute<String>(this, 'description');

  /// Reference to `domain_names` attribute.
  TfRef<List<String>> get domainNamesRef =>
      TfRef.attribute<List<String>>(this, 'domain_names');

  /// Reference to `enable_proxy_protocol` attribute.
  TfRef<bool> get enableProxyProtocolRef =>
      TfRef.attribute<bool>(this, 'enable_proxy_protocol');

  /// Reference to `nat_subnets` attribute.
  TfRef<List<String>> get natSubnetsRef =>
      TfRef.attribute<List<String>>(this, 'nat_subnets');

  /// Reference to `project` attribute.
  TfRef<String> get projectRef => TfRef.attribute<String>(this, 'project');

  /// Reference to `propagated_connection_limit` attribute.
  TfRef<num> get propagatedConnectionLimitRef =>
      TfRef.attribute<num>(this, 'propagated_connection_limit');

  /// Reference to `reconcile_connections` attribute.
  TfRef<bool> get reconcileConnectionsRef =>
      TfRef.attribute<bool>(this, 'reconcile_connections');

  /// Reference to `region` attribute.
  TfRef<String> get regionRef => TfRef.attribute<String>(this, 'region');

  /// Reference to `send_propagated_connection_limit_if_zero` attribute.
  TfRef<bool> get sendPropagatedConnectionLimitIfZeroRef =>
      TfRef.attribute<bool>(this, 'send_propagated_connection_limit_if_zero');

  /// Reference to `show_nat_ips` attribute.
  TfRef<bool> get showNatIpsRef => TfRef.attribute<bool>(this, 'show_nat_ips');

  /// Reference to `target_service` attribute.
  TfRef<String> get targetServiceRef =>
      TfRef.attribute<String>(this, 'target_service');
}
