// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_chronicle_reference_list`.
const Set<String> _googleChronicleReferenceListSensitive = <String>{};

/// Typed helper for the `entries` block of
/// `google_chronicle_reference_list` (derived from provider schema).
@immutable
final class ChronicleReferenceListEntries {
  const ChronicleReferenceListEntries({required this.value});

  final TfArg<String> value;

  @internal
  Map<String, Object?> encode() => {'value': value.toTfJson()};
}

/// Typed helper for the `scope_info` block of
/// `google_chronicle_reference_list` (derived from provider schema).
@immutable
final class ChronicleReferenceListScopeInfo {
  const ChronicleReferenceListScopeInfo({this.referenceListScope});

  final ChronicleReferenceListScope? referenceListScope;

  @internal
  Map<String, Object?> encode() => {
    'reference_list_scope': ?referenceListScope?.encode(),
  };
}

/// Typed helper for the `scope_info.reference_list_scope` block of
/// `google_chronicle_reference_list` (derived from provider schema).
@immutable
final class ChronicleReferenceListScope {
  const ChronicleReferenceListScope({this.scopeNames});

  final TfArg<List<String>>? scopeNames;

  @internal
  Map<String, Object?> encode() => {'scope_names': ?scopeNames?.toTfJson()};
}

/// Factory wrapper for `google_chronicle_reference_list`.
///
/// Reference lists are user-defined lists of values which users can use in
/// multiple Rules.
///
/// Chronicle (Google SecOps) **reference list** — named list of values used
/// by detection rules (allow/deny / enrichment).
///
/// **Cost / apply:** gcp-cost: Chronicle `144D-4907-2A21` Bytes of data
/// ingested in US for the Enterprise Plus package SKU `0310-AEE4-5DC1`
/// **$6.58/GBy** (plus dollar-based SecOps commitments). billing-behavior:
/// reference lists sit on an entitlement-gated Chronicle instance and feed
/// detection against billed ingestion. Not applyable on
/// `terradart-validate`. **Never** wire into apply-smoke.
///
/// Enable `chronicle.googleapis.com` before apply. [entries] is required
/// (min 1). [syntaxType] selects the list syntax.
final class GoogleChronicleReferenceList extends Resource {
  static const String tfType = 'google_chronicle_reference_list';

  GoogleChronicleReferenceList(
    super.localName, {
    required TfArg<String> referenceListId,
    required TfArg<String> description,
    required TfArg<String> syntaxType,
    required List<ChronicleReferenceListEntries> entries,
    required TfArg<String> location,
    required TfArg<String> instance,
    ChronicleReferenceListScopeInfo? scopeInfo,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'reference_list_id': referenceListId,
           'description': description,
           'syntax_type': syntaxType,
           'entries': TfArg.literal([for (final e in entries) e.encode()]),
           'location': location,
           'instance': instance,
           if (scopeInfo != null)
             'scope_info': TfArg.literal(scopeInfo.encode()),
           'project': ?project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleChronicleReferenceListSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleChronicleReferenceList>`.
  RefTo<GoogleChronicleReferenceList> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `display_name` attribute.
  TfRef<String> get displayName =>
      TfRef.attribute<String>(this, 'display_name');

  /// Reference to `revision_create_time` attribute.
  TfRef<String> get revisionCreateTime =>
      TfRef.attribute<String>(this, 'revision_create_time');

  /// Reference to `rule_associations_count` attribute.
  TfRef<num> get ruleAssociationsCount =>
      TfRef.attribute<num>(this, 'rule_associations_count');

  /// Reference to `rules` attribute.
  TfRef<List<String>> get rules => TfRef.attribute<List<String>>(this, 'rules');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `instance` attribute.
  TfRef<String> get instance => TfRef.attribute<String>(this, 'instance');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');

  /// Reference to `reference_list_id` attribute.
  TfRef<String> get referenceListId =>
      TfRef.attribute<String>(this, 'reference_list_id');

  /// Reference to `syntax_type` attribute.
  TfRef<String> get syntaxType => TfRef.attribute<String>(this, 'syntax_type');
}
