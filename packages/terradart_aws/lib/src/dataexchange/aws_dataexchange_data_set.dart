// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_dataexchange_data_set`.
const Set<String> _awsDataexchangeDataSetSensitive = <String>{};

/// Dataexchange Data Set Asset enum for `asset_type`.
extension type const DataexchangeDataSetAssetType._(TfArg<String> _)
    implements TfArg<String> {
  DataexchangeDataSetAssetType.variable(String name)
    : this._(TfArg.variable(name));
  DataexchangeDataSetAssetType.expression(String template)
    : this._(TfArg.expression(template));
  const DataexchangeDataSetAssetType.arg(TfArg<String> arg) : this._(arg);

  static const s3Snapshot = DataexchangeDataSetAssetType._(
    TfArgLiteral('S3_SNAPSHOT'),
  );
  static const redshiftDataShare = DataexchangeDataSetAssetType._(
    TfArgLiteral('REDSHIFT_DATA_SHARE'),
  );
  static const apiGatewayApi = DataexchangeDataSetAssetType._(
    TfArgLiteral('API_GATEWAY_API'),
  );
  static const s3DataAccess = DataexchangeDataSetAssetType._(
    TfArgLiteral('S3_DATA_ACCESS'),
  );
  static const lakeFormationDataPermission = DataexchangeDataSetAssetType._(
    TfArgLiteral('LAKE_FORMATION_DATA_PERMISSION'),
  );

  static const List<DataexchangeDataSetAssetType> values = [
    s3Snapshot,
    redshiftDataShare,
    apiGatewayApi,
    s3DataAccess,
    lakeFormationDataPermission,
  ];
}

/// Factory wrapper for `aws_dataexchange_data_set`.
final class AwsDataexchangeDataSet extends Resource {
  static const String tfType = 'aws_dataexchange_data_set';

  AwsDataexchangeDataSet(
    super.localName, {
    required DataexchangeDataSetAssetType assetType,
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
           'region': ?region,
           'tags': ?tags,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsDataexchangeDataSetSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsDataexchangeDataSet>`.
  RefTo<AwsDataexchangeDataSet> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `asset_type` attribute.
  TfRef<String> get assetType => TfRef.attribute<String>(this, 'asset_type');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}
