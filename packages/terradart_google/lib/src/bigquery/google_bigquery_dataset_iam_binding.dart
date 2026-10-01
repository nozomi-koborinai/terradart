// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../bigquery/google_bigquery_dataset.dart' show GoogleBigqueryDataset;

/// Sensitive field paths for `google_bigquery_dataset_iam_binding`.
const Set<String> _googleBigqueryDatasetIamBindingSensitive = <String>{};

/// Typed helper for the `condition` block of
/// `google_bigquery_dataset_iam_binding` (derived from provider schema).
@immutable
final class BigqueryDatasetIamBindingCondition {
  const BigqueryDatasetIamBindingCondition({
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

/// Factory wrapper for `google_bigquery_dataset_iam_binding`.
///
/// Authoritative IAM binding for a single `role` on a BigQuery dataset.
///
/// Replaces the entire member list for that role on the dataset. Prefer
/// [GoogleBigqueryDatasetIamMember] when adding one principal without
/// touching existing bindings.
final class GoogleBigqueryDatasetIamBinding extends Resource {
  static const String tfType = 'google_bigquery_dataset_iam_binding';

  GoogleBigqueryDatasetIamBinding({
    required super.localName,
    required RefTo<GoogleBigqueryDataset> dataset,
    required TfArg<String> role,
    required TfArg<List<String>> members,
    BigqueryDatasetIamBindingCondition? condition,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'dataset_id': dataset.encodeAs('dataset_id'),
           'role': role,
           'members': members,
           if (condition != null)
             'condition': TfArg.literal(condition.encode()),
           'project': ?(project ?? dataset.alsoAs('project')),
         },
       );

  @override
  Set<String> get sensitiveFields => _googleBigqueryDatasetIamBindingSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleBigqueryDatasetIamBinding>`.
  RefTo<GoogleBigqueryDatasetIamBinding> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');

  /// Reference to `dataset_id` attribute.
  TfRef<String> get datasetIdRef => TfRef.attribute<String>(this, 'dataset_id');

  /// Reference to `members` attribute.
  TfRef<List<String>> get membersRef =>
      TfRef.attribute<List<String>>(this, 'members');

  /// Reference to `project` attribute.
  TfRef<String> get projectRef => TfRef.attribute<String>(this, 'project');

  /// Reference to `role` attribute.
  TfRef<String> get roleRef => TfRef.attribute<String>(this, 'role');
}
