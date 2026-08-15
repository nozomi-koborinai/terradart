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

  final List<IamPrincipalAccessBoundaryPolicyDetailsRules> rules;

  Map<String, Object?> encode() => {
    if (enforcementVersion != null)
      'enforcement_version': enforcementVersion!.toTfJson(),
    'rules': [for (final e in rules) e.encode()],
  };
}

/// Typed helper for the `details.rules` block of
/// `google_iam_principal_access_boundary_policy` (derived from provider schema).
@immutable
final class IamPrincipalAccessBoundaryPolicyDetailsRules {
  const IamPrincipalAccessBoundaryPolicyDetailsRules({
    this.description,
    required this.effect,
    required this.resources,
  });

  final TfArg<String>? description;

  final TfArg<String> effect;

  final TfArg<List<Object?>> resources;

  Map<String, Object?> encode() => {
    if (description != null) 'description': description!.toTfJson(),
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

  GoogleIamPrincipalAccessBoundaryPolicy({
    required super.localName,
    TfArg<Map<String, String>>? annotations,
    TfArg<String>? deletionPolicy,
    TfArg<String>? displayName,
    required TfArg<String> location,
    required TfArg<String> organization,
    required TfArg<String> principalAccessBoundaryPolicyId,
    IamPrincipalAccessBoundaryPolicyDetails? details,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (annotations != null) 'annotations': annotations,
           if (deletionPolicy != null) 'deletion_policy': deletionPolicy,
           if (displayName != null) 'display_name': displayName,
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

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

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
}
