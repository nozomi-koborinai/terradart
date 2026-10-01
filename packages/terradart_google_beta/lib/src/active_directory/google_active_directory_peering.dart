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

  GoogleActiveDirectoryPeering(
    super.localName, {
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
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
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

  @override
  String get defaultProvider => 'google-beta';

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleActiveDirectoryPeering>`.
  RefTo<GoogleActiveDirectoryPeering> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `effective_labels` attribute.
  TfRef<Map<String, String>> get effectiveLabels =>
      TfRef.attribute<Map<String, String>>(this, 'effective_labels');

  /// Reference to `terraform_labels` attribute.
  TfRef<Map<String, String>> get terraformLabels =>
      TfRef.attribute<Map<String, String>>(this, 'terraform_labels');

  /// Reference to `authorized_network` attribute.
  TfRef<String> get authorizedNetwork =>
      TfRef.attribute<String>(this, 'authorized_network');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicy =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `domain_resource` attribute.
  TfRef<String> get domainResource =>
      TfRef.attribute<String>(this, 'domain_resource');

  /// Reference to `labels` attribute.
  TfRef<Map<String, String>> get labels =>
      TfRef.attribute<Map<String, String>>(this, 'labels');

  /// Reference to `peering_id` attribute.
  TfRef<String> get peeringId => TfRef.attribute<String>(this, 'peering_id');

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');

  /// Reference to `status` attribute.
  TfRef<String> get status => TfRef.attribute<String>(this, 'status');

  /// Reference to `status_message` attribute.
  TfRef<String> get statusMessage =>
      TfRef.attribute<String>(this, 'status_message');
}
