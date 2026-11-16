// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_data_lineage_open_lineage_job`.
const Set<String> _googleDataLineageOpenLineageJobSensitive = <String>{};

/// Typed helper for the `input` block of
/// `google_data_lineage_open_lineage_job` (derived from provider schema).
@immutable
final class DataLineageOpenLineageJobInput {
  const DataLineageOpenLineageJobInput({
    required this.name,
    required this.namespace,
    this.catalog,
    this.symlink,
  });

  final TfArg<String> name;

  final TfArg<String> namespace;

  final DataLineageOpenLineageJobCatalog? catalog;

  final List<DataLineageOpenLineageJobSymlink>? symlink;

  @internal
  Map<String, Object?> encode() => {
    'name': name.toTfJson(),
    'namespace': namespace.toTfJson(),
    'catalog': ?catalog?.encode(),
    if (symlink != null) 'symlink': [for (final e in symlink!) e.encode()],
  };
}

/// Typed helper for the `input.catalog` block of
/// `google_data_lineage_open_lineage_job` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class DataLineageOpenLineageJobCatalog {
  const DataLineageOpenLineageJobCatalog({
    required this.framework,
    required this.name,
    required this.type,
  });

  final TfArg<String> framework;

  final TfArg<String> name;

  final TfArg<String> type;

  @internal
  Map<String, Object?> encode() => {
    'framework': framework.toTfJson(),
    'name': name.toTfJson(),
    'type': type.toTfJson(),
  };
}

/// Typed helper for the `input.symlink` block of
/// `google_data_lineage_open_lineage_job` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class DataLineageOpenLineageJobSymlink {
  const DataLineageOpenLineageJobSymlink({
    required this.name,
    required this.namespace,
    required this.type,
  });

  final TfArg<String> name;

  final TfArg<String> namespace;

  final TfArg<String> type;

  @internal
  Map<String, Object?> encode() => {
    'name': name.toTfJson(),
    'namespace': namespace.toTfJson(),
    'type': type.toTfJson(),
  };
}

/// Typed helper for the `output` block of
/// `google_data_lineage_open_lineage_job` (derived from provider schema).
@immutable
final class DataLineageOpenLineageJobOutput {
  const DataLineageOpenLineageJobOutput({
    required this.name,
    required this.namespace,
    this.catalog,
    this.columnLineage,
    this.symlink,
  });

  final TfArg<String> name;

  final TfArg<String> namespace;

  final DataLineageOpenLineageJobCatalog? catalog;

  final DataLineageOpenLineageJobColumnLineage? columnLineage;

  final List<DataLineageOpenLineageJobSymlink>? symlink;

  @internal
  Map<String, Object?> encode() => {
    'name': name.toTfJson(),
    'namespace': namespace.toTfJson(),
    'catalog': ?catalog?.encode(),
    'column_lineage': ?columnLineage?.encode(),
    if (symlink != null) 'symlink': [for (final e in symlink!) e.encode()],
  };
}

/// Typed helper for the `output.column_lineage` block of
/// `google_data_lineage_open_lineage_job` (derived from provider schema).
@immutable
final class DataLineageOpenLineageJobColumnLineage {
  const DataLineageOpenLineageJobColumnLineage({
    this.datasetInput,
    required this.field,
  });

  final List<DataLineageOpenLineageJobDatasetInput>? datasetInput;

  final List<DataLineageOpenLineageJobField> field;

  @internal
  Map<String, Object?> encode() => {
    if (datasetInput != null)
      'dataset_input': [for (final e in datasetInput!) e.encode()],
    'field': [for (final e in field) e.encode()],
  };
}

/// Typed helper for the `output.column_lineage.dataset_input` block of
/// `google_data_lineage_open_lineage_job` (derived from provider schema).
@immutable
final class DataLineageOpenLineageJobDatasetInput {
  const DataLineageOpenLineageJobDatasetInput({
    required this.field,
    required this.name,
    required this.namespace,
    this.transformation,
  });

  final TfArg<String> field;

  final TfArg<String> name;

  final TfArg<String> namespace;

  final List<DataLineageOpenLineageJobTransformation>? transformation;

  @internal
  Map<String, Object?> encode() => {
    'field': field.toTfJson(),
    'name': name.toTfJson(),
    'namespace': namespace.toTfJson(),
    if (transformation != null)
      'transformation': [for (final e in transformation!) e.encode()],
  };
}

/// Typed helper for the `output.column_lineage.dataset_input.transformation` block of
/// `google_data_lineage_open_lineage_job` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class DataLineageOpenLineageJobTransformation {
  const DataLineageOpenLineageJobTransformation({
    this.subtype,
    required this.type,
  });

  final TfArg<String>? subtype;

  final TfArg<String> type;

  @internal
  Map<String, Object?> encode() => {
    'subtype': ?subtype?.toTfJson(),
    'type': type.toTfJson(),
  };
}

/// Typed helper for the `output.column_lineage.field` block of
/// `google_data_lineage_open_lineage_job` (derived from provider schema).
@immutable
final class DataLineageOpenLineageJobField {
  const DataLineageOpenLineageJobField({
    required this.name,
    required this.input,
  });

  final TfArg<String> name;

  final List<DataLineageOpenLineageJobFieldInput> input;

  @internal
  Map<String, Object?> encode() => {
    'name': name.toTfJson(),
    'input': [for (final e in input) e.encode()],
  };
}

/// Typed helper for the `output.column_lineage.field.input` block of
/// `google_data_lineage_open_lineage_job` (derived from provider schema).
@immutable
final class DataLineageOpenLineageJobFieldInput {
  const DataLineageOpenLineageJobFieldInput({
    required this.field,
    required this.name,
    required this.namespace,
    this.transformation,
  });

  final TfArg<String> field;

  final TfArg<String> name;

  final TfArg<String> namespace;

  final List<DataLineageOpenLineageJobTransformation>? transformation;

  @internal
  Map<String, Object?> encode() => {
    'field': field.toTfJson(),
    'name': name.toTfJson(),
    'namespace': namespace.toTfJson(),
    if (transformation != null)
      'transformation': [for (final e in transformation!) e.encode()],
  };
}

/// Factory wrapper for `google_data_lineage_open_lineage_job`.
final class GoogleDataLineageOpenLineageJob extends Resource {
  static const String tfType = 'google_data_lineage_open_lineage_job';

  GoogleDataLineageOpenLineageJob(
    super.localName, {
    TfArg<String>? deletionPolicy,
    TfArg<String>? description,
    required TfArg<String> name,
    required TfArg<String> namespace,
    List<DataLineageOpenLineageJobInput>? input,
    List<DataLineageOpenLineageJobOutput>? output,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'deletion_policy': ?deletionPolicy,
           'description': ?description,
           'name': name,
           'namespace': namespace,
           if (input != null)
             'input': TfArg.literal([for (final e in input) e.encode()]),
           if (output != null)
             'output': TfArg.literal([for (final e in output) e.encode()]),
         },
       );

  @override
  Set<String> get sensitiveFields => _googleDataLineageOpenLineageJobSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleDataLineageOpenLineageJob>`.
  RefTo<GoogleDataLineageOpenLineageJob> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `process` attribute.
  TfRef<String> get process => TfRef.attribute<String>(this, 'process');

  /// Reference to `run` attribute.
  TfRef<String> get run => TfRef.attribute<String>(this, 'run');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicy =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `namespace` attribute.
  TfRef<String> get namespace => TfRef.attribute<String>(this, 'namespace');
}
