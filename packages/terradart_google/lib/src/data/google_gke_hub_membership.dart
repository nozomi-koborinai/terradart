// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_gke_hub_membership`.
const Set<String> _googleGkeHubMembershipSensitive = <String>{};

/// Factory wrapper for `google_gke_hub_membership`.
///
/// Read-only data source on the apply-excluded leftover path
/// (synth + `terraform validate` only). Do not apply.
final class DataGoogleGkeHubMembership extends Data {
  static const String tfType = 'google_gke_hub_membership';

  DataGoogleGkeHubMembership({
    required super.localName,
    required TfArg<String> location,
    required TfArg<String> membershipId,
    TfArg<String>? project,
  }) : super(
         terraformType: tfType,
         argMap: {
           'location': location,
           'membership_id': membershipId,
           if (project != null) 'project': project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleGkeHubMembershipSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `authority` attribute.
  TfRef<List<Map<String, Object?>>> get authority =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'authority');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicy =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `effective_labels` attribute.
  TfRef<Map<String, String>> get effectiveLabels =>
      TfRef.attribute<Map<String, String>>(this, 'effective_labels');

  /// Reference to `endpoint` attribute.
  TfRef<List<Map<String, Object?>>> get endpoint =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'endpoint');

  /// Reference to `labels` attribute.
  TfRef<Map<String, String>> get labels =>
      TfRef.attribute<Map<String, String>>(this, 'labels');

  /// Reference to `terraform_labels` attribute.
  TfRef<Map<String, String>> get terraformLabels =>
      TfRef.attribute<Map<String, String>>(this, 'terraform_labels');
}
