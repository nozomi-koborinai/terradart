// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

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
    required TfArg<List<String>> natSubnets,
    TfArg<String>? project,
    TfArg<num>? propagatedConnectionLimit,
    TfArg<bool>? reconcileConnections,
    TfArg<String>? region,
    TfArg<bool>? sendPropagatedConnectionLimitIfZero,
    TfArg<bool>? showNatIps,
    required TfArg<String> targetService,
    TfArg<List<Map<String, dynamic>>>? consumerAcceptLists,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'connection_preference': connectionPreference,
           if (consumerRejectLists != null)
             'consumer_reject_lists': consumerRejectLists,
           if (description != null) 'description': description,
           if (domainNames != null) 'domain_names': domainNames,
           'enable_proxy_protocol': enableProxyProtocol,
           'name': name,
           'nat_subnets': natSubnets,
           if (project != null) 'project': project,
           if (propagatedConnectionLimit != null)
             'propagated_connection_limit': propagatedConnectionLimit,
           if (reconcileConnections != null)
             'reconcile_connections': reconcileConnections,
           if (region != null) 'region': region,
           if (sendPropagatedConnectionLimitIfZero != null)
             'send_propagated_connection_limit_if_zero':
                 sendPropagatedConnectionLimitIfZero,
           if (showNatIps != null) 'show_nat_ips': showNatIps,
           'target_service': targetService,
           if (consumerAcceptLists != null)
             'consumer_accept_lists': consumerAcceptLists,
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
}
