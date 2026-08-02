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
  }) : super(
         terraformType: tfType,
         argMap: {
           'asset': asset,
           'dataplex_zone': dataplexZone,
           'lake': lake,
           'policy_data': policyData,
           if (location != null) 'location': location,
           if (project != null) 'project': project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleDataplexAssetIamPolicySensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');
}
