// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../dataplex/google_dataplex_data_product.dart'
    show GoogleDataplexDataProduct;

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
    required RefTo<GoogleDataplexDataProduct> dataProduct,
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
           'data_product_id': dataProduct.encodeAs('data_product_id'),
           'role': role,
           'member': member,
           if (condition != null)
             'condition': TfArg.literal(condition.encode()),
           'location': ?(location ?? dataProduct.alsoAs('location')),
           'project': ?(project ?? dataProduct.alsoAs('project')),
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

  /// Reference to `data_product_id` attribute.
  TfRef<String> get dataProductIdRef =>
      TfRef.attribute<String>(this, 'data_product_id');

  /// Reference to `location` attribute.
  TfRef<String> get locationRef => TfRef.attribute<String>(this, 'location');

  /// Reference to `member` attribute.
  TfRef<String> get memberRef => TfRef.attribute<String>(this, 'member');

  /// Reference to `project` attribute.
  TfRef<String> get projectRef => TfRef.attribute<String>(this, 'project');

  /// Reference to `role` attribute.
  TfRef<String> get roleRef => TfRef.attribute<String>(this, 'role');
}
