// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../dataplex/google_dataplex_zone.dart' show GoogleDataplexZone;
import '../iam/iam_principal.dart' show IamPrincipal;

/// Sensitive field paths for `google_dataplex_zone_iam_binding`.
const Set<String> _googleDataplexZoneIamBindingSensitive = <String>{};

/// Typed helper for the `condition` block of
/// `google_dataplex_zone_iam_binding` (derived from provider schema).
@immutable
final class DataplexZoneIamBindingCondition {
  const DataplexZoneIamBindingCondition({
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

/// Factory wrapper for `google_dataplex_zone_iam_binding`.
///
/// Authoritative IAM binding for a single `role` on a Dataplex zone.
///
/// Replaces the entire member list for that role. Prefer
/// [GoogleDataplexZoneIamMember] for additive grants.
final class GoogleDataplexZoneIamBinding extends Resource {
  static const String tfType = 'google_dataplex_zone_iam_binding';

  GoogleDataplexZoneIamBinding({
    required super.localName,
    required RefTo<GoogleDataplexZone> zone,
    TfArg<String>? lake,
    required TfArg<String> role,
    required TfArg<List<IamPrincipal>> members,
    DataplexZoneIamBindingCondition? condition,
    TfArg<String>? location,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'dataplex_zone': zone.encodeAs('name'),
           'lake': ?(lake ?? zone.alsoAs('lake')),
           'role': role,
           'members': members,
           if (condition != null)
             'condition': TfArg.literal(condition.encode()),
           'location': ?(location ?? zone.alsoAs('location')),
           'project': ?(project ?? zone.alsoAs('project')),
         },
       );

  @override
  Set<String> get sensitiveFields => _googleDataplexZoneIamBindingSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleDataplexZoneIamBinding>`.
  RefTo<GoogleDataplexZoneIamBinding> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');

  /// Reference to `dataplex_zone` attribute.
  TfRef<String> get dataplexZoneRef =>
      TfRef.attribute<String>(this, 'dataplex_zone');

  /// Reference to `lake` attribute.
  TfRef<String> get lakeRef => TfRef.attribute<String>(this, 'lake');

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
