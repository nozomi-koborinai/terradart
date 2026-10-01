// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../bigquery/google_bigquery_dataset.dart' show GoogleBigqueryDataset;

/// Sensitive field paths for `google_bigquery_routine`.
const Set<String> _googleBigqueryRoutineSensitive = <String>{};

// ===========================================================================
// Enums
// ===========================================================================

/// Type of routine for `routine_type`. BigQuery currently supports three
/// shapes at this provider version: scalar UDFs, stored procedures, and
/// table-valued functions.
extension type const BigqueryRoutineType._(TfArg<String> _)
    implements TfArg<String> {
  BigqueryRoutineType.variable(String name) : this._(TfArg.variable(name));
  BigqueryRoutineType.expression(String template)
    : this._(TfArg.expression(template));
  const BigqueryRoutineType.arg(TfArg<String> arg) : this._(arg);

  static const scalarFunction = BigqueryRoutineType._(
    TfArgLiteral('SCALAR_FUNCTION'),
  );
  static const procedure = BigqueryRoutineType._(TfArgLiteral('PROCEDURE'));
  static const tableValuedFunction = BigqueryRoutineType._(
    TfArgLiteral('TABLE_VALUED_FUNCTION'),
  );

  static const List<BigqueryRoutineType> values = [
    scalarFunction,
    procedure,
    tableValuedFunction,
  ];
}

/// Routine source language for `language`. `SQL` is the default for
/// pure-SQL UDFs and TVFs; `JAVASCRIPT` runs inline JS bodies; `PYTHON`
/// / `JAVA` / `SCALA` require an accompanying [BigqueryRoutineSparkOptions]
/// block.
extension type const BigqueryRoutineLanguage._(TfArg<String> _)
    implements TfArg<String> {
  BigqueryRoutineLanguage.variable(String name) : this._(TfArg.variable(name));
  BigqueryRoutineLanguage.expression(String template)
    : this._(TfArg.expression(template));
  const BigqueryRoutineLanguage.arg(TfArg<String> arg) : this._(arg);

  static const sql = BigqueryRoutineLanguage._(TfArgLiteral('SQL'));
  static const javascript = BigqueryRoutineLanguage._(
    TfArgLiteral('JAVASCRIPT'),
  );
  static const python = BigqueryRoutineLanguage._(TfArgLiteral('PYTHON'));
  static const java = BigqueryRoutineLanguage._(TfArgLiteral('JAVA'));
  static const scala = BigqueryRoutineLanguage._(TfArgLiteral('SCALA'));

  static const List<BigqueryRoutineLanguage> values = [
    sql,
    javascript,
    python,
    java,
    scala,
  ];
}

/// Determinism level for `determinism_level`. Applies to JavaScript UDFs
/// — declaring `DETERMINISTIC` lets BigQuery cache results across query
/// invocations with identical inputs.
extension type const BigqueryRoutineDeterminismLevel._(TfArg<String> _)
    implements TfArg<String> {
  BigqueryRoutineDeterminismLevel.variable(String name)
    : this._(TfArg.variable(name));
  BigqueryRoutineDeterminismLevel.expression(String template)
    : this._(TfArg.expression(template));
  const BigqueryRoutineDeterminismLevel.arg(TfArg<String> arg) : this._(arg);

  static const unspecified = BigqueryRoutineDeterminismLevel._(
    TfArgLiteral('DETERMINISM_LEVEL_UNSPECIFIED'),
  );
  static const deterministic = BigqueryRoutineDeterminismLevel._(
    TfArgLiteral('DETERMINISTIC'),
  );
  static const notDeterministic = BigqueryRoutineDeterminismLevel._(
    TfArgLiteral('NOT_DETERMINISTIC'),
  );

  static const List<BigqueryRoutineDeterminismLevel> values = [
    unspecified,
    deterministic,
    notDeterministic,
  ];
}

/// Data governance type for `data_governance_type`. The provider only
/// accepts `DATA_MASKING` today — set this to register the routine as a
/// custom masking function consumable by BigQuery column-level policies.
extension type const BigqueryRoutineDataGovernanceType._(TfArg<String> _)
    implements TfArg<String> {
  BigqueryRoutineDataGovernanceType.variable(String name)
    : this._(TfArg.variable(name));
  BigqueryRoutineDataGovernanceType.expression(String template)
    : this._(TfArg.expression(template));
  const BigqueryRoutineDataGovernanceType.arg(TfArg<String> arg) : this._(arg);

  static const dataMasking = BigqueryRoutineDataGovernanceType._(
    TfArgLiteral('DATA_MASKING'),
  );

  static const List<BigqueryRoutineDataGovernanceType> values = [dataMasking];
}

/// Security mode for `security_mode`. `DEFINER` runs the routine with
/// the privileges of its owner; `INVOKER` runs with the caller's
/// privileges. Defaults to BigQuery's auto-detect when omitted.
extension type const BigqueryRoutineSecurityMode._(TfArg<String> _)
    implements TfArg<String> {
  BigqueryRoutineSecurityMode.variable(String name)
    : this._(TfArg.variable(name));
  BigqueryRoutineSecurityMode.expression(String template)
    : this._(TfArg.expression(template));
  const BigqueryRoutineSecurityMode.arg(TfArg<String> arg) : this._(arg);

  static const definer = BigqueryRoutineSecurityMode._(TfArgLiteral('DEFINER'));
  static const invoker = BigqueryRoutineSecurityMode._(TfArgLiteral('INVOKER'));

  static const List<BigqueryRoutineSecurityMode> values = [definer, invoker];
}

/// Argument kind for `arguments.argument_kind`. `FIXED_TYPE` (the
/// default) requires `dataType` to be set; `ANY_TYPE` lets BigQuery
/// infer the type at call site.
extension type const BigqueryRoutineArgumentKind._(TfArg<String> _)
    implements TfArg<String> {
  BigqueryRoutineArgumentKind.variable(String name)
    : this._(TfArg.variable(name));
  BigqueryRoutineArgumentKind.expression(String template)
    : this._(TfArg.expression(template));
  const BigqueryRoutineArgumentKind.arg(TfArg<String> arg) : this._(arg);

  static const fixedType = BigqueryRoutineArgumentKind._(
    TfArgLiteral('FIXED_TYPE'),
  );
  static const anyType = BigqueryRoutineArgumentKind._(
    TfArgLiteral('ANY_TYPE'),
  );

  static const List<BigqueryRoutineArgumentKind> values = [fixedType, anyType];
}

/// Argument direction for `arguments.mode`. Procedures use this to mark
/// each argument as input (`IN`), output (`OUT`), or bidirectional
/// (`INOUT`); functions leave it null.
extension type const BigqueryRoutineArgumentMode._(TfArg<String> _)
    implements TfArg<String> {
  BigqueryRoutineArgumentMode.variable(String name)
    : this._(TfArg.variable(name));
  BigqueryRoutineArgumentMode.expression(String template)
    : this._(TfArg.expression(template));
  const BigqueryRoutineArgumentMode.arg(TfArg<String> arg) : this._(arg);

  static const input = BigqueryRoutineArgumentMode._(TfArgLiteral('IN'));
  static const output = BigqueryRoutineArgumentMode._(TfArgLiteral('OUT'));
  static const inputOutput = BigqueryRoutineArgumentMode._(
    TfArgLiteral('INOUT'),
  );

  static const List<BigqueryRoutineArgumentMode> values = [
    input,
    output,
    inputOutput,
  ];
}

// ===========================================================================
// arguments[] entry
// ===========================================================================

/// One entry of the `arguments` block (repeatable list). [dataType] is a
/// JSON-encoded BigQuery type string; omit it only when
/// [argumentKind] = [BigqueryRoutineArgumentKind.anyType]. [mode] is
/// procedure-only; leave it null for scalar / TVF functions.
@immutable
class BigqueryRoutineArgument {
  const BigqueryRoutineArgument({
    this.name,
    this.argumentKind,
    this.mode,
    this.dataType,
  });

  final TfArg<String>? name;
  final BigqueryRoutineArgumentKind? argumentKind;
  final BigqueryRoutineArgumentMode? mode;
  final TfArg<String>? dataType;

  Map<String, Object?> toArgMap() => {
    if (name != null) 'name': name!.toTfJson(),
    if (argumentKind != null) 'argument_kind': argumentKind!.toTfJson(),
    if (mode != null) 'mode': mode!.toTfJson(),
    if (dataType != null) 'data_type': dataType!.toTfJson(),
  };
}

// ===========================================================================
// remote_function_options block
// ===========================================================================

/// `remote_function_options` block (max=1). Required when
/// [BigqueryRoutineType.scalarFunction] is backed by a remote service
/// (Cloud Functions / Cloud Run). [endpoint] points at the HTTPS URL of
/// the function; [connection] is the fully-qualified BigQuery
/// connection (`projects/{p}/locations/{l}/connections/{c}`) holding
/// the credential.
@immutable
class BigqueryRoutineRemoteFunctionOptions {
  const BigqueryRoutineRemoteFunctionOptions({
    this.endpoint,
    this.connection,
    this.userDefinedContext,
    this.maxBatchingRows,
  });

  final TfArg<String>? endpoint;
  final TfArg<String>? connection;
  final Map<String, String>? userDefinedContext;
  final TfArg<String>? maxBatchingRows;

  Map<String, Object?> toArgMap() => {
    if (endpoint != null) 'endpoint': endpoint!.toTfJson(),
    if (connection != null) 'connection': connection!.toTfJson(),
    if (userDefinedContext != null) 'user_defined_context': userDefinedContext,
    if (maxBatchingRows != null)
      'max_batching_rows': maxBatchingRows!.toTfJson(),
  };
}

// ===========================================================================
// spark_options block
// ===========================================================================

/// `spark_options` block (max=1). Required when [language] is `PYTHON`,
/// `JAVA`, or `SCALA`. [connection] points at a BigQuery Spark
/// connection. The remaining fields configure the Spark application —
/// exactly one of [mainClass] / [mainFileUri] must be set for Java /
/// Scala; PySpark uses [mainFileUri] or `definitionBody`.
@immutable
class BigqueryRoutineSparkOptions {
  const BigqueryRoutineSparkOptions({
    this.connection,
    this.runtimeVersion,
    this.containerImage,
    this.properties,
    this.mainFileUri,
    this.pyFileUris,
    this.jarUris,
    this.fileUris,
    this.archiveUris,
    this.mainClass,
  });

  final TfArg<String>? connection;
  final TfArg<String>? runtimeVersion;
  final TfArg<String>? containerImage;
  final Map<String, String>? properties;
  final TfArg<String>? mainFileUri;
  final List<String>? pyFileUris;
  final List<String>? jarUris;
  final List<String>? fileUris;
  final List<String>? archiveUris;
  final TfArg<String>? mainClass;

  Map<String, Object?> toArgMap() => {
    if (connection != null) 'connection': connection!.toTfJson(),
    if (runtimeVersion != null) 'runtime_version': runtimeVersion!.toTfJson(),
    if (containerImage != null) 'container_image': containerImage!.toTfJson(),
    if (properties != null) 'properties': properties,
    if (mainFileUri != null) 'main_file_uri': mainFileUri!.toTfJson(),
    if (pyFileUris != null) 'py_file_uris': pyFileUris,
    if (jarUris != null) 'jar_uris': jarUris,
    if (fileUris != null) 'file_uris': fileUris,
    if (archiveUris != null) 'archive_uris': archiveUris,
    if (mainClass != null) 'main_class': mainClass!.toTfJson(),
  };
}

/// Factory wrapper for `google_bigquery_routine`.
///
/// A user-defined function or a stored procedure that belongs to a Dataset
///
/// Required identity:
/// - [localName]: Terraform local name (the address segment after
///   `google_bigquery_routine.`).
/// - `datasetId`: parent BigQuery dataset id. Typically
///   `dataset.ref` where `dataset` is a
///   `GoogleBigqueryDataset`.
/// - `routineId`: routine id. Letters/digits/underscores only, up to 256
///   chars. Immutable after create.
/// - `routineType`: one of [BigqueryRoutineType] — `SCALAR_FUNCTION`,
///   `PROCEDURE`, or `TABLE_VALUED_FUNCTION`.
/// - `definitionBody`: SQL/JS/Python/Java/Scala source. For
///   `language = SQL`, this is the expression inside (but excluding) the
///   `AS (...)` parentheses.
///
/// `returnType` and `returnTableType` expect JSON-encoded BigQuery type
/// strings (e.g. `jsonEncode({'typeKind': 'INT64'})`). The provider
/// surfaces any byte-level reordering as a diff — pass the type exactly
/// as the API returns it to avoid recurring plan churn.
///
/// The `arguments` block is repeatable: each entry is a
/// [BigqueryRoutineArgument] with `name`, `argumentKind`, `mode`, and
/// `dataType` (JSON-encoded). Procedures use `mode` (`IN`/`OUT`/`INOUT`);
/// scalar/TVF functions leave it null.
///
/// `remoteFunctionOptions` (max=1) configures a BigQuery Remote Function
/// backed by a Cloud Function / Cloud Run service via `connection`.
/// `sparkOptions` (max=1) configures a Spark stored procedure for
/// `language` = `PYTHON` / `JAVA` / `SCALA`.
///
/// Example:
/// ```dart
/// final addOne = GoogleBigqueryRoutine(
///   'add_one',
///   datasetId: dataset.ref,
///   routineId: TfArg.literal('add_one'),
///   routineType: BigqueryRoutineType.scalarFunction,
///   definitionBody: TfArg.literal('x + 1'),
///   language: BigqueryRoutineLanguage.sql,
///   arguments: [
///     BigqueryRoutineArgument(
///       name: .literal('x'),
///       dataType: .literal('{"typeKind":"INT64"}'),
///     ),
///   ],
///   returnType: TfArg.literal('{"typeKind":"INT64"}'),
/// );
/// ```
final class GoogleBigqueryRoutine extends Resource {
  static const String tfType = 'google_bigquery_routine';

  GoogleBigqueryRoutine(
    super.localName, {
    required RefTo<GoogleBigqueryDataset> datasetId,
    required TfArg<String> routineId,
    required BigqueryRoutineType routineType,
    required TfArg<String> definitionBody,
    BigqueryRoutineLanguage? language,
    TfArg<String>? description,
    BigqueryRoutineDeterminismLevel? determinismLevel,
    BigqueryRoutineDataGovernanceType? dataGovernanceType,
    BigqueryRoutineSecurityMode? securityMode,
    TfArg<List<String>>? importedLibraries,
    TfArg<String>? returnType,
    TfArg<String>? returnTableType,
    List<BigqueryRoutineArgument>? arguments,
    BigqueryRoutineRemoteFunctionOptions? remoteFunctionOptions,
    BigqueryRoutineSparkOptions? sparkOptions,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'dataset_id': datasetId.encodeAs('dataset_id'),
           'routine_id': routineId,
           'routine_type': routineType,
           'definition_body': definitionBody,
           'language': ?language,
           'description': ?description,
           'determinism_level': ?determinismLevel,
           'data_governance_type': ?dataGovernanceType,
           'security_mode': ?securityMode,
           'imported_libraries': ?importedLibraries,
           'return_type': ?returnType,
           'return_table_type': ?returnTableType,
           if (arguments != null)
             'arguments': TfArg.literal(
               arguments.map((a) => a.toArgMap()).toList(),
             ),
           if (remoteFunctionOptions != null)
             'remote_function_options': TfArg.literal([
               remoteFunctionOptions.toArgMap(),
             ]),
           if (sparkOptions != null)
             'spark_options': TfArg.literal([sparkOptions.toArgMap()]),
           'project': ?project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleBigqueryRoutineSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleBigqueryRoutine>`.
  RefTo<GoogleBigqueryRoutine> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `creation_time` attribute.
  TfRef<num> get creationTime => TfRef.attribute<num>(this, 'creation_time');

  /// Reference to `last_modified_time` attribute.
  TfRef<num> get lastModifiedTime =>
      TfRef.attribute<num>(this, 'last_modified_time');

  /// Reference to `data_governance_type` attribute.
  TfRef<String> get dataGovernanceType =>
      TfRef.attribute<String>(this, 'data_governance_type');

  /// Reference to `dataset_id` attribute.
  TfRef<String> get datasetId => TfRef.attribute<String>(this, 'dataset_id');

  /// Reference to `definition_body` attribute.
  TfRef<String> get definitionBody =>
      TfRef.attribute<String>(this, 'definition_body');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicy =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `determinism_level` attribute.
  TfRef<String> get determinismLevel =>
      TfRef.attribute<String>(this, 'determinism_level');

  /// Reference to `imported_libraries` attribute.
  TfRef<List<String>> get importedLibraries =>
      TfRef.attribute<List<String>>(this, 'imported_libraries');

  /// Reference to `language` attribute.
  TfRef<String> get language => TfRef.attribute<String>(this, 'language');

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');

  /// Reference to `return_table_type` attribute.
  TfRef<String> get returnTableType =>
      TfRef.attribute<String>(this, 'return_table_type');

  /// Reference to `return_type` attribute.
  TfRef<String> get returnType => TfRef.attribute<String>(this, 'return_type');

  /// Reference to `routine_id` attribute.
  TfRef<String> get routineId => TfRef.attribute<String>(this, 'routine_id');

  /// Reference to `routine_type` attribute.
  TfRef<String> get routineType =>
      TfRef.attribute<String>(this, 'routine_type');

  /// Reference to `security_mode` attribute.
  TfRef<String> get securityMode =>
      TfRef.attribute<String>(this, 'security_mode');
}
