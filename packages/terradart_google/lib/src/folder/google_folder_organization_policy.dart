// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_folder_organization_policy`.
const Set<String> _googleFolderOrganizationPolicySensitive = <String>{};

/// Typed helper for the `boolean_policy` block of
/// `google_folder_organization_policy` (derived from provider schema).
@immutable
final class FolderOrganizationPolicyBooleanPolicy {
  const FolderOrganizationPolicyBooleanPolicy({required this.enforced});

  final TfArg<bool> enforced;

  Map<String, Object?> encode() => {'enforced': enforced.toTfJson()};
}

/// Typed helper for the `list_policy` block of
/// `google_folder_organization_policy` (derived from provider schema).
@immutable
final class FolderOrganizationPolicyListPolicy {
  const FolderOrganizationPolicyListPolicy({
    this.inheritFromParent,
    this.suggestedValue,
    this.allow,
    this.deny,
  });

  final TfArg<bool>? inheritFromParent;

  final TfArg<String>? suggestedValue;

  final FolderOrganizationPolicyListPolicyAllow? allow;

  final FolderOrganizationPolicyListPolicyDeny? deny;

  Map<String, Object?> encode() => {
    if (inheritFromParent != null)
      'inherit_from_parent': inheritFromParent!.toTfJson(),
    if (suggestedValue != null) 'suggested_value': suggestedValue!.toTfJson(),
    if (allow != null) 'allow': allow!.encode(),
    if (deny != null) 'deny': deny!.encode(),
  };
}

/// Typed helper for the `list_policy.allow` block of
/// `google_folder_organization_policy` (derived from provider schema).
@immutable
final class FolderOrganizationPolicyListPolicyAllow {
  const FolderOrganizationPolicyListPolicyAllow({this.all, this.values});

  final TfArg<bool>? all;

  final TfArg<List<Object?>>? values;

  Map<String, Object?> encode() => {
    if (all != null) 'all': all!.toTfJson(),
    if (values != null) 'values': values!.toTfJson(),
  };
}

/// Typed helper for the `list_policy.deny` block of
/// `google_folder_organization_policy` (derived from provider schema).
@immutable
final class FolderOrganizationPolicyListPolicyDeny {
  const FolderOrganizationPolicyListPolicyDeny({this.all, this.values});

  final TfArg<bool>? all;

  final TfArg<List<Object?>>? values;

  Map<String, Object?> encode() => {
    if (all != null) 'all': all!.toTfJson(),
    if (values != null) 'values': values!.toTfJson(),
  };
}

/// Typed helper for the `restore_policy` block of
/// `google_folder_organization_policy` (derived from provider schema).
@immutable
final class FolderOrganizationPolicyRestorePolicy {
  const FolderOrganizationPolicyRestorePolicy({required this.defaultCase});

  final TfArg<bool> defaultCase;

  Map<String, Object?> encode() => {'default': defaultCase.toTfJson()};
}

/// Factory wrapper for `google_folder_organization_policy`.
///
/// Leftover factory on the apply-excluded path
/// (synth + `terraform validate` only).
///
/// Needs an organization / folder / billing account /
/// external artifact that standalone terradart-validate
/// cannot supply. Do not apply.
final class GoogleFolderOrganizationPolicy extends Resource {
  static const String tfType = 'google_folder_organization_policy';

  GoogleFolderOrganizationPolicy({
    required super.localName,
    required TfArg<String> constraint,
    TfArg<String>? deletionPolicy,
    required TfArg<String> folder,
    TfArg<num>? version,
    FolderOrganizationPolicyBooleanPolicy? booleanPolicy,
    FolderOrganizationPolicyListPolicy? listPolicy,
    FolderOrganizationPolicyRestorePolicy? restorePolicy,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'constraint': constraint,
           if (deletionPolicy != null) 'deletion_policy': deletionPolicy,
           'folder': folder,
           if (version != null) 'version': version,
           if (booleanPolicy != null)
             'boolean_policy': TfArg.literal(booleanPolicy.encode()),
           if (listPolicy != null)
             'list_policy': TfArg.literal(listPolicy.encode()),
           if (restorePolicy != null)
             'restore_policy': TfArg.literal(restorePolicy.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _googleFolderOrganizationPolicySensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');

  /// Reference to `update_time` attribute.
  TfRef<String> get updateTime => TfRef.attribute<String>(this, 'update_time');
}
