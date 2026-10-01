// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_dataproc_metastore_federation`.
const Set<String> _googleDataprocMetastoreFederationSensitive = <String>{};

/// Terraform `deletion_policy` for Dataproc Metastore federations.
extension type const DataprocMetastoreFederationDeletionPolicy._(
  TfArg<String> _
) implements TfArg<String> {
  DataprocMetastoreFederationDeletionPolicy.variable(String name)
    : this._(TfArg.variable(name));
  DataprocMetastoreFederationDeletionPolicy.expression(String template)
    : this._(TfArg.expression(template));
  const DataprocMetastoreFederationDeletionPolicy.arg(TfArg<String> arg)
    : this._(arg);

  static const delete = DataprocMetastoreFederationDeletionPolicy._(
    TfArgLiteral('DELETE'),
  );
  static const prevent = DataprocMetastoreFederationDeletionPolicy._(
    TfArgLiteral('PREVENT'),
  );
  static const abandon = DataprocMetastoreFederationDeletionPolicy._(
    TfArgLiteral('ABANDON'),
  );

  static const List<DataprocMetastoreFederationDeletionPolicy> values = [
    delete,
    prevent,
    abandon,
  ];
}

/// Backend metastore type for federation `backend_metastores`.
extension type const DataprocMetastoreFederationBackendType._(TfArg<String> _)
    implements TfArg<String> {
  DataprocMetastoreFederationBackendType.variable(String name)
    : this._(TfArg.variable(name));
  DataprocMetastoreFederationBackendType.expression(String template)
    : this._(TfArg.expression(template));
  const DataprocMetastoreFederationBackendType.arg(TfArg<String> arg)
    : this._(arg);

  static const unspecified = DataprocMetastoreFederationBackendType._(
    TfArgLiteral('METASTORE_TYPE_UNSPECIFIED'),
  );
  static const dataprocMetastore = DataprocMetastoreFederationBackendType._(
    TfArgLiteral('DATAPROC_METASTORE'),
  );
  static const bigquery = DataprocMetastoreFederationBackendType._(
    TfArgLiteral('BIGQUERY'),
  );
  static const dataplex = DataprocMetastoreFederationBackendType._(
    TfArgLiteral('DATAPLEX'),
  );

  static const List<DataprocMetastoreFederationBackendType> values = [
    unspecified,
    dataprocMetastore,
    bigquery,
    dataplex,
  ];
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
  final DataprocMetastoreFederationBackendType metastoreType;
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

  GoogleDataprocMetastoreFederation(
    super.localName, {
    required TfArg<String> federationId,
    required TfArg<String> version,
    TfArg<String>? location,
    required List<DataprocMetastoreFederationBackend> backendMetastores,
    TfArg<Map<String, String>>? labels,
    TfArg<bool>? deletionProtection,
    DataprocMetastoreFederationDeletionPolicy? deletionPolicy,
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
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

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
  TfRef<String> get deletionPolicy =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `deletion_protection` attribute.
  TfRef<bool> get deletionProtection =>
      TfRef.attribute<bool>(this, 'deletion_protection');

  /// Reference to `federation_id` attribute.
  TfRef<String> get federationId =>
      TfRef.attribute<String>(this, 'federation_id');

  /// Reference to `labels` attribute.
  TfRef<Map<String, String>> get labels =>
      TfRef.attribute<Map<String, String>>(this, 'labels');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');

  /// Reference to `version` attribute.
  TfRef<String> get version => TfRef.attribute<String>(this, 'version');
}
