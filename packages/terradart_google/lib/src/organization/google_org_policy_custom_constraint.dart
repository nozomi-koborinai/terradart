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
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'action_type': actionType,
           'condition': condition,
           'deletion_policy': ?deletionPolicy,
           'description': ?description,
           'display_name': ?displayName,
           'method_types': methodTypes,
           'name': name,
           'parent': parent,
           'resource_types': resourceTypes,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleOrgPolicyCustomConstraintSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleOrgPolicyCustomConstraint>`.
  RefTo<GoogleOrgPolicyCustomConstraint> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `update_time` attribute.
  TfRef<String> get updateTime => TfRef.attribute<String>(this, 'update_time');

  /// Reference to `action_type` attribute.
  TfRef<String> get actionType => TfRef.attribute<String>(this, 'action_type');

  /// Reference to `condition` attribute.
  TfRef<String> get condition => TfRef.attribute<String>(this, 'condition');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicy =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `display_name` attribute.
  TfRef<String> get displayName =>
      TfRef.attribute<String>(this, 'display_name');

  /// Reference to `method_types` attribute.
  TfRef<List<String>> get methodTypes =>
      TfRef.attribute<List<String>>(this, 'method_types');

  /// Reference to `parent` attribute.
  TfRef<String> get parent => TfRef.attribute<String>(this, 'parent');

  /// Reference to `resource_types` attribute.
  TfRef<List<String>> get resourceTypes =>
      TfRef.attribute<List<String>>(this, 'resource_types');
}
