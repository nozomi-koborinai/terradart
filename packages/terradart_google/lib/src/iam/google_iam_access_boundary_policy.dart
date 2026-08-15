// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_iam_access_boundary_policy`.
const Set<String> _googleIamAccessBoundaryPolicySensitive = <String>{};

/// Typed helper for the `rules` block of
/// `google_iam_access_boundary_policy` (derived from provider schema).
@immutable
final class IamAccessBoundaryPolicyRules {
  const IamAccessBoundaryPolicyRules({
    this.description,
    this.accessBoundaryRule,
  });

  final TfArg<String>? description;

  final IamAccessBoundaryPolicyRulesAccessBoundaryRule? accessBoundaryRule;

  Map<String, Object?> encode() => {
    if (description != null) 'description': description!.toTfJson(),
    if (accessBoundaryRule != null)
      'access_boundary_rule': accessBoundaryRule!.encode(),
  };
}

/// Typed helper for the `rules.access_boundary_rule` block of
/// `google_iam_access_boundary_policy` (derived from provider schema).
@immutable
final class IamAccessBoundaryPolicyRulesAccessBoundaryRule {
  const IamAccessBoundaryPolicyRulesAccessBoundaryRule({
    this.availablePermissions,
    this.availableResource,
    this.availabilityCondition,
  });

  final TfArg<List<Object?>>? availablePermissions;

  final TfArg<String>? availableResource;

  final IamAccessBoundaryPolicyRulesAccessBoundaryRuleAvailabilityCondition?
  availabilityCondition;

  Map<String, Object?> encode() => {
    if (availablePermissions != null)
      'available_permissions': availablePermissions!.toTfJson(),
    if (availableResource != null)
      'available_resource': availableResource!.toTfJson(),
    if (availabilityCondition != null)
      'availability_condition': availabilityCondition!.encode(),
  };
}

/// Typed helper for the `rules.access_boundary_rule.availability_condition` block of
/// `google_iam_access_boundary_policy` (derived from provider schema).
@immutable
final class IamAccessBoundaryPolicyRulesAccessBoundaryRuleAvailabilityCondition {
  const IamAccessBoundaryPolicyRulesAccessBoundaryRuleAvailabilityCondition({
    this.description,
    required this.expression,
    this.location,
    this.title,
  });

  final TfArg<String>? description;

  final TfArg<String> expression;

  final TfArg<String>? location;

  final TfArg<String>? title;

  Map<String, Object?> encode() => {
    if (description != null) 'description': description!.toTfJson(),
    'expression': expression.toTfJson(),
    if (location != null) 'location': location!.toTfJson(),
    if (title != null) 'title': title!.toTfJson(),
  };
}

/// Factory wrapper for `google_iam_access_boundary_policy`.
///
/// Leftover factory on the apply-excluded path
/// (synth + `terraform validate` only).
///
/// Needs an organization / folder / billing account /
/// external artifact that standalone terradart-validate
/// cannot supply. Do not apply.
final class GoogleIamAccessBoundaryPolicy extends Resource {
  static const String tfType = 'google_iam_access_boundary_policy';

  GoogleIamAccessBoundaryPolicy({
    required super.localName,
    TfArg<String>? deletionPolicy,
    TfArg<String>? displayName,
    required TfArg<String> name,
    required TfArg<String> parent,
    required List<IamAccessBoundaryPolicyRules> rules,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (deletionPolicy != null) 'deletion_policy': deletionPolicy,
           if (displayName != null) 'display_name': displayName,
           'name': name,
           'parent': parent,
           'rules': TfArg.literal([for (final e in rules) e.encode()]),
         },
       );

  @override
  Set<String> get sensitiveFields => _googleIamAccessBoundaryPolicySensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');
}
