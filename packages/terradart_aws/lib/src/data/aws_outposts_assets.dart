// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_outposts_assets`.
const Set<String> _awsOutpostsAssetsSensitive = <String>{};

/// Factory wrapper for `aws_outposts_assets`.
final class DataAwsOutpostsAssets extends Data {
  static const String tfType = 'aws_outposts_assets';

  DataAwsOutpostsAssets({
    required super.localName,
    required TfArg<String> arn,
    TfArg<List<String>>? hostIdFilter,
    TfArg<String>? region,
    TfArg<List<String>>? statusIdFilter,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'arn': arn,
           'host_id_filter': ?hostIdFilter,
           'region': ?region,
           'status_id_filter': ?statusIdFilter,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsOutpostsAssetsSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `asset_ids` attribute.
  TfRef<List<String>> get assetIds =>
      TfRef.attribute<List<String>>(this, 'asset_ids');

  /// Reference to `arn` attribute.
  TfRef<String> get arnRef => TfRef.attribute<String>(this, 'arn');

  /// Reference to `host_id_filter` attribute.
  TfRef<List<String>> get hostIdFilterRef =>
      TfRef.attribute<List<String>>(this, 'host_id_filter');

  /// Reference to `region` attribute.
  TfRef<String> get regionRef => TfRef.attribute<String>(this, 'region');

  /// Reference to `status_id_filter` attribute.
  TfRef<List<String>> get statusIdFilterRef =>
      TfRef.attribute<List<String>>(this, 'status_id_filter');
}
