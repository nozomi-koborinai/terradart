// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../dns/google_dns_managed_zone.dart' show GoogleDnsManagedZone;
import '../iam/iam_principal.dart' show IamPrincipal;

/// Sensitive field paths for `google_dns_managed_zone_iam_binding`.
const Set<String> _googleDnsManagedZoneIamBindingSensitive = <String>{};

/// Typed helper for the `condition` block of
/// `google_dns_managed_zone_iam_binding` (derived from provider schema).
@immutable
final class DnsManagedZoneIamBindingCondition {
  const DnsManagedZoneIamBindingCondition({
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

/// Factory wrapper for `google_dns_managed_zone_iam_binding`.
///
/// Authoritative IAM binding for a single `role` on a Cloud DNS managed
/// zone.
///
/// Replaces the entire member list for that role. Prefer
/// [GoogleDnsManagedZoneIamMember] for additive grants.
final class GoogleDnsManagedZoneIamBinding extends Resource {
  static const String tfType = 'google_dns_managed_zone_iam_binding';

  GoogleDnsManagedZoneIamBinding({
    required super.localName,
    required RefTo<GoogleDnsManagedZone> managedZone,
    required TfArg<String> role,
    required TfArg<List<IamPrincipal>> members,
    DnsManagedZoneIamBindingCondition? condition,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'managed_zone': managedZone.encodeAs('name'),
           'role': role,
           'members': members,
           if (condition != null)
             'condition': TfArg.literal(condition.encode()),
           'project': ?(project ?? managedZone.alsoAs('project')),
         },
       );

  @override
  Set<String> get sensitiveFields => _googleDnsManagedZoneIamBindingSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleDnsManagedZoneIamBinding>`.
  RefTo<GoogleDnsManagedZoneIamBinding> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');

  /// Reference to `managed_zone` attribute.
  TfRef<String> get managedZoneRef =>
      TfRef.attribute<String>(this, 'managed_zone');

  /// Reference to `members` attribute.
  TfRef<List<String>> get membersRef =>
      TfRef.attribute<List<String>>(this, 'members');

  /// Reference to `project` attribute.
  TfRef<String> get projectRef => TfRef.attribute<String>(this, 'project');

  /// Reference to `role` attribute.
  TfRef<String> get roleRef => TfRef.attribute<String>(this, 'role');
}
