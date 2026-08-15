// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_org_policy_custom_constraint`.
const Set<String> _googleOrgPolicyCustomConstraintSensitive = <String>{};

/// Org Policy Custom Constraint Action enum for `action_type`.
enum OrgPolicyCustomConstraintActionType implements TerraformEnum {
  allow('ALLOW'),
  deny('DENY');

  const OrgPolicyCustomConstraintActionType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Factory wrapper for `google_org_policy_custom_constraint`.
///
/// Custom constraints are created by administrators to provide more granular
/// and customizable control over the specific fields that are restricted by
/// your organization policies.
///
/// Leftover factory on the apply-excluded path
/// (synth + `terraform validate` only).
///
/// Needs an organization / folder / billing account /
/// external artifact that standalone terradart-validate
/// cannot supply. Do not apply.
final class GoogleOrgPolicyCustomConstraint extends Resource {
  static const String tfType = 'google_org_policy_custom_constraint';

  GoogleOrgPolicyCustomConstraint({
    required super.localName,
    required TfArg<OrgPolicyCustomConstraintActionType> actionType,
    required TfArg<String> condition,
    TfArg<String>? deletionPolicy,
    TfArg<String>? description,
    TfArg<String>? displayName,
    required TfArg<List<String>> methodTypes,
    required TfArg<String> name,
    required TfArg<String> parent,
    required TfArg<List<String>> resourceTypes,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'action_type': actionType,
           'condition': condition,
           if (deletionPolicy != null) 'deletion_policy': deletionPolicy,
           if (description != null) 'description': description,
           if (displayName != null) 'display_name': displayName,
           'method_types': methodTypes,
           'name': name,
           'parent': parent,
           'resource_types': resourceTypes,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleOrgPolicyCustomConstraintSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `update_time` attribute.
  TfRef<String> get updateTime => TfRef.attribute<String>(this, 'update_time');
}
