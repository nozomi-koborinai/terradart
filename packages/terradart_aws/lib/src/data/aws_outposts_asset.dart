// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_outposts_asset`.
const Set<String> _awsOutpostsAssetSensitive = <String>{};

/// Factory wrapper for `aws_outposts_asset`.
final class DataAwsOutpostsAsset extends Data {
  static const String tfType = 'aws_outposts_asset';

  DataAwsOutpostsAsset({
    required super.localName,
    required TfArg<String> arn,
    required TfArg<String> assetId,
    TfArg<String>? region,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'arn': arn,
           'asset_id': assetId,
           if (region != null) 'region': region,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsOutpostsAssetSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `asset_type` attribute.
  TfRef<String> get assetType => TfRef.attribute<String>(this, 'asset_type');

  /// Reference to `host_id` attribute.
  TfRef<String> get hostId => TfRef.attribute<String>(this, 'host_id');

  /// Reference to `instance_families` attribute.
  TfRef<List<String>> get instanceFamilies =>
      TfRef.attribute<List<String>>(this, 'instance_families');

  /// Reference to `rack_elevation` attribute.
  TfRef<num> get rackElevation => TfRef.attribute<num>(this, 'rack_elevation');

  /// Reference to `rack_id` attribute.
  TfRef<String> get rackId => TfRef.attribute<String>(this, 'rack_id');
}
