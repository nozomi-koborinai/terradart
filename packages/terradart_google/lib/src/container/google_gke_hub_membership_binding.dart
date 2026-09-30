// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_gke_hub_membership_binding`.
const Set<String> _googleGkeHubMembershipBindingSensitive = <String>{};

/// Factory wrapper for `google_gke_hub_membership_binding`.
///
/// MembershipBinding is a subresource of a Membership, representing what Fleet
/// Scopes (or other, future Fleet resources) a Membership is bound to.
///
/// Leftover factory on the apply-excluded path
/// (synth + `terraform validate` only).
///
/// Needs an organization / folder / billing account /
/// external artifact that standalone terradart-validate
/// cannot supply. Do not apply.
final class GoogleGkeHubMembershipBinding extends Resource {
  static const String tfType = 'google_gke_hub_membership_binding';

  GoogleGkeHubMembershipBinding({
    required super.localName,
    TfArg<String>? deletionPolicy,
    TfArg<Map<String, String>>? labels,
    required TfArg<String> location,
    required TfArg<String> membershipBindingId,
    required TfArg<String> membershipId,
    TfArg<String>? project,
    required TfArg<String> scope,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'deletion_policy': ?deletionPolicy,
           'labels': ?labels,
           'location': location,
           'membership_binding_id': membershipBindingId,
           'membership_id': membershipId,
           'project': ?project,
           'scope': scope,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleGkeHubMembershipBindingSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleGkeHubMembershipBinding>`.
  RefTo<GoogleGkeHubMembershipBinding> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `create_time` attribute.
  TfRef<String> get createTime => TfRef.attribute<String>(this, 'create_time');

  /// Reference to `delete_time` attribute.
  TfRef<String> get deleteTime => TfRef.attribute<String>(this, 'delete_time');

  /// Reference to `effective_labels` attribute.
  TfRef<Map<String, String>> get effectiveLabels =>
      TfRef.attribute<Map<String, String>>(this, 'effective_labels');

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

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicyRef =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `labels` attribute.
  TfRef<Map<String, String>> get labelsRef =>
      TfRef.attribute<Map<String, String>>(this, 'labels');

  /// Reference to `location` attribute.
  TfRef<String> get locationRef => TfRef.attribute<String>(this, 'location');

  /// Reference to `membership_binding_id` attribute.
  TfRef<String> get membershipBindingIdRef =>
      TfRef.attribute<String>(this, 'membership_binding_id');

  /// Reference to `membership_id` attribute.
  TfRef<String> get membershipIdRef =>
      TfRef.attribute<String>(this, 'membership_id');

  /// Reference to `project` attribute.
  TfRef<String> get projectRef => TfRef.attribute<String>(this, 'project');

  /// Reference to `scope` attribute.
  TfRef<String> get scopeRef => TfRef.attribute<String>(this, 'scope');
}
