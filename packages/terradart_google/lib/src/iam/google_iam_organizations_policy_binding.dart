// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_iam_organizations_policy_binding`.
const Set<String> _googleIamOrganizationsPolicyBindingSensitive = <String>{};

/// Typed helper for the `condition` block of
/// `google_iam_organizations_policy_binding` (derived from provider schema).
@immutable
final class IamOrganizationsPolicyBindingCondition {
  const IamOrganizationsPolicyBindingCondition({
    this.description,
    this.expression,
    this.location,
    this.title,
  });

  final TfArg<String>? description;

  final TfArg<String>? expression;

  final TfArg<String>? location;

  final TfArg<String>? title;

  Map<String, Object?> encode() => {
    'description': ?description?.toTfJson(),
    'expression': ?expression?.toTfJson(),
    'location': ?location?.toTfJson(),
    'title': ?title?.toTfJson(),
  };
}

/// Typed helper for the `target` block of
/// `google_iam_organizations_policy_binding` (derived from provider schema).
@immutable
final class IamOrganizationsPolicyBindingTarget {
  const IamOrganizationsPolicyBindingTarget({this.principalSet});

  final TfArg<String>? principalSet;

  Map<String, Object?> encode() => {'principal_set': ?principalSet?.toTfJson()};
}

/// Factory wrapper for `google_iam_organizations_policy_binding`.
///
/// A policy binding to an organization. This is a Terraform resource, and maps
/// to a policy binding resource in GCP.
///
/// Leftover factory on the apply-excluded path
/// (synth + `terraform validate` only).
///
/// Needs an organization / folder / billing account /
/// external artifact that standalone terradart-validate
/// cannot supply. Do not apply.
final class GoogleIamOrganizationsPolicyBinding extends Resource {
  static const String tfType = 'google_iam_organizations_policy_binding';

  GoogleIamOrganizationsPolicyBinding({
    required super.localName,
    TfArg<Map<String, String>>? annotations,
    TfArg<String>? deletionPolicy,
    TfArg<String>? displayName,
    required TfArg<String> location,
    required TfArg<String> organization,
    required TfArg<String> policy,
    required TfArg<String> policyBindingId,
    TfArg<String>? policyKind,
    IamOrganizationsPolicyBindingCondition? condition,
    required IamOrganizationsPolicyBindingTarget target,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'annotations': ?annotations,
           'deletion_policy': ?deletionPolicy,
           'display_name': ?displayName,
           'location': location,
           'organization': organization,
           'policy': policy,
           'policy_binding_id': policyBindingId,
           'policy_kind': ?policyKind,
           if (condition != null)
             'condition': TfArg.literal(condition.encode()),
           'target': TfArg.literal(target.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleIamOrganizationsPolicyBindingSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleIamOrganizationsPolicyBinding>`.
  RefTo<GoogleIamOrganizationsPolicyBinding> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `create_time` attribute.
  TfRef<String> get createTime => TfRef.attribute<String>(this, 'create_time');

  /// Reference to `effective_annotations` attribute.
  TfRef<Map<String, String>> get effectiveAnnotations =>
      TfRef.attribute<Map<String, String>>(this, 'effective_annotations');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');

  /// Reference to `policy_uid` attribute.
  TfRef<String> get policyUid => TfRef.attribute<String>(this, 'policy_uid');

  /// Reference to `uid` attribute.
  TfRef<String> get uid => TfRef.attribute<String>(this, 'uid');

  /// Reference to `update_time` attribute.
  TfRef<String> get updateTime => TfRef.attribute<String>(this, 'update_time');

  /// Reference to `annotations` attribute.
  TfRef<Map<String, String>> get annotations =>
      TfRef.attribute<Map<String, String>>(this, 'annotations');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicy =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `display_name` attribute.
  TfRef<String> get displayName =>
      TfRef.attribute<String>(this, 'display_name');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `organization` attribute.
  TfRef<String> get organization =>
      TfRef.attribute<String>(this, 'organization');

  /// Reference to `policy` attribute.
  TfRef<String> get policy => TfRef.attribute<String>(this, 'policy');

  /// Reference to `policy_binding_id` attribute.
  TfRef<String> get policyBindingId =>
      TfRef.attribute<String>(this, 'policy_binding_id');

  /// Reference to `policy_kind` attribute.
  TfRef<String> get policyKind => TfRef.attribute<String>(this, 'policy_kind');
}
