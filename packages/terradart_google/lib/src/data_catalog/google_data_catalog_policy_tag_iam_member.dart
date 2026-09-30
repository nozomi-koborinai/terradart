// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_data_catalog_policy_tag_iam_member`.
const Set<String> _googleDataCatalogPolicyTagIamMemberSensitive = <String>{};

/// Typed helper for the `condition` block of
/// `google_data_catalog_policy_tag_iam_member` (derived from provider schema).
@immutable
final class DataCatalogPolicyTagIamMemberCondition {
  const DataCatalogPolicyTagIamMemberCondition({
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

/// Factory wrapper for `google_data_catalog_policy_tag_iam_member`.
final class GoogleDataCatalogPolicyTagIamMember extends Resource {
  static const String tfType = 'google_data_catalog_policy_tag_iam_member';

  GoogleDataCatalogPolicyTagIamMember({
    required super.localName,
    required TfArg<String> policyTag,
    required TfArg<String> role,
    required TfArg<String> member,
    DataCatalogPolicyTagIamMemberCondition? condition,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'policy_tag': policyTag,
           'role': role,
           'member': member,
           if (condition != null)
             'condition': TfArg.literal(condition.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleDataCatalogPolicyTagIamMemberSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleDataCatalogPolicyTagIamMember>`.
  RefTo<GoogleDataCatalogPolicyTagIamMember> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');
}
