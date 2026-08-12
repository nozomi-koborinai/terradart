// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_compute_network_attachment`.
const Set<String> _googleComputeNetworkAttachmentSensitive = <String>{};

/// Compute Network Attachment Connection enum for `connection_preference`.
enum ComputeNetworkAttachmentConnectionPreference implements TerraformEnum {
  acceptAutomatic('ACCEPT_AUTOMATIC'),
  acceptManual('ACCEPT_MANUAL'),
  invalid('INVALID');

  const ComputeNetworkAttachmentConnectionPreference(this.terraformValue);
  @override
  final String terraformValue;
}

/// Factory wrapper for `google_compute_network_attachment`.
///
/// A network attachment is a resource that lets a producer Virtual Private
/// Cloud (VPC) network initiate connections to a consumer VPC network through a
/// Private Service Connect interface.
///
/// A regional Network Attachment for Private Service Connect producer
/// acceptance. Consumers connect into the listed [subnetworks]; use
/// [connectionPreference] (`ACCEPT_AUTOMATIC` / `ACCEPT_MANUAL`) plus
/// optional producer accept/reject project lists.
final class GoogleComputeNetworkAttachment extends Resource {
  static const String tfType = 'google_compute_network_attachment';

  GoogleComputeNetworkAttachment({
    required super.localName,
    required TfArg<String> name,
    TfArg<String>? region,
    required TfArg<ComputeNetworkAttachmentConnectionPreference>
    connectionPreference,
    required TfArg<List<String>> subnetworks,
    TfArg<String>? description,
    TfArg<List<String>>? producerAcceptLists,
    TfArg<List<String>>? producerRejectLists,
    TfArg<String>? deletionPolicy,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           if (region != null) 'region': region,
           'connection_preference': connectionPreference,
           'subnetworks': subnetworks,
           if (description != null) 'description': description,
           if (producerAcceptLists != null)
             'producer_accept_lists': producerAcceptLists,
           if (producerRejectLists != null)
             'producer_reject_lists': producerRejectLists,
           if (deletionPolicy != null) 'deletion_policy': deletionPolicy,
           if (project != null) 'project': project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleComputeNetworkAttachmentSensitive;

  /// Reference to `kind` attribute.
  TfRef<String> get kindRef => TfRef.attribute<String>(this, 'kind');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `connection_endpoints` attribute.
  TfRef<List<Map<String, Object?>>> get connectionEndpoints =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'connection_endpoints');

  /// Reference to `creation_timestamp` attribute.
  TfRef<String> get creationTimestamp =>
      TfRef.attribute<String>(this, 'creation_timestamp');

  /// Reference to `fingerprint` attribute.
  TfRef<String> get fingerprint => TfRef.attribute<String>(this, 'fingerprint');

  /// Reference to `network` attribute.
  TfRef<String> get network => TfRef.attribute<String>(this, 'network');

  /// Reference to `self_link_with_id` attribute.
  TfRef<String> get selfLinkWithId =>
      TfRef.attribute<String>(this, 'self_link_with_id');

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `self_link` attribute.
  TfRef<String> get selfLink => TfRef.attribute<String>(this, 'self_link');
}
