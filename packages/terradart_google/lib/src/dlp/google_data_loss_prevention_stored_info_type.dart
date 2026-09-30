// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../bigquery/google_bigquery_dataset.dart' show GoogleBigqueryDataset;

/// Sensitive field paths for `google_data_loss_prevention_stored_info_type`.
const Set<String> _googleDataLossPreventionStoredInfoTypeSensitive = <String>{};

/// Exactly one of `dictionary`, `regex`, `large_custom_dictionary` on `google_data_loss_prevention_stored_info_type`: the provider rejects
/// none and more than one, so each variant sets one of them.
///
/// Pick one with a dot shorthand: `.dictionary(...)`.
sealed class DataLossPreventionStoredInfoTypeDefinition {
  const DataLossPreventionStoredInfoTypeDefinition();

  /// Sets `dictionary`.
  const factory DataLossPreventionStoredInfoTypeDefinition.dictionary(
    DataLossPreventionStoredInfoTypeDictionary dictionary,
  ) = DataLossPreventionStoredInfoTypeDefinitionDictionary;

  /// Sets `regex`.
  const factory DataLossPreventionStoredInfoTypeDefinition.regex(
    DataLossPreventionStoredInfoTypeRegex regex,
  ) = DataLossPreventionStoredInfoTypeDefinitionRegex;

  /// Sets `large_custom_dictionary`.
  const factory DataLossPreventionStoredInfoTypeDefinition.largeCustomDictionary(
    DataLossPreventionStoredInfoTypeLargeCustomDictionary largeCustomDictionary,
  ) = DataLossPreventionStoredInfoTypeDefinitionLargeCustomDictionary;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();

  /// The resource arguments behind [encode], as the caller's
  /// [TfArg]s.
  Map<String, TfArg<Object?>> get argMap;
}

/// The [DataLossPreventionStoredInfoTypeDefinition.dictionary] choice: sets `dictionary`.
final class DataLossPreventionStoredInfoTypeDefinitionDictionary
    extends DataLossPreventionStoredInfoTypeDefinition {
  const DataLossPreventionStoredInfoTypeDefinitionDictionary(this.dictionary);

  final DataLossPreventionStoredInfoTypeDictionary dictionary;

  @override
  String get blockKey => 'dictionary';

  @override
  Map<String, Object?> encode() => {'dictionary': dictionary.encode()};

  @override
  Map<String, TfArg<Object?>> get argMap => {
    'dictionary': TfArg.literal(dictionary.encode()),
  };
}

/// The [DataLossPreventionStoredInfoTypeDefinition.regex] choice: sets `regex`.
final class DataLossPreventionStoredInfoTypeDefinitionRegex
    extends DataLossPreventionStoredInfoTypeDefinition {
  const DataLossPreventionStoredInfoTypeDefinitionRegex(this.regex);

  final DataLossPreventionStoredInfoTypeRegex regex;

  @override
  String get blockKey => 'regex';

  @override
  Map<String, Object?> encode() => {'regex': regex.encode()};

  @override
  Map<String, TfArg<Object?>> get argMap => {
    'regex': TfArg.literal(regex.encode()),
  };
}

/// The [DataLossPreventionStoredInfoTypeDefinition.largeCustomDictionary] choice: sets `large_custom_dictionary`.
final class DataLossPreventionStoredInfoTypeDefinitionLargeCustomDictionary
    extends DataLossPreventionStoredInfoTypeDefinition {
  const DataLossPreventionStoredInfoTypeDefinitionLargeCustomDictionary(
    this.largeCustomDictionary,
  );

  final DataLossPreventionStoredInfoTypeLargeCustomDictionary
  largeCustomDictionary;

  @override
  String get blockKey => 'large_custom_dictionary';

  @override
  Map<String, Object?> encode() => {
    'large_custom_dictionary': largeCustomDictionary.encode(),
  };

  @override
  Map<String, TfArg<Object?>> get argMap => {
    'large_custom_dictionary': TfArg.literal(largeCustomDictionary.encode()),
  };
}

/// Exactly one of `word_list`, `cloud_storage_path` on the `dictionary` block of `google_data_loss_prevention_stored_info_type`: the provider rejects
/// none and more than one, so each variant sets one of them.
///
/// Pick one with a dot shorthand: `.wordList(...)`.
sealed class DataLossPreventionStoredInfoTypeDictionary {
  const DataLossPreventionStoredInfoTypeDictionary();

  /// Sets `word_list`.
  const factory DataLossPreventionStoredInfoTypeDictionary.wordList(
    DataLossPreventionStoredInfoTypeDictionaryWordList wordList,
  ) = DataLossPreventionStoredInfoTypeDictionaryWordListChoice;

  /// Sets `cloud_storage_path`.
  const factory DataLossPreventionStoredInfoTypeDictionary.cloudStoragePath(
    DataLossPreventionStoredInfoTypeDictionaryCloudStoragePath cloudStoragePath,
  ) = DataLossPreventionStoredInfoTypeDictionaryCloudStoragePathChoice;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();
}

/// The [DataLossPreventionStoredInfoTypeDictionary.wordList] choice: sets `word_list`.
final class DataLossPreventionStoredInfoTypeDictionaryWordListChoice
    extends DataLossPreventionStoredInfoTypeDictionary {
  const DataLossPreventionStoredInfoTypeDictionaryWordListChoice(this.wordList);

  final DataLossPreventionStoredInfoTypeDictionaryWordList wordList;

  @override
  String get blockKey => 'word_list';

  @override
  Map<String, Object?> encode() => {'word_list': wordList.encode()};
}

/// The [DataLossPreventionStoredInfoTypeDictionary.cloudStoragePath] choice: sets `cloud_storage_path`.
final class DataLossPreventionStoredInfoTypeDictionaryCloudStoragePathChoice
    extends DataLossPreventionStoredInfoTypeDictionary {
  const DataLossPreventionStoredInfoTypeDictionaryCloudStoragePathChoice(
    this.cloudStoragePath,
  );

  final DataLossPreventionStoredInfoTypeDictionaryCloudStoragePath
  cloudStoragePath;

  @override
  String get blockKey => 'cloud_storage_path';

  @override
  Map<String, Object?> encode() => {
    'cloud_storage_path': cloudStoragePath.encode(),
  };
}

/// Typed helper for the `dictionary.cloud_storage_path` block of
/// `google_data_loss_prevention_stored_info_type` (derived from provider schema).
@immutable
final class DataLossPreventionStoredInfoTypeDictionaryCloudStoragePath {
  const DataLossPreventionStoredInfoTypeDictionaryCloudStoragePath({
    required this.path,
  });

  final TfArg<String> path;

  Map<String, Object?> encode() => {'path': path.toTfJson()};
}

/// Typed helper for the `dictionary.word_list` block of
/// `google_data_loss_prevention_stored_info_type` (derived from provider schema).
@immutable
final class DataLossPreventionStoredInfoTypeDictionaryWordList {
  const DataLossPreventionStoredInfoTypeDictionaryWordList({
    required this.words,
  });

  final TfArg<List<String>> words;

  Map<String, Object?> encode() => {'words': words.toTfJson()};
}

/// Typed helper for the `large_custom_dictionary` block of
/// `google_data_loss_prevention_stored_info_type` (derived from provider schema).
@immutable
final class DataLossPreventionStoredInfoTypeLargeCustomDictionary {
  const DataLossPreventionStoredInfoTypeLargeCustomDictionary({
    required this.source,
    required this.outputPath,
  });

  final DataLossPreventionStoredInfoTypeLargeCustomDictionarySource source;

  final DataLossPreventionStoredInfoTypeLargeCustomDictionaryOutputPath
  outputPath;

  Map<String, Object?> encode() => {
    ...source.encode(),
    'output_path': outputPath.encode(),
  };
}

/// Exactly one of `cloud_storage_file_set`, `big_query_field` on the `large_custom_dictionary` block of `google_data_loss_prevention_stored_info_type`: the provider rejects
/// none and more than one, so each variant sets one of them.
///
/// Pick one with a dot shorthand: `.cloudStorageFileSet(...)`.
sealed class DataLossPreventionStoredInfoTypeLargeCustomDictionarySource {
  const DataLossPreventionStoredInfoTypeLargeCustomDictionarySource();

  /// Sets `cloud_storage_file_set`.
  const factory DataLossPreventionStoredInfoTypeLargeCustomDictionarySource.cloudStorageFileSet(
    DataLossPreventionStoredInfoTypeLargeCustomDictionaryCloudStorageFileSet
    cloudStorageFileSet,
  ) = DataLossPreventionStoredInfoTypeLargeCustomDictionarySourceCloudStorageFileSet;

  /// Sets `big_query_field`.
  const factory DataLossPreventionStoredInfoTypeLargeCustomDictionarySource.bigQueryField(
    DataLossPreventionStoredInfoTypeLargeCustomDictionaryBigQueryField
    bigQueryField,
  ) = DataLossPreventionStoredInfoTypeLargeCustomDictionarySourceBigQueryField;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();
}

/// The [DataLossPreventionStoredInfoTypeLargeCustomDictionarySource.cloudStorageFileSet] choice: sets `cloud_storage_file_set`.
final class DataLossPreventionStoredInfoTypeLargeCustomDictionarySourceCloudStorageFileSet
    extends DataLossPreventionStoredInfoTypeLargeCustomDictionarySource {
  const DataLossPreventionStoredInfoTypeLargeCustomDictionarySourceCloudStorageFileSet(
    this.cloudStorageFileSet,
  );

  final DataLossPreventionStoredInfoTypeLargeCustomDictionaryCloudStorageFileSet
  cloudStorageFileSet;

  @override
  String get blockKey => 'cloud_storage_file_set';

  @override
  Map<String, Object?> encode() => {
    'cloud_storage_file_set': cloudStorageFileSet.encode(),
  };
}

/// The [DataLossPreventionStoredInfoTypeLargeCustomDictionarySource.bigQueryField] choice: sets `big_query_field`.
final class DataLossPreventionStoredInfoTypeLargeCustomDictionarySourceBigQueryField
    extends DataLossPreventionStoredInfoTypeLargeCustomDictionarySource {
  const DataLossPreventionStoredInfoTypeLargeCustomDictionarySourceBigQueryField(
    this.bigQueryField,
  );

  final DataLossPreventionStoredInfoTypeLargeCustomDictionaryBigQueryField
  bigQueryField;

  @override
  String get blockKey => 'big_query_field';

  @override
  Map<String, Object?> encode() => {'big_query_field': bigQueryField.encode()};
}

/// Typed helper for the `large_custom_dictionary.big_query_field` block of
/// `google_data_loss_prevention_stored_info_type` (derived from provider schema).
@immutable
final class DataLossPreventionStoredInfoTypeLargeCustomDictionaryBigQueryField {
  const DataLossPreventionStoredInfoTypeLargeCustomDictionaryBigQueryField({
    required this.field,
    required this.table,
  });

  final DataLossPreventionStoredInfoTypeLargeCustomDictionaryBigQueryFieldField
  field;

  final DataLossPreventionStoredInfoTypeLargeCustomDictionaryBigQueryFieldTable
  table;

  Map<String, Object?> encode() => {
    'field': field.encode(),
    'table': table.encode(),
  };
}

/// Typed helper for the `large_custom_dictionary.big_query_field.field` block of
/// `google_data_loss_prevention_stored_info_type` (derived from provider schema).
@immutable
final class DataLossPreventionStoredInfoTypeLargeCustomDictionaryBigQueryFieldField {
  const DataLossPreventionStoredInfoTypeLargeCustomDictionaryBigQueryFieldField({
    required this.name,
  });

  final TfArg<String> name;

  Map<String, Object?> encode() => {'name': name.toTfJson()};
}

/// Typed helper for the `large_custom_dictionary.big_query_field.table` block of
/// `google_data_loss_prevention_stored_info_type` (derived from provider schema).
@immutable
final class DataLossPreventionStoredInfoTypeLargeCustomDictionaryBigQueryFieldTable {
  const DataLossPreventionStoredInfoTypeLargeCustomDictionaryBigQueryFieldTable({
    required this.datasetId,
    required this.projectId,
    required this.tableId,
  });

  final RefTo<GoogleBigqueryDataset> datasetId;

  final TfArg<String> projectId;

  final TfArg<String> tableId;

  Map<String, Object?> encode() => {
    'dataset_id': datasetId.encodeAs('dataset_id').toTfJson(),
    'project_id': projectId.toTfJson(),
    'table_id': tableId.toTfJson(),
  };
}

/// Typed helper for the `large_custom_dictionary.cloud_storage_file_set` block of
/// `google_data_loss_prevention_stored_info_type` (derived from provider schema).
@immutable
final class DataLossPreventionStoredInfoTypeLargeCustomDictionaryCloudStorageFileSet {
  const DataLossPreventionStoredInfoTypeLargeCustomDictionaryCloudStorageFileSet({
    required this.url,
  });

  final TfArg<String> url;

  Map<String, Object?> encode() => {'url': url.toTfJson()};
}

/// Typed helper for the `large_custom_dictionary.output_path` block of
/// `google_data_loss_prevention_stored_info_type` (derived from provider schema).
@immutable
final class DataLossPreventionStoredInfoTypeLargeCustomDictionaryOutputPath {
  const DataLossPreventionStoredInfoTypeLargeCustomDictionaryOutputPath({
    required this.path,
  });

  final TfArg<String> path;

  Map<String, Object?> encode() => {'path': path.toTfJson()};
}

/// Typed helper for the `regex` block of
/// `google_data_loss_prevention_stored_info_type` (derived from provider schema).
@immutable
final class DataLossPreventionStoredInfoTypeRegex {
  const DataLossPreventionStoredInfoTypeRegex({
    this.groupIndexes,
    required this.pattern,
  });

  final TfArg<List<num>>? groupIndexes;

  final TfArg<String> pattern;

  Map<String, Object?> encode() => {
    'group_indexes': ?groupIndexes?.toTfJson(),
    'pattern': pattern.toTfJson(),
  };
}

/// Factory wrapper for `google_data_loss_prevention_stored_info_type`.
///
/// Allows creation of custom info types.
///
/// DLP stored info type — a project-owned custom detector (regex, word
/// list, or large dictionary).
///
/// Enable `dlp.googleapis.com` via [GoogleProjectService] before apply.
/// Pass exactly one [definition] variant.
final class GoogleDataLossPreventionStoredInfoType extends Resource {
  static const String tfType = 'google_data_loss_prevention_stored_info_type';

  GoogleDataLossPreventionStoredInfoType({
    required super.localName,
    required TfArg<String> parent,
    TfArg<String>? storedInfoTypeId,
    TfArg<String>? displayName,
    TfArg<String>? description,
    required DataLossPreventionStoredInfoTypeDefinition definition,
    TfArg<String>? deletionPolicy,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'parent': parent,
           'stored_info_type_id': ?storedInfoTypeId,
           'display_name': ?displayName,
           'description': ?description,
           'deletion_policy': ?deletionPolicy,
           ...definition.argMap,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleDataLossPreventionStoredInfoTypeSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleDataLossPreventionStoredInfoType>`.
  RefTo<GoogleDataLossPreventionStoredInfoType> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicyRef =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `description` attribute.
  TfRef<String> get descriptionRef =>
      TfRef.attribute<String>(this, 'description');

  /// Reference to `display_name` attribute.
  TfRef<String> get displayNameRef =>
      TfRef.attribute<String>(this, 'display_name');

  /// Reference to `parent` attribute.
  TfRef<String> get parentRef => TfRef.attribute<String>(this, 'parent');

  /// Reference to `stored_info_type_id` attribute.
  TfRef<String> get storedInfoTypeIdRef =>
      TfRef.attribute<String>(this, 'stored_info_type_id');
}
