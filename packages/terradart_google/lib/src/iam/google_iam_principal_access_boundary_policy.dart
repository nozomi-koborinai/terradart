// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_iam_principal_access_boundary_policy`.
const Set<String> _googleIamPrincipalAccessBoundaryPolicySensitive = <String>{};

/// Typed helper for the `details` block of
/// `google_iam_principal_access_boundary_policy` (derived from provider schema).
@immutable
final class IamPrincipalAccessBoundaryPolicyDetails {
  const IamPrincipalAccessBoundaryPolicyDetails({
    this.enforcementVersion,
    required this.rules,
  });

  final TfArg<String>? enforcementVersion;

  final List<IamPrincipalAccessBoundaryPolicyRules> rules;

  @internal
  Map<String, Object?> encode() => {
    'enforcement_version': ?enforcementVersion?.toTfJson(),
    'rules': [for (final e in rules) e.encode()],
  };
}

/// Typed helper for the `details.rules` block of
/// `google_iam_principal_access_boundary_policy` (derived from provider schema).
@immutable
final class IamPrincipalAccessBoundaryPolicyRules {
  const IamPrincipalAccessBoundaryPolicyRules({
    this.description,
    required this.effect,
    required this.resources,
  });

  final TfArg<String>? description;

  final TfArg<String> effect;

  final TfArg<List<String>> resources;

  @internal
  Map<String, Object?> encode() => {
    'description': ?description?.toTfJson(),
    'effect': effect.toTfJson(),
    'resources': resources.toTfJson(),
  };
}

/// Factory wrapper for `google_iam_principal_access_boundary_policy`.
///
/// Leftover factory on the apply-excluded path
/// (synth + `terraform validate` only).
///
/// Needs an organization / folder / billing account /
/// external artifact that standalone terradart-validate
/// cannot supply. Do not apply.
final class GoogleIamPrincipalAccessBoundaryPolicy extends Resource {
  static const String tfType = 'google_iam_principal_access_boundary_policy';

  GoogleIamPrincipalAccessBoundaryPolicy(
    super.localName, {
    TfArg<Map<String, String>>? annotations,
    TfArg<String>? deletionPolicy,
    TfArg<String>? displayName,
    required TfArg<String> location,
    required TfArg<String> organization,
    required TfArg<String> principalAccessBoundaryPolicyId,
    IamPrincipalAccessBoundaryPolicyDetails? details,
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
           'principal_access_boundary_policy_id':
               principalAccessBoundaryPolicyId,
           if (details != null) 'details': TfArg.literal(details.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleIamPrincipalAccessBoundaryPolicySensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleIamPrincipalAccessBoundaryPolicy>`.
  RefTo<GoogleIamPrincipalAccessBoundaryPolicy> get ref => RefTo.of(this);

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

  /// Reference to `principal_access_boundary_policy_id` attribute.
  TfRef<String> get principalAccessBoundaryPolicyId =>
      TfRef.attribute<String>(this, 'principal_access_boundary_policy_id');
}
