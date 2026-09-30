// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_dataproc_metastore_federation_iam_binding`.
const Set<String> _googleDataprocMetastoreFederationIamBindingSensitive =
    <String>{};

/// Typed helper for the `condition` block of
/// `google_dataproc_metastore_federation_iam_binding` (derived from provider schema).
@immutable
final class DataprocMetastoreFederationIamBindingCondition {
  const DataprocMetastoreFederationIamBindingCondition({
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

/// Factory wrapper for `google_dataproc_metastore_federation_iam_binding`.
///
/// Authoritative IAM binding for a single `role` on a Dataproc Metastore
/// federation.
///
/// Replaces the entire member list for that role. Prefer
/// [GoogleDataprocMetastoreFederationIamMember] for additive grants.
final class GoogleDataprocMetastoreFederationIamBinding extends Resource {
  static const String tfType =
      'google_dataproc_metastore_federation_iam_binding';

  GoogleDataprocMetastoreFederationIamBinding({
    required super.localName,
    required TfArg<String> federationId,
    required TfArg<String> role,
    required TfArg<List<String>> members,
    TfArg<String>? location,
    DataprocMetastoreFederationIamBindingCondition? condition,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'federation_id': federationId,
           'role': role,
           'members': members,
           'location': ?location,
           if (condition != null)
             'condition': TfArg.literal(condition.encode()),
           'project': ?project,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleDataprocMetastoreFederationIamBindingSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleDataprocMetastoreFederationIamBinding>`.
  RefTo<GoogleDataprocMetastoreFederationIamBinding> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');
}
