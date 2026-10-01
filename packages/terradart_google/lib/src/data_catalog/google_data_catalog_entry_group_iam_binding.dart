// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../data_catalog/google_data_catalog_entry_group.dart'
    show GoogleDataCatalogEntryGroup;

/// Sensitive field paths for `google_data_catalog_entry_group_iam_binding`.
const Set<String> _googleDataCatalogEntryGroupIamBindingSensitive = <String>{};

/// Typed helper for the `condition` block of
/// `google_data_catalog_entry_group_iam_binding` (derived from provider schema).
@immutable
final class DataCatalogEntryGroupIamBindingCondition {
  const DataCatalogEntryGroupIamBindingCondition({
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

/// Factory wrapper for `google_data_catalog_entry_group_iam_binding`.
///
/// Authoritative IAM binding for a single `role` on a Data Catalog entry
/// group.
///
/// Replaces the entire member list for that role on the entry group. Prefer
/// [GoogleDataCatalogEntryGroupIamMember] when adding one principal without
/// touching existing bindings.
final class GoogleDataCatalogEntryGroupIamBinding extends Resource {
  static const String tfType = 'google_data_catalog_entry_group_iam_binding';

  GoogleDataCatalogEntryGroupIamBinding({
    required super.localName,
    required RefTo<GoogleDataCatalogEntryGroup> entryGroup,
    required TfArg<String> role,
    required TfArg<List<String>> members,
    DataCatalogEntryGroupIamBindingCondition? condition,
    TfArg<String>? region,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'entry_group': entryGroup.encodeAs('id'),
           'role': role,
           'members': members,
           if (condition != null)
             'condition': TfArg.literal(condition.encode()),
           'region': ?region,
           'project': ?project,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleDataCatalogEntryGroupIamBindingSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleDataCatalogEntryGroupIamBinding>`.
  RefTo<GoogleDataCatalogEntryGroupIamBinding> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');

  /// Reference to `entry_group` attribute.
  TfRef<String> get entryGroupRef =>
      TfRef.attribute<String>(this, 'entry_group');

  /// Reference to `members` attribute.
  TfRef<List<String>> get membersRef =>
      TfRef.attribute<List<String>>(this, 'members');

  /// Reference to `project` attribute.
  TfRef<String> get projectRef => TfRef.attribute<String>(this, 'project');

  /// Reference to `region` attribute.
  TfRef<String> get regionRef => TfRef.attribute<String>(this, 'region');

  /// Reference to `role` attribute.
  TfRef<String> get roleRef => TfRef.attribute<String>(this, 'role');
}
