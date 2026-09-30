// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_bigquery_connection_iam_binding`.
const Set<String> _googleBigqueryConnectionIamBindingSensitive = <String>{};

/// Typed helper for the `condition` block of
/// `google_bigquery_connection_iam_binding` (derived from provider schema).
@immutable
final class BigqueryConnectionIamBindingCondition {
  const BigqueryConnectionIamBindingCondition({
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

/// Factory wrapper for `google_bigquery_connection_iam_binding`.
///
/// Authoritative IAM binding for a single `role` on a BigQuery connection.
///
/// Replaces the entire member list for that role on the connection. Prefer
/// [GoogleBigqueryConnectionIamMember] when adding one principal without
/// touching existing bindings.
final class GoogleBigqueryConnectionIamBinding extends Resource {
  static const String tfType = 'google_bigquery_connection_iam_binding';

  GoogleBigqueryConnectionIamBinding({
    required super.localName,
    required TfArg<String> connectionId,
    TfArg<String>? location,
    required TfArg<String> role,
    required TfArg<List<String>> members,
    BigqueryConnectionIamBindingCondition? condition,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'connection_id': connectionId,
           'location': ?location,
           'role': role,
           'members': members,
           if (condition != null)
             'condition': TfArg.literal(condition.encode()),
           'project': ?project,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleBigqueryConnectionIamBindingSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleBigqueryConnectionIamBinding>`.
  RefTo<GoogleBigqueryConnectionIamBinding> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');
}
