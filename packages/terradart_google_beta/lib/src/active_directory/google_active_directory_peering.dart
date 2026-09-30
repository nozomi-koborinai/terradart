// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import 'package:terradart_google/terradart_google.dart'
    show GoogleComputeNetwork;

/// Sensitive field paths for `google_active_directory_peering`.
const Set<String> _googleActiveDirectoryPeeringSensitive = <String>{};

/// Factory wrapper for `google_active_directory_peering`.
///
/// Creates a Peering for Managed AD instance.
final class GoogleActiveDirectoryPeering extends Resource {
  static const String tfType = 'google_active_directory_peering';

  GoogleActiveDirectoryPeering({
    required super.localName,
    required RefTo<GoogleComputeNetwork> authorizedNetwork,
    TfArg<String>? deletionPolicy,
    required TfArg<String> domainResource,
    TfArg<Map<String, String>>? labels,
    required TfArg<String> peeringId,
    TfArg<String>? project,
    TfArg<String>? status,
    TfArg<String>? statusMessage,
    super.lifecycle,
    super.dependsOn,
    String? provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         provider: provider ?? 'google-beta',
         argMap: {
           'authorized_network': authorizedNetwork.encodeAs('id'),
           'deletion_policy': ?deletionPolicy,
           'domain_resource': domainResource,
           'labels': ?labels,
           'peering_id': peeringId,
           'project': ?project,
           'status': ?status,
           'status_message': ?statusMessage,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleActiveDirectoryPeeringSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleActiveDirectoryPeering>`.
  RefTo<GoogleActiveDirectoryPeering> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `effective_labels` attribute.
  TfRef<Map<String, String>> get effectiveLabels =>
      TfRef.attribute<Map<String, String>>(this, 'effective_labels');

  /// Reference to `terraform_labels` attribute.
  TfRef<Map<String, String>> get terraformLabels =>
      TfRef.attribute<Map<String, String>>(this, 'terraform_labels');

  /// Reference to `authorized_network` attribute.
  TfRef<String> get authorizedNetworkRef =>
      TfRef.attribute<String>(this, 'authorized_network');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicyRef =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `domain_resource` attribute.
  TfRef<String> get domainResourceRef =>
      TfRef.attribute<String>(this, 'domain_resource');

  /// Reference to `labels` attribute.
  TfRef<Map<String, String>> get labelsRef =>
      TfRef.attribute<Map<String, String>>(this, 'labels');

  /// Reference to `peering_id` attribute.
  TfRef<String> get peeringIdRef => TfRef.attribute<String>(this, 'peering_id');

  /// Reference to `project` attribute.
  TfRef<String> get projectRef => TfRef.attribute<String>(this, 'project');

  /// Reference to `status` attribute.
  TfRef<String> get statusRef => TfRef.attribute<String>(this, 'status');

  /// Reference to `status_message` attribute.
  TfRef<String> get statusMessageRef =>
      TfRef.attribute<String>(this, 'status_message');
}
