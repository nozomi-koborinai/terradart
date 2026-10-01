// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../dataplex/google_dataplex_asset.dart' show GoogleDataplexAsset;
import '../iam/iam_principal.dart' show IamPrincipal;

/// Sensitive field paths for `google_dataplex_asset_iam_binding`.
const Set<String> _googleDataplexAssetIamBindingSensitive = <String>{};

/// Typed helper for the `condition` block of
/// `google_dataplex_asset_iam_binding` (derived from provider schema).
@immutable
final class DataplexAssetIamBindingCondition {
  const DataplexAssetIamBindingCondition({
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

/// Factory wrapper for `google_dataplex_asset_iam_binding`.
///
/// Authoritative IAM binding for a single `role` on a Dataplex asset.
///
/// Replaces the entire member list for that role. Prefer
/// [GoogleDataplexAssetIamMember] for additive grants.
final class GoogleDataplexAssetIamBinding extends Resource {
  static const String tfType = 'google_dataplex_asset_iam_binding';

  GoogleDataplexAssetIamBinding(
    super.localName, {
    required RefTo<GoogleDataplexAsset> asset,
    TfArg<String>? dataplexZone,
    TfArg<String>? lake,
    required TfArg<String> role,
    required TfArg<List<IamPrincipal>> members,
    DataplexAssetIamBindingCondition? condition,
    TfArg<String>? location,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'asset': asset.encodeAs('name'),
           'dataplex_zone': ?(dataplexZone ?? asset.alsoAs('dataplex_zone')),
           'lake': ?(lake ?? asset.alsoAs('lake')),
           'role': role,
           'members': members,
           if (condition != null)
             'condition': TfArg.literal(condition.encode()),
           'location': ?(location ?? asset.alsoAs('location')),
           'project': ?(project ?? asset.alsoAs('project')),
         },
       );

  @override
  Set<String> get sensitiveFields => _googleDataplexAssetIamBindingSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleDataplexAssetIamBinding>`.
  RefTo<GoogleDataplexAssetIamBinding> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');

  /// Reference to `asset` attribute.
  TfRef<String> get asset => TfRef.attribute<String>(this, 'asset');

  /// Reference to `dataplex_zone` attribute.
  TfRef<String> get dataplexZone =>
      TfRef.attribute<String>(this, 'dataplex_zone');

  /// Reference to `lake` attribute.
  TfRef<String> get lake => TfRef.attribute<String>(this, 'lake');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `members` attribute.
  TfRef<List<String>> get members =>
      TfRef.attribute<List<String>>(this, 'members');

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');

  /// Reference to `role` attribute.
  TfRef<String> get role => TfRef.attribute<String>(this, 'role');
}
