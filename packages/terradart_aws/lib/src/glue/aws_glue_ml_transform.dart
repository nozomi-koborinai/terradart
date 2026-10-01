// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../iam/aws_iam_role.dart' show AwsIamRole;

/// Sensitive field paths for `aws_glue_ml_transform`.
const Set<String> _awsGlueMlTransformSensitive = <String>{};

/// Glue Ml Transform Worker enum for `worker_type`.
enum GlueMlTransformWorkerType implements TerraformEnum {
  standard('Standard'),
  g1x('G.1X'),
  g2x('G.2X'),
  g025x('G.025X'),
  g4x('G.4X'),
  g8x('G.8X'),
  z2x('Z.2X');

  const GlueMlTransformWorkerType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `input_record_tables` block of
/// `aws_glue_ml_transform` (derived from provider schema).
@immutable
final class GlueMlTransformInputRecordTables {
  const GlueMlTransformInputRecordTables({
    this.catalogId,
    this.connectionName,
    required this.databaseName,
    required this.tableName,
  });

  final TfArg<String>? catalogId;

  final TfArg<String>? connectionName;

  final TfArg<String> databaseName;

  final TfArg<String> tableName;

  Map<String, Object?> encode() => {
    'catalog_id': ?catalogId?.toTfJson(),
    'connection_name': ?connectionName?.toTfJson(),
    'database_name': databaseName.toTfJson(),
    'table_name': tableName.toTfJson(),
  };
}

/// Typed helper for the `parameters` block of
/// `aws_glue_ml_transform` (derived from provider schema).
@immutable
final class GlueMlTransformParameters {
  const GlueMlTransformParameters({
    required this.transformType,
    required this.findMatchesParameters,
  });

  final TfArg<GlueMlTransformType> transformType;

  final GlueMlTransformFindMatchesParameters findMatchesParameters;

  Map<String, Object?> encode() => {
    'transform_type': transformType.toTfJson(),
    'find_matches_parameters': findMatchesParameters.encode(),
  };
}

/// `transform_type` — derived from the provider schema description.
enum GlueMlTransformType implements TerraformEnum {
  findMatches('FIND_MATCHES');

  const GlueMlTransformType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `parameters.find_matches_parameters` block of
/// `aws_glue_ml_transform` (derived from provider schema).
@immutable
final class GlueMlTransformFindMatchesParameters {
  const GlueMlTransformFindMatchesParameters({
    this.accuracyCostTradeOff,
    this.enforceProvidedLabels,
    this.precisionRecallTradeOff,
    this.primaryKeyColumnName,
  });

  final TfArg<num>? accuracyCostTradeOff;

  final TfArg<bool>? enforceProvidedLabels;

  final TfArg<num>? precisionRecallTradeOff;

  final TfArg<String>? primaryKeyColumnName;

  Map<String, Object?> encode() => {
    'accuracy_cost_trade_off': ?accuracyCostTradeOff?.toTfJson(),
    'enforce_provided_labels': ?enforceProvidedLabels?.toTfJson(),
    'precision_recall_trade_off': ?precisionRecallTradeOff?.toTfJson(),
    'primary_key_column_name': ?primaryKeyColumnName?.toTfJson(),
  };
}

/// Factory wrapper for `aws_glue_ml_transform`.
final class AwsGlueMlTransform extends Resource {
  static const String tfType = 'aws_glue_ml_transform';

  AwsGlueMlTransform({
    required super.localName,
    TfArg<String>? description,
    TfArg<String>? glueVersion,
    TfArg<num>? maxCapacity,
    TfArg<num>? maxRetries,
    required TfArg<String> name,
    TfArg<num>? numberOfWorkers,
    TfArg<String>? region,
    required RefTo<AwsIamRole> roleArn,
    TfArg<Map<String, String>>? tags,
    TfArg<num>? timeout,
    TfArg<GlueMlTransformWorkerType>? workerType,
    required List<GlueMlTransformInputRecordTables> inputRecordTables,
    required GlueMlTransformParameters parameters,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'description': ?description,
           'glue_version': ?glueVersion,
           'max_capacity': ?maxCapacity,
           'max_retries': ?maxRetries,
           'name': name,
           'number_of_workers': ?numberOfWorkers,
           'region': ?region,
           'role_arn': roleArn.encodeAs('arn'),
           'tags': ?tags,
           'timeout': ?timeout,
           'worker_type': ?workerType,
           'input_record_tables': TfArg.literal([
             for (final e in inputRecordTables) e.encode(),
           ]),
           'parameters': TfArg.literal(parameters.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsGlueMlTransformSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsGlueMlTransform>`.
  RefTo<AwsGlueMlTransform> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `label_count` attribute.
  TfRef<num> get labelCount => TfRef.attribute<num>(this, 'label_count');

  /// Reference to `schema` attribute.
  TfRef<List<Map<String, Object?>>> get schema =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'schema');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `glue_version` attribute.
  TfRef<String> get glueVersion =>
      TfRef.attribute<String>(this, 'glue_version');

  /// Reference to `max_capacity` attribute.
  TfRef<num> get maxCapacity => TfRef.attribute<num>(this, 'max_capacity');

  /// Reference to `max_retries` attribute.
  TfRef<num> get maxRetries => TfRef.attribute<num>(this, 'max_retries');

  /// Reference to `number_of_workers` attribute.
  TfRef<num> get numberOfWorkers =>
      TfRef.attribute<num>(this, 'number_of_workers');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `role_arn` attribute.
  TfRef<String> get roleArn => TfRef.attribute<String>(this, 'role_arn');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');

  /// Reference to `timeout` attribute.
  TfRef<num> get timeout => TfRef.attribute<num>(this, 'timeout');

  /// Reference to `worker_type` attribute.
  TfRef<String> get workerType => TfRef.attribute<String>(this, 'worker_type');
}
