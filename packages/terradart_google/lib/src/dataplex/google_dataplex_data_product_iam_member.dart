// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_dataplex_data_product_iam_member`.
const Set<String> _googleDataplexDataProductIamMemberSensitive = <String>{};

/// Typed helper for the `condition` block of
/// `google_dataplex_data_product_iam_member` (derived from provider schema).
@immutable
final class DataplexDataProductIamMemberCondition {
  const DataplexDataProductIamMemberCondition({
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

/// Factory wrapper for `google_dataplex_data_product_iam_member`.
final class GoogleDataplexDataProductIamMember extends Resource {
  static const String tfType = 'google_dataplex_data_product_iam_member';

  GoogleDataplexDataProductIamMember({
    required super.localName,
    required TfArg<String> dataProductId,
    required TfArg<String> role,
    required TfArg<String> member,
    DataplexDataProductIamMemberCondition? condition,
    TfArg<String>? location,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'data_product_id': dataProductId,
           'role': role,
           'member': member,
           if (condition != null)
             'condition': TfArg.literal(condition.encode()),
           'location': ?location,
           'project': ?project,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleDataplexDataProductIamMemberSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleDataplexDataProductIamMember>`.
  RefTo<GoogleDataplexDataProductIamMember> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');
}
