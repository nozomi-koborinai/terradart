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
           if (hostIdFilter != null) 'host_id_filter': hostIdFilter,
           if (region != null) 'region': region,
           if (statusIdFilter != null) 'status_id_filter': statusIdFilter,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsOutpostsAssetsSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `asset_ids` attribute.
  TfRef<List<String>> get assetIds =>
      TfRef.attribute<List<String>>(this, 'asset_ids');
}
