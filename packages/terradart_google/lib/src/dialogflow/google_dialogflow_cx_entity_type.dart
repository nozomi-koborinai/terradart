// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_dialogflow_cx_entity_type`.
const Set<String> _googleDialogflowCxEntityTypeSensitive = <String>{};

/// Dialogflow Cx Entity Type Auto Expansion enum for `auto_expansion_mode`.
extension type const DialogflowCxEntityTypeAutoExpansionMode._(TfArg<String> _)
    implements TfArg<String> {
  DialogflowCxEntityTypeAutoExpansionMode.variable(String name)
    : this._(TfArg.variable(name));
  DialogflowCxEntityTypeAutoExpansionMode.expression(String template)
    : this._(TfArg.expression(template));
  const DialogflowCxEntityTypeAutoExpansionMode.arg(TfArg<String> arg)
    : this._(arg);

  static const autoExpansionModeDefault =
      DialogflowCxEntityTypeAutoExpansionMode._(
        TfArgLiteral('AUTO_EXPANSION_MODE_DEFAULT'),
      );
  static const autoExpansionModeUnspecified =
      DialogflowCxEntityTypeAutoExpansionMode._(
        TfArgLiteral('AUTO_EXPANSION_MODE_UNSPECIFIED'),
      );

  static const List<DialogflowCxEntityTypeAutoExpansionMode> values = [
    autoExpansionModeDefault,
    autoExpansionModeUnspecified,
  ];
}

/// Dialogflow Cx Entity Type enum for `kind`.
extension type const DialogflowCxEntityTypeKind._(TfArg<String> _)
    implements TfArg<String> {
  DialogflowCxEntityTypeKind.variable(String name)
    : this._(TfArg.variable(name));
  DialogflowCxEntityTypeKind.expression(String template)
    : this._(TfArg.expression(template));
  const DialogflowCxEntityTypeKind.arg(TfArg<String> arg) : this._(arg);

  static const kindMap = DialogflowCxEntityTypeKind._(TfArgLiteral('KIND_MAP'));
  static const kindList = DialogflowCxEntityTypeKind._(
    TfArgLiteral('KIND_LIST'),
  );
  static const kindRegexp = DialogflowCxEntityTypeKind._(
    TfArgLiteral('KIND_REGEXP'),
  );

  static const List<DialogflowCxEntityTypeKind> values = [
    kindMap,
    kindList,
    kindRegexp,
  ];
}

/// Typed helper for the `entities` block of
/// `google_dialogflow_cx_entity_type` (derived from provider schema).
@immutable
final class DialogflowCxEntityTypeEntities {
  const DialogflowCxEntityTypeEntities({this.synonyms, this.value});

  final TfArg<List<String>>? synonyms;

  final TfArg<String>? value;

  @internal
  Map<String, Object?> encode() => {
    'synonyms': ?synonyms?.toTfJson(),
    'value': ?value?.toTfJson(),
  };
}

/// Typed helper for the `excluded_phrases` block of
/// `google_dialogflow_cx_entity_type` (derived from provider schema).
@immutable
final class DialogflowCxEntityTypeExcludedPhrases {
  const DialogflowCxEntityTypeExcludedPhrases({this.value});

  final TfArg<String>? value;

  @internal
  Map<String, Object?> encode() => {'value': ?value?.toTfJson()};
}

/// Factory wrapper for `google_dialogflow_cx_entity_type`.
///
/// Entities are extracted from user input and represent parameters that are
/// meaningful to your application. For example, a date range, a proper name
/// such as a geographic location or landmark, and so on. Entities represent
/// actionable data for your application.
///
/// Dialogflow CX **entity type** — custom entities / synonyms for a CX
/// agent.
///
/// **Cost / apply:** gcp-cost: Cloud Dialogflow `FBC0-AA4A-C89A` Text
/// session SKU `A1CC-751A-CDCC` **$0.20**/session (Audio `9496-0679-69BE`
/// **$0.45**/session). billing-behavior: entity types sit on the
/// never_apply [GoogleDialogflowCxAgent] session path. **Never** wire
/// into apply-smoke.
final class GoogleDialogflowCxEntityType extends Resource {
  static const String tfType = 'google_dialogflow_cx_entity_type';

  GoogleDialogflowCxEntityType(
    super.localName, {
    required TfArg<String> displayName,
    required DialogflowCxEntityTypeKind kind,
    TfArg<String>? parent,
    TfArg<String>? languageCode,
    DialogflowCxEntityTypeAutoExpansionMode? autoExpansionMode,
    TfArg<bool>? enableFuzzyExtraction,
    TfArg<bool>? redact,
    required List<DialogflowCxEntityTypeEntities> entities,
    List<DialogflowCxEntityTypeExcludedPhrases>? excludedPhrases,
    TfArg<String>? deletionPolicy,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'display_name': displayName,
           'kind': kind,
           'parent': ?parent,
           'language_code': ?languageCode,
           'auto_expansion_mode': ?autoExpansionMode,
           'enable_fuzzy_extraction': ?enableFuzzyExtraction,
           'redact': ?redact,
           'entities': TfArg.literal([for (final e in entities) e.encode()]),
           if (excludedPhrases != null)
             'excluded_phrases': TfArg.literal([
               for (final e in excludedPhrases) e.encode(),
             ]),
           'deletion_policy': ?deletionPolicy,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleDialogflowCxEntityTypeSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleDialogflowCxEntityType>`.
  RefTo<GoogleDialogflowCxEntityType> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `kind` attribute.
  TfRef<String> get kindAttr => TfRef.attribute<String>(this, 'kind');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `auto_expansion_mode` attribute.
  TfRef<String> get autoExpansionMode =>
      TfRef.attribute<String>(this, 'auto_expansion_mode');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicy =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `display_name` attribute.
  TfRef<String> get displayName =>
      TfRef.attribute<String>(this, 'display_name');

  /// Reference to `enable_fuzzy_extraction` attribute.
  TfRef<bool> get enableFuzzyExtraction =>
      TfRef.attribute<bool>(this, 'enable_fuzzy_extraction');

  /// Reference to `language_code` attribute.
  TfRef<String> get languageCode =>
      TfRef.attribute<String>(this, 'language_code');

  /// Reference to `parent` attribute.
  TfRef<String> get parent => TfRef.attribute<String>(this, 'parent');

  /// Reference to `redact` attribute.
  TfRef<bool> get redact => TfRef.attribute<bool>(this, 'redact');
}
