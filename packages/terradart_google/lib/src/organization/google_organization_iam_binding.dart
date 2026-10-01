// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../iam/iam_principal.dart' show IamPrincipal;

/// Sensitive field paths for `google_organization_iam_binding`.
const Set<String> _googleOrganizationIamBindingSensitive = <String>{};

/// Typed helper for the `condition` block of
/// `google_organization_iam_binding` (derived from provider schema).
@immutable
final class OrganizationIamBindingCondition {
  const OrganizationIamBindingCondition({
    this.description,
    required this.expression,
    required this.title,
  });

  final TfArg<String>? description;

  final TfArg<String> expression;

  final TfArg<String> title;

  @internal
  Map<String, Object?> encode() => {
    'description': ?description?.toTfJson(),
    'expression': expression.toTfJson(),
    'title': title.toTfJson(),
  };
}

/// Factory wrapper for `google_organization_iam_binding`.
///
/// Authoritative IAM binding for a single `role` on a GCP organization.
///
/// Replaces the entire member list for that role, overwriting grants made
/// outside Terraform. Prefer [GoogleOrganizationIamMember] for additive grants.
final class GoogleOrganizationIamBinding extends Resource {
  static const String tfType = 'google_organization_iam_binding';

  GoogleOrganizationIamBinding(
    super.localName, {
    required TfArg<String> orgId,
    required TfArg<String> role,
    required TfArg<List<IamPrincipal>> members,
    OrganizationIamBindingCondition? condition,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'org_id': orgId,
           'role': role,
           'members': members,
           if (condition != null)
             'condition': TfArg.literal(condition.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _googleOrganizationIamBindingSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleOrganizationIamBinding>`.
  RefTo<GoogleOrganizationIamBinding> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');

  /// Reference to `members` attribute.
  TfRef<List<String>> get members =>
      TfRef.attribute<List<String>>(this, 'members');

  /// Reference to `org_id` attribute.
  TfRef<String> get orgId => TfRef.attribute<String>(this, 'org_id');

  /// Reference to `role` attribute.
  TfRef<String> get role => TfRef.attribute<String>(this, 'role');
}
