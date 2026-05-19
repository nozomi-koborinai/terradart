// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_bigquery_routine`.
const Set<String> _googleBigqueryRoutineSensitive = <String>{};

// ===========================================================================
// Enums
// ===========================================================================

/// Type of routine for `routine_type`. BigQuery currently supports three
/// shapes at this provider version: scalar UDFs, stored procedures, and
/// table-valued functions.
enum BigqueryRoutineType {
  scalarFunction('SCALAR_FUNCTION'),
  procedure('PROCEDURE'),
  tableValuedFunction('TABLE_VALUED_FUNCTION');

  const BigqueryRoutineType(this.terraformValue);
  final String terraformValue;
}

/// Routine source language for `language`. `SQL` is the default for
/// pure-SQL UDFs and TVFs; `JAVASCRIPT` runs inline JS bodies; `PYTHON`
/// / `JAVA` / `SCALA` require an accompanying [BigqueryRoutineSparkOptions]
/// block.
enum BigqueryRoutineLanguage {
  sql('SQL'),
  javascript('JAVASCRIPT'),
  python('PYTHON'),
  java('JAVA'),
  scala('SCALA');

  const BigqueryRoutineLanguage(this.terraformValue);
  final String terraformValue;
}

/// Determinism level for `determinism_level`. Applies to JavaScript UDFs
/// — declaring `DETERMINISTIC` lets BigQuery cache results across query
/// invocations with identical inputs.
enum BigqueryRoutineDeterminismLevel {
  unspecified('DETERMINISM_LEVEL_UNSPECIFIED'),
  deterministic('DETERMINISTIC'),
  notDeterministic('NOT_DETERMINISTIC');

  const BigqueryRoutineDeterminismLevel(this.terraformValue);
  final String terraformValue;
}

/// Data governance type for `data_governance_type`. The provider only
/// accepts `DATA_MASKING` today — set this to register the routine as a
/// custom masking function consumable by BigQuery column-level policies.
enum BigqueryRoutineDataGovernanceType {
  dataMasking('DATA_MASKING');

  const BigqueryRoutineDataGovernanceType(this.terraformValue);
  final String terraformValue;
}

/// Security mode for `security_mode`. `DEFINER` runs the routine with
/// the privileges of its owner; `INVOKER` runs with the caller's
/// privileges. Defaults to BigQuery's auto-detect when omitted.
enum BigqueryRoutineSecurityMode {
  definer('DEFINER'),
  invoker('INVOKER');

  const BigqueryRoutineSecurityMode(this.terraformValue);
  final String terraformValue;
}

/// Argument kind for `arguments.argument_kind`. `FIXED_TYPE` (the
/// default) requires `dataType` to be set; `ANY_TYPE` lets BigQuery
/// infer the type at call site.
enum BigqueryRoutineArgumentKind {
  fixedType('FIXED_TYPE'),
  anyType('ANY_TYPE');

  const BigqueryRoutineArgumentKind(this.terraformValue);
  final String terraformValue;
}

/// Argument direction for `arguments.mode`. Procedures use this to mark
/// each argument as input (`IN`), output (`OUT`), or bidirectional
/// (`INOUT`); functions leave it null.
enum BigqueryRoutineArgumentMode {
  input('IN'),
  output('OUT'),
  inputOutput('INOUT');

  const BigqueryRoutineArgumentMode(this.terraformValue);
  final String terraformValue;
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

  final String? name;
  final BigqueryRoutineArgumentKind? argumentKind;
  final BigqueryRoutineArgumentMode? mode;
  final String? dataType;

  Map<String, Object?> toArgMap() => {
    if (name != null) 'name': name,
    if (argumentKind != null) 'argument_kind': argumentKind!.terraformValue,
    if (mode != null) 'mode': mode!.terraformValue,
    if (dataType != null) 'data_type': dataType,
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

  final String? endpoint;
  final String? connection;
  final Map<String, String>? userDefinedContext;
  final String? maxBatchingRows;

  Map<String, Object?> toArgMap() => {
    if (endpoint != null) 'endpoint': endpoint,
    if (connection != null) 'connection': connection,
    if (userDefinedContext != null) 'user_defined_context': userDefinedContext,
    if (maxBatchingRows != null) 'max_batching_rows': maxBatchingRows,
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

  final String? connection;
  final String? runtimeVersion;
  final String? containerImage;
  final Map<String, String>? properties;
  final String? mainFileUri;
  final List<String>? pyFileUris;
  final List<String>? jarUris;
  final List<String>? fileUris;
  final List<String>? archiveUris;
  final String? mainClass;

  Map<String, Object?> toArgMap() => {
    if (connection != null) 'connection': connection,
    if (runtimeVersion != null) 'runtime_version': runtimeVersion,
    if (containerImage != null) 'container_image': containerImage,
    if (properties != null) 'properties': properties,
    if (mainFileUri != null) 'main_file_uri': mainFileUri,
    if (pyFileUris != null) 'py_file_uris': pyFileUris,
    if (jarUris != null) 'jar_uris': jarUris,
    if (fileUris != null) 'file_uris': fileUris,
    if (archiveUris != null) 'archive_uris': archiveUris,
    if (mainClass != null) 'main_class': mainClass,
  };
}

/// Factory wrapper for `google_bigquery_routine` (provider `hashicorp/google ~> 7.0`).
///
/// Required identity:
/// - [localName]: Terraform local name (the address segment after
///   `google_bigquery_routine.`).
/// - `datasetId`: parent BigQuery dataset id. Typically
///   `TfArg.ref(dataset.datasetIdRef)` where `dataset` is a
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
///   localName: 'add_one',
///   datasetId: TfArg.ref(dataset.datasetIdRef),
///   routineId: TfArg.literal('add_one'),
///   routineType: TfArg.literal(BigqueryRoutineType.scalarFunction.terraformValue),
///   definitionBody: TfArg.literal('x + 1'),
///   language: TfArg.literal(BigqueryRoutineLanguage.sql.terraformValue),
///   arguments: const [
///     BigqueryRoutineArgument(
///       name: 'x',
///       dataType: '{"typeKind":"INT64"}',
///     ),
///   ],
///   returnType: TfArg.literal('{"typeKind":"INT64"}'),
/// );
/// ```
final class GoogleBigqueryRoutine extends Resource {
  // ignore: constant_identifier_names
  static const String $tfType = 'google_bigquery_routine';

  GoogleBigqueryRoutine({
    required super.localName,
    required TfArg<String> datasetId,
    required TfArg<String> routineId,
    required TfArg<BigqueryRoutineType> routineType,
    required TfArg<String> definitionBody,
    TfArg<BigqueryRoutineLanguage>? language,
    TfArg<String>? description,
    TfArg<BigqueryRoutineDeterminismLevel>? determinismLevel,
    TfArg<BigqueryRoutineDataGovernanceType>? dataGovernanceType,
    TfArg<BigqueryRoutineSecurityMode>? securityMode,
    TfArg<List<String>>? importedLibraries,
    TfArg<String>? returnType,
    TfArg<String>? returnTableType,
    List<BigqueryRoutineArgument>? arguments,
    BigqueryRoutineRemoteFunctionOptions? remoteFunctionOptions,
    BigqueryRoutineSparkOptions? sparkOptions,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: $tfType,
         argMap: {
           'dataset_id': datasetId,
           'routine_id': routineId,
           'routine_type': routineType,
           'definition_body': definitionBody,
           if (language != null) 'language': language,
           if (description != null) 'description': description,
           if (determinismLevel != null) 'determinism_level': determinismLevel,
           if (dataGovernanceType != null)
             'data_governance_type': dataGovernanceType,
           if (securityMode != null) 'security_mode': securityMode,
           if (importedLibraries != null)
             'imported_libraries': importedLibraries,
           if (returnType != null) 'return_type': returnType,
           if (returnTableType != null) 'return_table_type': returnTableType,
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
           if (project != null) 'project': project,
         },
       );

  @override
  // ignore: non_constant_identifier_names
  Set<String> get $sensitiveFields => _googleBigqueryRoutineSensitive;

  /// Reference to `routine_id` attribute.
  TfRef<String> get routineIdRef => TfRef.attribute<String>(this, 'routine_id');

  /// Reference to `id` attribute (full routine path
  /// `projects/{project}/datasets/{dataset_id}/routines/{routine_id}`).
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `creation_time` attribute (epoch milliseconds).
  TfRef<num> get creationTime => TfRef.attribute<num>(this, 'creation_time');

  /// Reference to `last_modified_time` attribute (epoch milliseconds).
  TfRef<num> get lastModifiedTime =>
      TfRef.attribute<num>(this, 'last_modified_time');
}
