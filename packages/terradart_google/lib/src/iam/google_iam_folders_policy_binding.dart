// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_iam_folders_policy_binding`.
const Set<String> _googleIamFoldersPolicyBindingSensitive = <String>{};

/// Typed helper for the `condition` block of
/// `google_iam_folders_policy_binding` (derived from provider schema).
@immutable
final class IamFoldersPolicyBindingCondition {
  const IamFoldersPolicyBindingCondition({
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
    if (description != null) 'description': description!.toTfJson(),
    if (expression != null) 'expression': expression!.toTfJson(),
    if (location != null) 'location': location!.toTfJson(),
    if (title != null) 'title': title!.toTfJson(),
  };
}

/// Typed helper for the `target` block of
/// `google_iam_folders_policy_binding` (derived from provider schema).
@immutable
final class IamFoldersPolicyBindingTarget {
  const IamFoldersPolicyBindingTarget({this.principalSet});

  final TfArg<String>? principalSet;

  Map<String, Object?> encode() => {
    if (principalSet != null) 'principal_set': principalSet!.toTfJson(),
  };
}

/// Factory wrapper for `google_iam_folders_policy_binding`.
///
/// A policy binding to a folder. This is a Terraform resource, and maps to a
/// policy binding resource in GCP.
///
/// Leftover factory on the apply-excluded path
/// (synth + `terraform validate` only).
///
/// Needs an organization / folder / billing account /
/// external artifact that standalone terradart-validate
/// cannot supply. Do not apply.
final class GoogleIamFoldersPolicyBinding extends Resource {
  static const String tfType = 'google_iam_folders_policy_binding';

  GoogleIamFoldersPolicyBinding({
    required super.localName,
    TfArg<Map<String, String>>? annotations,
    TfArg<String>? deletionPolicy,
    TfArg<String>? displayName,
    required TfArg<String> folder,
    required TfArg<String> location,
    required TfArg<String> policy,
    required TfArg<String> policyBindingId,
    TfArg<String>? policyKind,
    IamFoldersPolicyBindingCondition? condition,
    required IamFoldersPolicyBindingTarget target,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (annotations != null) 'annotations': annotations,
           if (deletionPolicy != null) 'deletion_policy': deletionPolicy,
           if (displayName != null) 'display_name': displayName,
           'folder': folder,
           'location': location,
           'policy': policy,
           'policy_binding_id': policyBindingId,
           if (policyKind != null) 'policy_kind': policyKind,
           if (condition != null)
             'condition': TfArg.literal(condition.encode()),
           'target': TfArg.literal(target.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _googleIamFoldersPolicyBindingSensitive;

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

  /// Reference to `policy_uid` attribute.
  TfRef<String> get policyUid => TfRef.attribute<String>(this, 'policy_uid');

  /// Reference to `uid` attribute.
  TfRef<String> get uid => TfRef.attribute<String>(this, 'uid');

  /// Reference to `update_time` attribute.
  TfRef<String> get updateTime => TfRef.attribute<String>(this, 'update_time');
}
