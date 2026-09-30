// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../dataplex/google_dataplex_asset_iam_policy.dart';

/// Sensitive field paths for `google_dataplex_asset_iam_policy`.
const Set<String> _googleDataplexAssetIamPolicySensitive = <String>{};

/// Factory wrapper for `google_dataplex_asset_iam_policy`.
///
/// Read-only data source on the apply-excluded leftover path
/// (synth + `terraform validate` only). Do not apply.
final class DataGoogleDataplexAssetIamPolicy extends Data {
  static const String tfType = 'google_dataplex_asset_iam_policy';

  DataGoogleDataplexAssetIamPolicy({
    required super.localName,
    required TfArg<String> asset,
    required TfArg<String> dataplexZone,
    required TfArg<String> lake,
    TfArg<String>? location,
    TfArg<String>? project,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'asset': asset,
           'dataplex_zone': dataplexZone,
           'lake': lake,
           'location': ?location,
           'project': ?project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleDataplexAssetIamPolicySensitive;

  /// A reference to the `google_dataplex_asset_iam_policy` this data source reads, for
  /// arguments typed `RefTo<GoogleDataplexAssetIamPolicy>`.
  RefTo<GoogleDataplexAssetIamPolicy> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');

  /// Reference to `policy_data` attribute.
  TfRef<String> get policyData => TfRef.attribute<String>(this, 'policy_data');

  /// Reference to `asset` attribute.
  TfRef<String> get assetRef => TfRef.attribute<String>(this, 'asset');

  /// Reference to `dataplex_zone` attribute.
  TfRef<String> get dataplexZoneRef =>
      TfRef.attribute<String>(this, 'dataplex_zone');

  /// Reference to `lake` attribute.
  TfRef<String> get lakeRef => TfRef.attribute<String>(this, 'lake');

  /// Reference to `location` attribute.
  TfRef<String> get locationRef => TfRef.attribute<String>(this, 'location');

  /// Reference to `project` attribute.
  TfRef<String> get projectRef => TfRef.attribute<String>(this, 'project');
}
