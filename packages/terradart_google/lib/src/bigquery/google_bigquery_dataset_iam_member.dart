// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../bigquery/google_bigquery_dataset.dart' show GoogleBigqueryDataset;

/// Sensitive field paths for `google_bigquery_dataset_iam_member`.
const Set<String> _googleBigqueryDatasetIamMemberSensitive = <String>{};

/// Typed helper for the `condition` block of
/// `google_bigquery_dataset_iam_member` (derived from provider schema).
@immutable
final class BigqueryDatasetIamMemberCondition {
  const BigqueryDatasetIamMemberCondition({
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

/// Factory wrapper for `google_bigquery_dataset_iam_member`.
final class GoogleBigqueryDatasetIamMember extends Resource {
  static const String tfType = 'google_bigquery_dataset_iam_member';

  GoogleBigqueryDatasetIamMember({
    required super.localName,
    required RefTo<GoogleBigqueryDataset> datasetId,
    required TfArg<String> role,
    required TfArg<String> member,
    BigqueryDatasetIamMemberCondition? condition,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'dataset_id': datasetId.encodeAs('dataset_id'),
           'role': role,
           'member': member,
           if (condition != null)
             'condition': TfArg.literal(condition.encode()),
           'project': ?project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleBigqueryDatasetIamMemberSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleBigqueryDatasetIamMember>`.
  RefTo<GoogleBigqueryDatasetIamMember> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');
}
