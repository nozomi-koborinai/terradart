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

  final IamAccessBoundaryPolicyAccessBoundaryRule? accessBoundaryRule;

  Map<String, Object?> encode() => {
    'description': ?description?.toTfJson(),
    'access_boundary_rule': ?accessBoundaryRule?.encode(),
  };
}

/// Typed helper for the `rules.access_boundary_rule` block of
/// `google_iam_access_boundary_policy` (derived from provider schema).
@immutable
final class IamAccessBoundaryPolicyAccessBoundaryRule {
  const IamAccessBoundaryPolicyAccessBoundaryRule({
    this.availablePermissions,
    this.availableResource,
    this.availabilityCondition,
  });

  final TfArg<List<String>>? availablePermissions;

  final TfArg<String>? availableResource;

  final IamAccessBoundaryPolicyAvailabilityCondition? availabilityCondition;

  Map<String, Object?> encode() => {
    'available_permissions': ?availablePermissions?.toTfJson(),
    'available_resource': ?availableResource?.toTfJson(),
    'availability_condition': ?availabilityCondition?.encode(),
  };
}

/// Typed helper for the `rules.access_boundary_rule.availability_condition` block of
/// `google_iam_access_boundary_policy` (derived from provider schema).
@immutable
final class IamAccessBoundaryPolicyAvailabilityCondition {
  const IamAccessBoundaryPolicyAvailabilityCondition({
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
    'description': ?description?.toTfJson(),
    'expression': expression.toTfJson(),
    'location': ?location?.toTfJson(),
    'title': ?title?.toTfJson(),
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
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'deletion_policy': ?deletionPolicy,
           'display_name': ?displayName,
           'name': name,
           'parent': parent,
           'rules': TfArg.literal([for (final e in rules) e.encode()]),
         },
       );

  @override
  Set<String> get sensitiveFields => _googleIamAccessBoundaryPolicySensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleIamAccessBoundaryPolicy>`.
  RefTo<GoogleIamAccessBoundaryPolicy> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicy =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `display_name` attribute.
  TfRef<String> get displayName =>
      TfRef.attribute<String>(this, 'display_name');

  /// Reference to `parent` attribute.
  TfRef<String> get parent => TfRef.attribute<String>(this, 'parent');
}
