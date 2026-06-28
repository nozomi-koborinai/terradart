// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_healthcare_hl7_v2_store`.
const Set<String> _googleHealthcareHl7V2StoreSensitive = <String>{};

/// HL7v2 message-schema version used by a [HealthcareHl7V2StoreParserConfig].
enum HealthcareHl7V2StoreParserConfigVersion implements TerraformEnum {
  /// Legacy parser (V1).
  v1('V1'),

  /// V2 parser.
  v2('V2'),

  /// V3 parser (recommended).
  v3('V3');

  const HealthcareHl7V2StoreParserConfigVersion(this.terraformValue);
  @override
  final String terraformValue;
}

/// `parser_config` block on a [GoogleHealthcareHl7V2Store] — controls how
/// inbound HL7v2 messages are parsed.
@immutable
class HealthcareHl7V2StoreParserConfig {
  const HealthcareHl7V2StoreParserConfig({
    this.version,
    this.allowNullHeader,
    this.segmentTerminator,
    this.schema,
  });

  /// Parser version. Prefer [HealthcareHl7V2StoreParserConfigVersion.v3].
  final TfArg<HealthcareHl7V2StoreParserConfigVersion>? version;

  /// Whether messages with no header segment are accepted.
  final TfArg<bool>? allowNullHeader;

  /// Byte(s) to use as the segment terminator (base64-encoded).
  final TfArg<String>? segmentTerminator;

  /// JSON-encoded schema describing how to parse messages.
  final TfArg<String>? schema;

  Map<String, Object?> encode() => {
    if (version != null) 'version': version!.toTfJson(),
    if (allowNullHeader != null)
      'allow_null_header': allowNullHeader!.toTfJson(),
    if (segmentTerminator != null)
      'segment_terminator': segmentTerminator!.toTfJson(),
    if (schema != null) 'schema': schema!.toTfJson(),
  };
}

/// Factory wrapper for `google_healthcare_hl7_v2_store`.
///
/// A Hl7V2Store is a datastore inside a Healthcare dataset that conforms to the
/// FHIR (https://www.hl7.org/hl7V2/STU3/) standard for Healthcare information
/// exchange
final class GoogleHealthcareHl7V2Store extends Resource {
  static const String tfType = 'google_healthcare_hl7_v2_store';

  GoogleHealthcareHl7V2Store({
    required super.localName,
    required TfArg<String> name,
    required TfArg<String> dataset,
    TfArg<bool>? rejectDuplicateMessage,
    HealthcareHl7V2StoreParserConfig? parserConfig,
    TfArg<Map<String, String>>? labels,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           'dataset': dataset,
           if (rejectDuplicateMessage != null)
             'reject_duplicate_message': rejectDuplicateMessage,
           if (parserConfig != null)
             'parser_config': TfArg.literal(parserConfig.encode()),
           if (labels != null) 'labels': labels,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleHealthcareHl7V2StoreSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `effective_labels` attribute.
  TfRef<Map<String, String>> get effectiveLabels =>
      TfRef.attribute<Map<String, String>>(this, 'effective_labels');

  /// Reference to `self_link` attribute.
  TfRef<String> get selfLink => TfRef.attribute<String>(this, 'self_link');

  /// Reference to `terraform_labels` attribute.
  TfRef<Map<String, String>> get terraformLabels =>
      TfRef.attribute<Map<String, String>>(this, 'terraform_labels');
}
