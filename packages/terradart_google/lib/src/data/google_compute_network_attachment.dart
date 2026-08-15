// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_compute_network_attachment`.
const Set<String> _googleComputeNetworkAttachmentSensitive = <String>{};

/// Factory wrapper for `google_compute_network_attachment`.
///
/// Read-only data source on the apply-excluded leftover path
/// (synth + `terraform validate` only). Do not apply.
final class DataGoogleComputeNetworkAttachment extends Data {
  static const String tfType = 'google_compute_network_attachment';

  DataGoogleComputeNetworkAttachment({
    required super.localName,
    required TfArg<String> name,
    TfArg<String>? project,
    required TfArg<String> region,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           if (project != null) 'project': project,
           'region': region,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleComputeNetworkAttachmentSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `kind` attribute.
  TfRef<String> get kindRef => TfRef.attribute<String>(this, 'kind');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `connection_endpoints` attribute.
  TfRef<List<Map<String, Object?>>> get connectionEndpoints =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'connection_endpoints');

  /// Reference to `connection_preference` attribute.
  TfRef<String> get connectionPreference =>
      TfRef.attribute<String>(this, 'connection_preference');

  /// Reference to `creation_timestamp` attribute.
  TfRef<String> get creationTimestamp =>
      TfRef.attribute<String>(this, 'creation_timestamp');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicy =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `fingerprint` attribute.
  TfRef<String> get fingerprint => TfRef.attribute<String>(this, 'fingerprint');

  /// Reference to `network` attribute.
  TfRef<String> get network => TfRef.attribute<String>(this, 'network');

  /// Reference to `producer_accept_lists` attribute.
  TfRef<List<String>> get producerAcceptLists =>
      TfRef.attribute<List<String>>(this, 'producer_accept_lists');

  /// Reference to `producer_reject_lists` attribute.
  TfRef<List<String>> get producerRejectLists =>
      TfRef.attribute<List<String>>(this, 'producer_reject_lists');

  /// Reference to `self_link` attribute.
  TfRef<String> get selfLink => TfRef.attribute<String>(this, 'self_link');

  /// Reference to `self_link_with_id` attribute.
  TfRef<String> get selfLinkWithId =>
      TfRef.attribute<String>(this, 'self_link_with_id');

  /// Reference to `subnetworks` attribute.
  TfRef<List<String>> get subnetworks =>
      TfRef.attribute<List<String>>(this, 'subnetworks');
}
