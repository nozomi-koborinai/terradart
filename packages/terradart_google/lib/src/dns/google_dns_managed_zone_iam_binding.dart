// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

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
    required TfArg<String> managedZone,
    required TfArg<String> role,
    required TfArg<List<String>> members,
    DnsManagedZoneIamBindingCondition? condition,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'managed_zone': managedZone,
           'role': role,
           'members': members,
           if (condition != null)
             'condition': TfArg.literal(condition.encode()),
           'project': ?project,
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
}
