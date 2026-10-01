// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../dataplex/google_dataplex_datascan.dart' show GoogleDataplexDatascan;
import '../iam/iam_principal.dart' show IamPrincipal;

/// Sensitive field paths for `google_dataplex_datascan_iam_binding`.
const Set<String> _googleDataplexDatascanIamBindingSensitive = <String>{};

/// Typed helper for the `condition` block of
/// `google_dataplex_datascan_iam_binding` (derived from provider schema).
@immutable
final class DataplexDatascanIamBindingCondition {
  const DataplexDatascanIamBindingCondition({
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

/// Factory wrapper for `google_dataplex_datascan_iam_binding`.
///
/// Authoritative IAM binding for a single `role` on a Dataplex data scan.
///
/// Replaces the entire member list for that role. Prefer
/// [GoogleDataplexDatascanIamMember] for additive grants.
final class GoogleDataplexDatascanIamBinding extends Resource {
  static const String tfType = 'google_dataplex_datascan_iam_binding';

  GoogleDataplexDatascanIamBinding({
    required super.localName,
    required RefTo<GoogleDataplexDatascan> dataScan,
    required TfArg<String> role,
    required TfArg<List<IamPrincipal>> members,
    DataplexDatascanIamBindingCondition? condition,
    TfArg<String>? location,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'data_scan_id': dataScan.encodeAs('data_scan_id'),
           'role': role,
           'members': members,
           if (condition != null)
             'condition': TfArg.literal(condition.encode()),
           'location': ?(location ?? dataScan.alsoAs('location')),
           'project': ?(project ?? dataScan.alsoAs('project')),
         },
       );

  @override
  Set<String> get sensitiveFields => _googleDataplexDatascanIamBindingSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleDataplexDatascanIamBinding>`.
  RefTo<GoogleDataplexDatascanIamBinding> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');

  /// Reference to `data_scan_id` attribute.
  TfRef<String> get dataScanIdRef =>
      TfRef.attribute<String>(this, 'data_scan_id');

  /// Reference to `location` attribute.
  TfRef<String> get locationRef => TfRef.attribute<String>(this, 'location');

  /// Reference to `members` attribute.
  TfRef<List<String>> get membersRef =>
      TfRef.attribute<List<String>>(this, 'members');

  /// Reference to `project` attribute.
  TfRef<String> get projectRef => TfRef.attribute<String>(this, 'project');

  /// Reference to `role` attribute.
  TfRef<String> get roleRef => TfRef.attribute<String>(this, 'role');
}
