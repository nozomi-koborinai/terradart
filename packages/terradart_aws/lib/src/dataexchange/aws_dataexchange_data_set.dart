// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_dataexchange_data_set`.
const Set<String> _awsDataexchangeDataSetSensitive = <String>{};

/// Dataexchange Data Set Asset enum for `asset_type`.
enum DataexchangeDataSetAssetType implements TerraformEnum {
  s3Snapshot('S3_SNAPSHOT'),
  redshiftDataShare('REDSHIFT_DATA_SHARE'),
  apiGatewayApi('API_GATEWAY_API'),
  s3DataAccess('S3_DATA_ACCESS'),
  lakeFormationDataPermission('LAKE_FORMATION_DATA_PERMISSION');

  const DataexchangeDataSetAssetType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Factory wrapper for `aws_dataexchange_data_set`.
final class AwsDataexchangeDataSet extends Resource {
  static const String tfType = 'aws_dataexchange_data_set';

  AwsDataexchangeDataSet({
    required super.localName,
    required TfArg<DataexchangeDataSetAssetType> assetType,
    required TfArg<String> description,
    required TfArg<String> name,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'asset_type': assetType,
           'description': description,
           'name': name,
           if (region != null) 'region': region,
           if (tags != null) 'tags': tags,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsDataexchangeDataSetSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsDataexchangeDataSet>`.
  RefTo<AwsDataexchangeDataSet> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');
}
