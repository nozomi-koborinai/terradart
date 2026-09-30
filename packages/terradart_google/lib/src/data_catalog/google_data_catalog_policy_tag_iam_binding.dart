// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_data_catalog_policy_tag_iam_binding`.
const Set<String> _googleDataCatalogPolicyTagIamBindingSensitive = <String>{};

/// Typed helper for the `condition` block of
/// `google_data_catalog_policy_tag_iam_binding` (derived from provider schema).
@immutable
final class DataCatalogPolicyTagIamBindingCondition {
  const DataCatalogPolicyTagIamBindingCondition({
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

/// Factory wrapper for `google_data_catalog_policy_tag_iam_binding`.
///
/// Authoritative IAM binding for a single `role` on a Data Catalog policy tag.
///
/// Replaces the entire member list for that role, overwriting grants made
/// outside Terraform. Prefer [GoogleDataCatalogPolicyTagIamMember] for additive grants.
final class GoogleDataCatalogPolicyTagIamBinding extends Resource {
  static const String tfType = 'google_data_catalog_policy_tag_iam_binding';

  GoogleDataCatalogPolicyTagIamBinding({
    required super.localName,
    required TfArg<String> policyTag,
    required TfArg<String> role,
    required TfArg<List<String>> members,
    DataCatalogPolicyTagIamBindingCondition? condition,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'policy_tag': policyTag,
           'role': role,
           'members': members,
           if (condition != null)
             'condition': TfArg.literal(condition.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleDataCatalogPolicyTagIamBindingSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleDataCatalogPolicyTagIamBinding>`.
  RefTo<GoogleDataCatalogPolicyTagIamBinding> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');
}
