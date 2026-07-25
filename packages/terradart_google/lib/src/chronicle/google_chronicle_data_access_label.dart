// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_chronicle_data_access_label`.
const Set<String> _googleChronicleDataAccessLabelSensitive = <String>{};

/// Factory wrapper for `google_chronicle_data_access_label`.
///
/// A DataAccessLabel is a label on events to define user access to data.
///
/// Chronicle (Google SecOps) **data access label** — UDM-query label used to
/// scope which events a principal may see.
///
/// **Cost / apply:** gcp-cost: Chronicle `144D-4907-2A21` Bytes of data
/// ingested in US for the Enterprise Plus package SKU `0310-AEE4-5DC1`
/// **$6.58/GBy** (plus dollar-based SecOps commitments). billing-behavior:
/// labels sit on an entitlement-gated Chronicle instance (RBAC over billed
/// ingestion). Not applyable on `terradart-validate`. **Never** wire into
/// apply-smoke.
///
/// Enable `chronicle.googleapis.com` before apply. [udmQuery] is required.
final class GoogleChronicleDataAccessLabel extends Resource {
  static const String tfType = 'google_chronicle_data_access_label';

  GoogleChronicleDataAccessLabel({
    required super.localName,
    required TfArg<String> dataAccessLabelId,
    required TfArg<String> udmQuery,
    required TfArg<String> location,
    required TfArg<String> instance,
    TfArg<String>? description,
    TfArg<String>? deletionPolicy,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'data_access_label_id': dataAccessLabelId,
           'udm_query': udmQuery,
           'location': location,
           'instance': instance,
           if (description != null) 'description': description,
           if (deletionPolicy != null) 'deletion_policy': deletionPolicy,
           if (project != null) 'project': project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleChronicleDataAccessLabelSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `author` attribute.
  TfRef<String> get author => TfRef.attribute<String>(this, 'author');

  /// Reference to `create_time` attribute.
  TfRef<String> get createTime => TfRef.attribute<String>(this, 'create_time');

  /// Reference to `display_name` attribute.
  TfRef<String> get displayName =>
      TfRef.attribute<String>(this, 'display_name');

  /// Reference to `last_editor` attribute.
  TfRef<String> get lastEditor => TfRef.attribute<String>(this, 'last_editor');

  /// Reference to `update_time` attribute.
  TfRef<String> get updateTime => TfRef.attribute<String>(this, 'update_time');

  /// Reference to `id` attribute.
  TfRef<String> get idRef => TfRef.attribute<String>(this, 'id');

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');
}
