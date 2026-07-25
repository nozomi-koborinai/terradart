// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_chronicle_rule`.
const Set<String> _googleChronicleRuleSensitive = <String>{};

/// Factory wrapper for `google_chronicle_rule`.
///
/// The Rule resource represents a user-created rule.
///
/// Chronicle (Google SecOps) **detection rule** — YARA-L (or equivalent)
/// rule text compiled against a Chronicle instance.
///
/// **Cost / apply:** gcp-cost: Chronicle `144D-4907-2A21` Bytes of data
/// ingested in US for the Enterprise Plus package SKU `0310-AEE4-5DC1`
/// **$6.58/GBy** (plus dollar-based SecOps commitments). billing-behavior:
/// rules sit on an entitlement-gated Chronicle instance; pairing with
/// [GoogleChronicleRuleDeployment] / [GoogleChronicleRetrohunt] drives
/// detection and historical reprocessing against billed ingestion. Not
/// applyable on `terradart-validate`. **Never** wire into apply-smoke.
///
/// Enable `chronicle.googleapis.com` before apply. [instance] is the
/// Chronicle instance ID in [location] (e.g. `us`). Set [text] to the
/// rule body; [ruleId] is optional (server may assign).
final class GoogleChronicleRule extends Resource {
  static const String tfType = 'google_chronicle_rule';

  GoogleChronicleRule({
    required super.localName,
    TfArg<String>? text,
    required TfArg<String> location,
    required TfArg<String> instance,
    TfArg<String>? ruleId,
    TfArg<String>? scope,
    TfArg<String>? etag,
    TfArg<String>? deletionPolicy,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (text != null) 'text': text,
           'location': location,
           'instance': instance,
           if (ruleId != null) 'rule_id': ruleId,
           if (scope != null) 'scope': scope,
           if (etag != null) 'etag': etag,
           if (deletionPolicy != null) 'deletion_policy': deletionPolicy,
           if (project != null) 'project': project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleChronicleRuleSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `allowed_run_frequencies` attribute.
  TfRef<List<String>> get allowedRunFrequencies =>
      TfRef.attribute<List<String>>(this, 'allowed_run_frequencies');

  /// Reference to `author` attribute.
  TfRef<String> get author => TfRef.attribute<String>(this, 'author');

  /// Reference to `compilation_diagnostics` attribute.
  TfRef<List<Map<String, Object?>>> get compilationDiagnostics =>
      TfRef.attribute<List<Map<String, Object?>>>(
        this,
        'compilation_diagnostics',
      );

  /// Reference to `compilation_state` attribute.
  TfRef<String> get compilationState =>
      TfRef.attribute<String>(this, 'compilation_state');

  /// Reference to `create_time` attribute.
  TfRef<String> get createTime => TfRef.attribute<String>(this, 'create_time');

  /// Reference to `data_tables` attribute.
  TfRef<List<String>> get dataTables =>
      TfRef.attribute<List<String>>(this, 'data_tables');

  /// Reference to `display_name` attribute.
  TfRef<String> get displayName =>
      TfRef.attribute<String>(this, 'display_name');

  /// Reference to `metadata` attribute.
  TfRef<Map<String, String>> get metadata =>
      TfRef.attribute<Map<String, String>>(this, 'metadata');

  /// Reference to `near_real_time_live_rule_eligible` attribute.
  TfRef<bool> get nearRealTimeLiveRuleEligible =>
      TfRef.attribute<bool>(this, 'near_real_time_live_rule_eligible');

  /// Reference to `reference_lists` attribute.
  TfRef<List<String>> get referenceLists =>
      TfRef.attribute<List<String>>(this, 'reference_lists');

  /// Reference to `revision_create_time` attribute.
  TfRef<String> get revisionCreateTime =>
      TfRef.attribute<String>(this, 'revision_create_time');

  /// Reference to `revision_id` attribute.
  TfRef<String> get revisionId => TfRef.attribute<String>(this, 'revision_id');

  /// Reference to `severity` attribute.
  TfRef<List<Map<String, Object?>>> get severity =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'severity');

  /// Reference to `type` attribute.
  TfRef<String> get type => TfRef.attribute<String>(this, 'type');

  /// Reference to `id` attribute.
  TfRef<String> get idRef => TfRef.attribute<String>(this, 'id');

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');
}
