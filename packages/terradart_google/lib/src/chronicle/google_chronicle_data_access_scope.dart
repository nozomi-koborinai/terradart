// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_chronicle_data_access_scope`.
const Set<String> _googleChronicleDataAccessScopeSensitive = <String>{};

/// Typed helper for the `allowed_data_access_labels` block of
/// `google_chronicle_data_access_scope` (derived from provider schema).
@immutable
final class ChronicleDataAccessScopeAllowedDataAccessLabels {
  const ChronicleDataAccessScopeAllowedDataAccessLabels({
    this.assetNamespace,
    this.dataAccessLabel,
    this.logType,
    this.ingestionLabel,
  });

  final TfArg<String>? assetNamespace;

  final TfArg<String>? dataAccessLabel;

  final TfArg<String>? logType;

  final ChronicleDataAccessScopeIngestionLabel? ingestionLabel;

  Map<String, Object?> encode() => {
    'asset_namespace': ?assetNamespace?.toTfJson(),
    'data_access_label': ?dataAccessLabel?.toTfJson(),
    'log_type': ?logType?.toTfJson(),
    'ingestion_label': ?ingestionLabel?.encode(),
  };
}

/// Typed helper for the `allowed_data_access_labels.ingestion_label` block of
/// `google_chronicle_data_access_scope` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class ChronicleDataAccessScopeIngestionLabel {
  const ChronicleDataAccessScopeIngestionLabel({
    required this.ingestionLabelKey,
    this.ingestionLabelValue,
  });

  final TfArg<String> ingestionLabelKey;

  final TfArg<String>? ingestionLabelValue;

  Map<String, Object?> encode() => {
    'ingestion_label_key': ingestionLabelKey.toTfJson(),
    'ingestion_label_value': ?ingestionLabelValue?.toTfJson(),
  };
}

/// Typed helper for the `denied_data_access_labels` block of
/// `google_chronicle_data_access_scope` (derived from provider schema).
@immutable
final class ChronicleDataAccessScopeDeniedDataAccessLabels {
  const ChronicleDataAccessScopeDeniedDataAccessLabels({
    this.assetNamespace,
    this.dataAccessLabel,
    this.logType,
    this.ingestionLabel,
  });

  final TfArg<String>? assetNamespace;

  final TfArg<String>? dataAccessLabel;

  final TfArg<String>? logType;

  final ChronicleDataAccessScopeIngestionLabel? ingestionLabel;

  Map<String, Object?> encode() => {
    'asset_namespace': ?assetNamespace?.toTfJson(),
    'data_access_label': ?dataAccessLabel?.toTfJson(),
    'log_type': ?logType?.toTfJson(),
    'ingestion_label': ?ingestionLabel?.encode(),
  };
}

/// Factory wrapper for `google_chronicle_data_access_scope`.
///
/// A DataAccessScope is a boolean expression of data access labels used to
/// restrict access to data for users.
///
/// Chronicle (Google SecOps) **data access scope** — allow/deny label sets
/// that bound which labeled data a principal may query.
///
/// **Cost / apply:** gcp-cost: Chronicle `144D-4907-2A21` Bytes of data
/// ingested in US for the Enterprise Plus package SKU `0310-AEE4-5DC1`
/// **$6.58/GBy** (plus dollar-based SecOps commitments). billing-behavior:
/// scopes sit on an entitlement-gated Chronicle instance (RBAC over billed
/// ingestion). Not applyable on `terradart-validate`. **Never** wire into
/// apply-smoke.
///
/// Enable `chronicle.googleapis.com` before apply. Pair with
/// [GoogleChronicleDataAccessLabel] entries in allow/deny lists.
final class GoogleChronicleDataAccessScope extends Resource {
  static const String tfType = 'google_chronicle_data_access_scope';

  GoogleChronicleDataAccessScope({
    required super.localName,
    required TfArg<String> dataAccessScopeId,
    required TfArg<String> location,
    required TfArg<String> instance,
    TfArg<String>? description,
    TfArg<bool>? allowAll,
    List<ChronicleDataAccessScopeAllowedDataAccessLabels>?
    allowedDataAccessLabels,
    List<ChronicleDataAccessScopeDeniedDataAccessLabels>?
    deniedDataAccessLabels,
    TfArg<String>? deletionPolicy,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'data_access_scope_id': dataAccessScopeId,
           'location': location,
           'instance': instance,
           'description': ?description,
           'allow_all': ?allowAll,
           if (allowedDataAccessLabels != null)
             'allowed_data_access_labels': TfArg.literal([
               for (final e in allowedDataAccessLabels) e.encode(),
             ]),
           if (deniedDataAccessLabels != null)
             'denied_data_access_labels': TfArg.literal([
               for (final e in deniedDataAccessLabels) e.encode(),
             ]),
           'deletion_policy': ?deletionPolicy,
           'project': ?project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleChronicleDataAccessScopeSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleChronicleDataAccessScope>`.
  RefTo<GoogleChronicleDataAccessScope> get ref => RefTo.of(this);

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

  /// Reference to `allow_all` attribute.
  TfRef<bool> get allowAllRef => TfRef.attribute<bool>(this, 'allow_all');

  /// Reference to `data_access_scope_id` attribute.
  TfRef<String> get dataAccessScopeIdRef =>
      TfRef.attribute<String>(this, 'data_access_scope_id');

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

  /// Reference to `id` attribute.
  TfRef<String> get idRef => TfRef.attribute<String>(this, 'id');

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');
}
