// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../container/google_gke_hub_membership_binding.dart';

/// Sensitive field paths for `google_gke_hub_membership_binding`.
const Set<String> _googleGkeHubMembershipBindingSensitive = <String>{};

/// Factory wrapper for `google_gke_hub_membership_binding`.
///
/// Read-only data source on the apply-excluded leftover path
/// (synth + `terraform validate` only). Do not apply.
final class DataGoogleGkeHubMembershipBinding extends Data {
  static const String tfType = 'google_gke_hub_membership_binding';

  DataGoogleGkeHubMembershipBinding(
    super.localName, {
    required TfArg<String> location,
    required TfArg<String> membershipBindingId,
    required TfArg<String> membershipId,
    TfArg<String>? project,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'location': location,
           'membership_binding_id': membershipBindingId,
           'membership_id': membershipId,
           'project': ?project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleGkeHubMembershipBindingSensitive;

  /// A reference to the `google_gke_hub_membership_binding` this data source reads, for
  /// arguments typed `RefTo<GoogleGkeHubMembershipBinding>`.
  RefTo<GoogleGkeHubMembershipBinding> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `create_time` attribute.
  TfRef<String> get createTime => TfRef.attribute<String>(this, 'create_time');

  /// Reference to `delete_time` attribute.
  TfRef<String> get deleteTime => TfRef.attribute<String>(this, 'delete_time');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicy =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `effective_labels` attribute.
  TfRef<Map<String, String>> get effectiveLabels =>
      TfRef.attribute<Map<String, String>>(this, 'effective_labels');

  /// Reference to `labels` attribute.
  TfRef<Map<String, String>> get labels =>
      TfRef.attribute<Map<String, String>>(this, 'labels');

  /// Reference to `scope` attribute.
  TfRef<String> get scope => TfRef.attribute<String>(this, 'scope');

  /// Reference to `state` attribute.
  TfRef<List<Map<String, Object?>>> get state =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'state');

  /// Reference to `terraform_labels` attribute.
  TfRef<Map<String, String>> get terraformLabels =>
      TfRef.attribute<Map<String, String>>(this, 'terraform_labels');

  /// Reference to `uid` attribute.
  TfRef<String> get uid => TfRef.attribute<String>(this, 'uid');

  /// Reference to `update_time` attribute.
  TfRef<String> get updateTime => TfRef.attribute<String>(this, 'update_time');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `membership_binding_id` attribute.
  TfRef<String> get membershipBindingId =>
      TfRef.attribute<String>(this, 'membership_binding_id');

  /// Reference to `membership_id` attribute.
  TfRef<String> get membershipId =>
      TfRef.attribute<String>(this, 'membership_id');

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');
}
