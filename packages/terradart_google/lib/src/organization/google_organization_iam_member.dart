// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../iam/iam_principal.dart' show IamPrincipal;

/// Sensitive field paths for `google_organization_iam_member`.
const Set<String> _googleOrganizationIamMemberSensitive = <String>{};

/// Typed helper for the `condition` block of
/// `google_organization_iam_member` (derived from provider schema).
@immutable
final class OrganizationIamMemberCondition {
  const OrganizationIamMemberCondition({
    this.description,
    required this.expression,
    required this.title,
  });

  final TfArg<String>? description;

  final TfArg<String> expression;

  final TfArg<String> title;

  Map<String, Object?> encode() => {
    'description': ?description?.toTfJson(),
    'expression': expression.toTfJson(),
    'title': title.toTfJson(),
  };
}

/// Factory wrapper for `google_organization_iam_member`.
final class GoogleOrganizationIamMember extends Resource {
  static const String tfType = 'google_organization_iam_member';

  GoogleOrganizationIamMember({
    required super.localName,
    required TfArg<String> orgId,
    required TfArg<String> role,
    required IamPrincipal member,
    OrganizationIamMemberCondition? condition,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'org_id': orgId,
           'role': role,
           'member': member,
           if (condition != null)
             'condition': TfArg.literal(condition.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _googleOrganizationIamMemberSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleOrganizationIamMember>`.
  RefTo<GoogleOrganizationIamMember> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');

  /// Reference to `member` attribute.
  TfRef<String> get memberRef => TfRef.attribute<String>(this, 'member');

  /// Reference to `org_id` attribute.
  TfRef<String> get orgIdRef => TfRef.attribute<String>(this, 'org_id');

  /// Reference to `role` attribute.
  TfRef<String> get roleRef => TfRef.attribute<String>(this, 'role');
}
