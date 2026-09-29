// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_active_directory_peering`.
const Set<String> _googleActiveDirectoryPeeringSensitive = <String>{};

/// Factory wrapper for `google_active_directory_peering`.
///
/// Creates a Peering for Managed AD instance.
final class GoogleActiveDirectoryPeering extends Resource {
  static const String tfType = 'google_active_directory_peering';

  GoogleActiveDirectoryPeering({
    required super.localName,
    required TfArg<String> authorizedNetwork,
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
           'authorized_network': authorizedNetwork,
           if (deletionPolicy != null) 'deletion_policy': deletionPolicy,
           'domain_resource': domainResource,
           if (labels != null) 'labels': labels,
           'peering_id': peeringId,
           if (project != null) 'project': project,
           if (status != null) 'status': status,
           if (statusMessage != null) 'status_message': statusMessage,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleActiveDirectoryPeeringSensitive;

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
}
