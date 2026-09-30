// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_dataproc_metastore_federation`.
const Set<String> _googleDataprocMetastoreFederationSensitive = <String>{};

/// Terraform `deletion_policy` for Dataproc Metastore federations.
enum DataprocMetastoreFederationDeletionPolicy implements TerraformEnum {
  delete('DELETE'),
  prevent('PREVENT'),
  abandon('ABANDON');

  const DataprocMetastoreFederationDeletionPolicy(this.terraformValue);
  @override
  final String terraformValue;
}

/// Backend metastore type for federation `backend_metastores`.
enum DataprocMetastoreFederationBackendType implements TerraformEnum {
  unspecified('METASTORE_TYPE_UNSPECIFIED'),
  dataprocMetastore('DATAPROC_METASTORE'),
  bigquery('BIGQUERY'),
  dataplex('DATAPLEX');

  const DataprocMetastoreFederationBackendType(this.terraformValue);
  @override
  final String terraformValue;
}

/// One `backend_metastores` entry on a federation.
@immutable
class DataprocMetastoreFederationBackend {
  const DataprocMetastoreFederationBackend({
    required this.name,
    required this.metastoreType,
    required this.rank,
  });

  final TfArg<String> name;
  final TfArg<DataprocMetastoreFederationBackendType> metastoreType;
  final TfArg<int> rank;

  Map<String, Object?> toArgMap() => {
    'name': name.toTfJson(),
    'metastore_type': metastoreType.toTfJson(),
    'rank': rank.toTfJson(),
  };
}

/// Factory wrapper for `google_dataproc_metastore_federation`.
///
/// A managed metastore federation.
///
/// Dataproc Metastore federation — query multiple backend metastores as one.
///
/// Provide at least one [backendMetastores] entry. Backend [name] is the
/// relative resource name of a [GoogleDataprocMetastoreService]
/// (`projects/…/services/…`).
final class GoogleDataprocMetastoreFederation extends Resource {
  static const String tfType = 'google_dataproc_metastore_federation';

  GoogleDataprocMetastoreFederation({
    required super.localName,
    required TfArg<String> federationId,
    required TfArg<String> version,
    TfArg<String>? location,
    required List<DataprocMetastoreFederationBackend> backendMetastores,
    TfArg<Map<String, String>>? labels,
    TfArg<bool>? deletionProtection,
    TfArg<DataprocMetastoreFederationDeletionPolicy>? deletionPolicy,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'federation_id': federationId,
           'version': version,
           'location': ?location,
           'backend_metastores': TfArg.literal(
             backendMetastores.map((b) => b.toArgMap()).toList(),
           ),
           'labels': ?labels,
           'deletion_protection': ?deletionProtection,
           'deletion_policy': ?deletionPolicy,
           'project': ?project,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleDataprocMetastoreFederationSensitive;

  @override
  bool get supportsDeletionProtection => true;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleDataprocMetastoreFederation>`.
  RefTo<GoogleDataprocMetastoreFederation> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `create_time` attribute.
  TfRef<String> get createTime => TfRef.attribute<String>(this, 'create_time');

  /// Reference to `effective_labels` attribute.
  TfRef<Map<String, String>> get effectiveLabels =>
      TfRef.attribute<Map<String, String>>(this, 'effective_labels');

  /// Reference to `endpoint_uri` attribute.
  TfRef<String> get endpointUri =>
      TfRef.attribute<String>(this, 'endpoint_uri');

  /// Reference to `state` attribute.
  TfRef<String> get state => TfRef.attribute<String>(this, 'state');

  /// Reference to `state_message` attribute.
  TfRef<String> get stateMessage =>
      TfRef.attribute<String>(this, 'state_message');

  /// Reference to `terraform_labels` attribute.
  TfRef<Map<String, String>> get terraformLabels =>
      TfRef.attribute<Map<String, String>>(this, 'terraform_labels');

  /// Reference to `uid` attribute.
  TfRef<String> get uid => TfRef.attribute<String>(this, 'uid');

  /// Reference to `update_time` attribute.
  TfRef<String> get updateTime => TfRef.attribute<String>(this, 'update_time');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicyRef =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `deletion_protection` attribute.
  TfRef<bool> get deletionProtectionRef =>
      TfRef.attribute<bool>(this, 'deletion_protection');

  /// Reference to `federation_id` attribute.
  TfRef<String> get federationIdRef =>
      TfRef.attribute<String>(this, 'federation_id');

  /// Reference to `labels` attribute.
  TfRef<Map<String, String>> get labelsRef =>
      TfRef.attribute<Map<String, String>>(this, 'labels');

  /// Reference to `location` attribute.
  TfRef<String> get locationRef => TfRef.attribute<String>(this, 'location');

  /// Reference to `project` attribute.
  TfRef<String> get projectRef => TfRef.attribute<String>(this, 'project');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tagsRef =>
      TfRef.attribute<Map<String, String>>(this, 'tags');

  /// Reference to `version` attribute.
  TfRef<String> get versionRef => TfRef.attribute<String>(this, 'version');
}
