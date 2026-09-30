// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_dataplex_asset_iam_policy`.
const Set<String> _googleDataplexAssetIamPolicySensitive = <String>{};

/// Factory wrapper for `google_dataplex_asset_iam_policy`.
///
/// Authoritative IAM policy for a Dataplex asset.
///
/// `policy_data` replaces the entire IAM policy. Prefer
/// [GoogleDataplexAssetIamMember] for single-principal grants.
final class GoogleDataplexAssetIamPolicy extends Resource {
  static const String tfType = 'google_dataplex_asset_iam_policy';

  GoogleDataplexAssetIamPolicy({
    required super.localName,
    required TfArg<String> asset,
    required TfArg<String> dataplexZone,
    required TfArg<String> lake,
    required TfArg<String> policyData,
    TfArg<String>? location,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'asset': asset,
           'dataplex_zone': dataplexZone,
           'lake': lake,
           'policy_data': policyData,
           'location': ?location,
           'project': ?project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleDataplexAssetIamPolicySensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleDataplexAssetIamPolicy>`.
  RefTo<GoogleDataplexAssetIamPolicy> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');

  /// Reference to `asset` attribute.
  TfRef<String> get assetRef => TfRef.attribute<String>(this, 'asset');

  /// Reference to `dataplex_zone` attribute.
  TfRef<String> get dataplexZoneRef =>
      TfRef.attribute<String>(this, 'dataplex_zone');

  /// Reference to `lake` attribute.
  TfRef<String> get lakeRef => TfRef.attribute<String>(this, 'lake');

  /// Reference to `location` attribute.
  TfRef<String> get locationRef => TfRef.attribute<String>(this, 'location');

  /// Reference to `policy_data` attribute.
  TfRef<String> get policyDataRef =>
      TfRef.attribute<String>(this, 'policy_data');

  /// Reference to `project` attribute.
  TfRef<String> get projectRef => TfRef.attribute<String>(this, 'project');
}
