// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_scc_v2_organization_source_iam_member`.
const Set<String> _googleSccV2OrganizationSourceIamMemberSensitive = <String>{};

/// Typed helper for the `condition` block of
/// `google_scc_v2_organization_source_iam_member` (derived from provider schema).
@immutable
final class SccV2OrganizationSourceIamMemberCondition {
  const SccV2OrganizationSourceIamMemberCondition({
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

/// Factory wrapper for `google_scc_v2_organization_source_iam_member`.
final class GoogleSccV2OrganizationSourceIamMember extends Resource {
  static const String tfType = 'google_scc_v2_organization_source_iam_member';

  GoogleSccV2OrganizationSourceIamMember({
    required super.localName,
    required TfArg<String> source,
    required TfArg<String> organization,
    required TfArg<String> role,
    required TfArg<String> member,
    SccV2OrganizationSourceIamMemberCondition? condition,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'source': source,
           'organization': organization,
           'role': role,
           'member': member,
           if (condition != null)
             'condition': TfArg.literal(condition.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleSccV2OrganizationSourceIamMemberSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleSccV2OrganizationSourceIamMember>`.
  RefTo<GoogleSccV2OrganizationSourceIamMember> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');
}
