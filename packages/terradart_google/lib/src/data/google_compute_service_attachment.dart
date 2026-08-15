// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_compute_service_attachment`.
const Set<String> _googleComputeServiceAttachmentSensitive = <String>{};

/// Factory wrapper for `google_compute_service_attachment`.
///
/// Read-only data source on the apply-excluded leftover path
/// (synth + `terraform validate` only). Do not apply.
final class DataGoogleComputeServiceAttachment extends Data {
  static const String tfType = 'google_compute_service_attachment';

  DataGoogleComputeServiceAttachment({
    required super.localName,
    required TfArg<String> name,
    TfArg<String>? project,
    TfArg<String>? region,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           if (project != null) 'project': project,
           if (region != null) 'region': region,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleComputeServiceAttachmentSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `connected_endpoints` attribute.
  TfRef<List<Map<String, Object?>>> get connectedEndpoints =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'connected_endpoints');

  /// Reference to `connection_preference` attribute.
  TfRef<String> get connectionPreference =>
      TfRef.attribute<String>(this, 'connection_preference');

  /// Reference to `consumer_accept_lists` attribute.
  TfRef<List<Map<String, Object?>>> get consumerAcceptLists =>
      TfRef.attribute<List<Map<String, Object?>>>(
        this,
        'consumer_accept_lists',
      );

  /// Reference to `consumer_reject_lists` attribute.
  TfRef<List<String>> get consumerRejectLists =>
      TfRef.attribute<List<String>>(this, 'consumer_reject_lists');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicy =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `domain_names` attribute.
  TfRef<List<String>> get domainNames =>
      TfRef.attribute<List<String>>(this, 'domain_names');

  /// Reference to `enable_proxy_protocol` attribute.
  TfRef<bool> get enableProxyProtocol =>
      TfRef.attribute<bool>(this, 'enable_proxy_protocol');

  /// Reference to `fingerprint` attribute.
  TfRef<String> get fingerprint => TfRef.attribute<String>(this, 'fingerprint');

  /// Reference to `nat_subnets` attribute.
  TfRef<List<String>> get natSubnets =>
      TfRef.attribute<List<String>>(this, 'nat_subnets');

  /// Reference to `propagated_connection_limit` attribute.
  TfRef<num> get propagatedConnectionLimit =>
      TfRef.attribute<num>(this, 'propagated_connection_limit');

  /// Reference to `psc_service_attachment_id` attribute.
  TfRef<List<Map<String, Object?>>> get pscServiceAttachmentId =>
      TfRef.attribute<List<Map<String, Object?>>>(
        this,
        'psc_service_attachment_id',
      );

  /// Reference to `reconcile_connections` attribute.
  TfRef<bool> get reconcileConnections =>
      TfRef.attribute<bool>(this, 'reconcile_connections');

  /// Reference to `self_link` attribute.
  TfRef<String> get selfLink => TfRef.attribute<String>(this, 'self_link');

  /// Reference to `send_propagated_connection_limit_if_zero` attribute.
  TfRef<bool> get sendPropagatedConnectionLimitIfZero =>
      TfRef.attribute<bool>(this, 'send_propagated_connection_limit_if_zero');

  /// Reference to `show_nat_ips` attribute.
  TfRef<bool> get showNatIps => TfRef.attribute<bool>(this, 'show_nat_ips');

  /// Reference to `target_service` attribute.
  TfRef<String> get targetService =>
      TfRef.attribute<String>(this, 'target_service');
}
