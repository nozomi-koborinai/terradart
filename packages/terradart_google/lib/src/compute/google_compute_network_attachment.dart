// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../compute/google_compute_subnetwork.dart' show GoogleComputeSubnetwork;

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

  GoogleComputeNetworkAttachment(
    super.localName, {
    required TfArg<String> name,
    TfArg<String>? region,
    required TfArg<ComputeNetworkAttachmentConnectionPreference>
    connectionPreference,
    required TfArg<List<RefTo<GoogleComputeSubnetwork>>> subnetworks,
    TfArg<String>? description,
    TfArg<List<String>>? producerAcceptLists,
    TfArg<List<String>>? producerRejectLists,
    TfArg<String>? deletionPolicy,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           'region': ?region,
           'connection_preference': connectionPreference,
           'subnetworks': subnetworks.encodeAs('self_link'),
           'description': ?description,
           'producer_accept_lists': ?producerAcceptLists,
           'producer_reject_lists': ?producerRejectLists,
           'deletion_policy': ?deletionPolicy,
           'project': ?project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleComputeNetworkAttachmentSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleComputeNetworkAttachment>`.
  RefTo<GoogleComputeNetworkAttachment> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `kind` attribute.
  TfRef<String> get kindAttr => TfRef.attribute<String>(this, 'kind');

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

  /// Reference to `connection_preference` attribute.
  TfRef<String> get connectionPreference =>
      TfRef.attribute<String>(this, 'connection_preference');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicy =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `producer_accept_lists` attribute.
  TfRef<List<String>> get producerAcceptLists =>
      TfRef.attribute<List<String>>(this, 'producer_accept_lists');

  /// Reference to `producer_reject_lists` attribute.
  TfRef<List<String>> get producerRejectLists =>
      TfRef.attribute<List<String>>(this, 'producer_reject_lists');

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `subnetworks` attribute.
  TfRef<List<String>> get subnetworks =>
      TfRef.attribute<List<String>>(this, 'subnetworks');

  /// Reference to `self_link` attribute.
  TfRef<String> get selfLink => TfRef.attribute<String>(this, 'self_link');
}
