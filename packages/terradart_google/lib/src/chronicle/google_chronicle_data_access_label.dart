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
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'data_access_label_id': dataAccessLabelId,
           'udm_query': udmQuery,
           'location': location,
           'instance': instance,
           'description': ?description,
           'deletion_policy': ?deletionPolicy,
           'project': ?project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleChronicleDataAccessLabelSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleChronicleDataAccessLabel>`.
  RefTo<GoogleChronicleDataAccessLabel> get ref => RefTo.of(this);

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

  /// Reference to `data_access_label_id` attribute.
  TfRef<String> get dataAccessLabelIdRef =>
      TfRef.attribute<String>(this, 'data_access_label_id');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicyRef =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `description` attribute.
  TfRef<String> get descriptionRef =>
      TfRef.attribute<String>(this, 'description');

  /// Reference to `instance` attribute.
  TfRef<String> get instanceRef => TfRef.attribute<String>(this, 'instance');

  /// Reference to `location` attribute.
  TfRef<String> get locationRef => TfRef.attribute<String>(this, 'location');

  /// Reference to `project` attribute.
  TfRef<String> get projectRef => TfRef.attribute<String>(this, 'project');

  /// Reference to `udm_query` attribute.
  TfRef<String> get udmQueryRef => TfRef.attribute<String>(this, 'udm_query');

  /// Reference to `id` attribute.
  TfRef<String> get idRef => TfRef.attribute<String>(this, 'id');

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');
}
