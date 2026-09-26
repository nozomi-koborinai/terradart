// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_glue_ml_transform`.
const Set<String> _awsGlueMlTransformSensitive = <String>{};

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
    if (catalogId != null) 'catalog_id': catalogId!.toTfJson(),
    if (connectionName != null) 'connection_name': connectionName!.toTfJson(),
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

  final TfArg<String> transformType;

  final GlueMlTransformParametersFindMatchesParameters findMatchesParameters;

  Map<String, Object?> encode() => {
    'transform_type': transformType.toTfJson(),
    'find_matches_parameters': findMatchesParameters.encode(),
  };
}

/// Typed helper for the `parameters.find_matches_parameters` block of
/// `aws_glue_ml_transform` (derived from provider schema).
@immutable
final class GlueMlTransformParametersFindMatchesParameters {
  const GlueMlTransformParametersFindMatchesParameters({
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
    if (accuracyCostTradeOff != null)
      'accuracy_cost_trade_off': accuracyCostTradeOff!.toTfJson(),
    if (enforceProvidedLabels != null)
      'enforce_provided_labels': enforceProvidedLabels!.toTfJson(),
    if (precisionRecallTradeOff != null)
      'precision_recall_trade_off': precisionRecallTradeOff!.toTfJson(),
    if (primaryKeyColumnName != null)
      'primary_key_column_name': primaryKeyColumnName!.toTfJson(),
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
    required TfArg<String> roleArn,
    TfArg<Map<String, String>>? tags,
    TfArg<num>? timeout,
    TfArg<String>? workerType,
    required List<GlueMlTransformInputRecordTables> inputRecordTables,
    required GlueMlTransformParameters parameters,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (description != null) 'description': description,
           if (glueVersion != null) 'glue_version': glueVersion,
           if (maxCapacity != null) 'max_capacity': maxCapacity,
           if (maxRetries != null) 'max_retries': maxRetries,
           'name': name,
           if (numberOfWorkers != null) 'number_of_workers': numberOfWorkers,
           if (region != null) 'region': region,
           'role_arn': roleArn,
           if (tags != null) 'tags': tags,
           if (timeout != null) 'timeout': timeout,
           if (workerType != null) 'worker_type': workerType,
           'input_record_tables': TfArg.literal([
             for (final e in inputRecordTables) e.encode(),
           ]),
           'parameters': TfArg.literal(parameters.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsGlueMlTransformSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `label_count` attribute.
  TfRef<num> get labelCount => TfRef.attribute<num>(this, 'label_count');

  /// Reference to `schema` attribute.
  TfRef<List<Map<String, Object?>>> get schema =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'schema');
}
