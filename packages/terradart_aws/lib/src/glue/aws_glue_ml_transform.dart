// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../iam/aws_iam_role.dart' show AwsIamRole;

/// Sensitive field paths for `aws_glue_ml_transform`.
const Set<String> _awsGlueMlTransformSensitive = <String>{};

/// Glue Ml Transform Worker enum for `worker_type`.
extension type const GlueMlTransformWorkerType._(TfArg<String> _)
    implements TfArg<String> {
  GlueMlTransformWorkerType.variable(String name)
    : this._(TfArg.variable(name));
  GlueMlTransformWorkerType.expression(String template)
    : this._(TfArg.expression(template));
  const GlueMlTransformWorkerType.arg(TfArg<String> arg) : this._(arg);

  static const standard = GlueMlTransformWorkerType._(TfArgLiteral('Standard'));
  static const g1x = GlueMlTransformWorkerType._(TfArgLiteral('G.1X'));
  static const g2x = GlueMlTransformWorkerType._(TfArgLiteral('G.2X'));
  static const g025x = GlueMlTransformWorkerType._(TfArgLiteral('G.025X'));
  static const g4x = GlueMlTransformWorkerType._(TfArgLiteral('G.4X'));
  static const g8x = GlueMlTransformWorkerType._(TfArgLiteral('G.8X'));
  static const z2x = GlueMlTransformWorkerType._(TfArgLiteral('Z.2X'));

  static const List<GlueMlTransformWorkerType> values = [
    standard,
    g1x,
    g2x,
    g025x,
    g4x,
    g8x,
    z2x,
  ];
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

  final GlueMlTransformType transformType;

  final GlueMlTransformFindMatchesParameters findMatchesParameters;

  Map<String, Object?> encode() => {
    'transform_type': transformType.toTfJson(),
    'find_matches_parameters': findMatchesParameters.encode(),
  };
}

/// `transform_type` — derived from the provider schema description.
extension type const GlueMlTransformType._(TfArg<String> _)
    implements TfArg<String> {
  GlueMlTransformType.variable(String name) : this._(TfArg.variable(name));
  GlueMlTransformType.expression(String template)
    : this._(TfArg.expression(template));
  const GlueMlTransformType.arg(TfArg<String> arg) : this._(arg);

  static const findMatches = GlueMlTransformType._(
    TfArgLiteral('FIND_MATCHES'),
  );

  static const List<GlueMlTransformType> values = [findMatches];
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

  AwsGlueMlTransform(
    super.localName, {
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
    GlueMlTransformWorkerType? workerType,
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
