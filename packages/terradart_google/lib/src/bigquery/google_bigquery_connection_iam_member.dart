// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_bigquery_connection_iam_member`.
const Set<String> _googleBigqueryConnectionIamMemberSensitive = <String>{};

/// Typed helper for the `condition` block of
/// `google_bigquery_connection_iam_member` (derived from provider schema).
@immutable
final class BigqueryConnectionIamMemberCondition {
  const BigqueryConnectionIamMemberCondition({
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

/// Factory wrapper for `google_bigquery_connection_iam_member`.
final class GoogleBigqueryConnectionIamMember extends Resource {
  static const String tfType = 'google_bigquery_connection_iam_member';

  GoogleBigqueryConnectionIamMember({
    required super.localName,
    required TfArg<String> connectionId,
    TfArg<String>? location,
    required TfArg<String> member,
    TfArg<String>? project,
    required TfArg<String> role,
    BigqueryConnectionIamMemberCondition? condition,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'connection_id': connectionId,
           'location': ?location,
           'member': member,
           'project': ?project,
           'role': role,
           if (condition != null)
             'condition': TfArg.literal(condition.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleBigqueryConnectionIamMemberSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleBigqueryConnectionIamMember>`.
  RefTo<GoogleBigqueryConnectionIamMember> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');
}
