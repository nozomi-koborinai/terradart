// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_data_loss_prevention_stored_info_type`.
const Set<String> _googleDataLossPreventionStoredInfoTypeSensitive = <String>{};

/// Exactly one definition for a [GoogleDataLossPreventionStoredInfoType]
/// (`regex` / `dictionary` / `large_custom_dictionary`).
sealed class DataLossPreventionStoredInfoTypeDefinition {
  const DataLossPreventionStoredInfoTypeDefinition();

  /// Terraform nested-block key.
  String get blockKey;

  /// Single-element list body for the nested block.
  List<Map<String, Object?>> encode();
}

/// Regex-based custom info type.
@immutable
final class DataLossPreventionStoredInfoTypeRegex
    extends DataLossPreventionStoredInfoTypeDefinition {
  const DataLossPreventionStoredInfoTypeRegex({
    required this.pattern,
    this.groupIndexes,
  });

  final TfArg<String> pattern;
  final TfArg<List<num>>? groupIndexes;

  @override
  String get blockKey => 'regex';

  @override
  List<Map<String, Object?>> encode() => [
    {
      'pattern': pattern.toTfJson(),
      if (groupIndexes != null) 'group_indexes': groupIndexes!.toTfJson(),
    },
  ];
}

/// Word-list dictionary custom info type.
@immutable
final class DataLossPreventionStoredInfoTypeDictionary
    extends DataLossPreventionStoredInfoTypeDefinition {
  const DataLossPreventionStoredInfoTypeDictionary({required this.words});

  final TfArg<List<String>> words;

  @override
  String get blockKey => 'dictionary';

  @override
  List<Map<String, Object?>> encode() => [
    {
      'word_list': [
        {'words': words.toTfJson()},
      ],
    },
  ];
}

/// Large custom dictionary (GCS / BigQuery sources). Pass the nested block
/// body as a map matching the Terraform schema.
@immutable
final class DataLossPreventionStoredInfoTypeLargeCustomDictionary
    extends DataLossPreventionStoredInfoTypeDefinition {
  const DataLossPreventionStoredInfoTypeLargeCustomDictionary({
    required this.block,
  });

  final Map<String, Object?> block;

  @override
  String get blockKey => 'large_custom_dictionary';

  @override
  List<Map<String, Object?>> encode() => [block];
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
  }) : super(
         terraformType: tfType,
         argMap: {
           'parent': parent,
           if (storedInfoTypeId != null)
             'stored_info_type_id': storedInfoTypeId,
           if (displayName != null) 'display_name': displayName,
           if (description != null) 'description': description,
           if (deletionPolicy != null) 'deletion_policy': deletionPolicy,
           definition.blockKey: TfArg.literal(definition.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleDataLossPreventionStoredInfoTypeSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}
