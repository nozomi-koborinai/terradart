// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_apigee_datastore`.
const Set<String> _googleApigeeDatastoreSensitive = <String>{};

/// Target backend for `google_apigee_datastore`.
enum ApigeeDatastoreTargetType implements TerraformEnum {
  gcs('gcs'),
  bigquery('bigquery');

  const ApigeeDatastoreTargetType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Terraform `deletion_policy` for Apigee datastores.
enum ApigeeDatastoreDeletionPolicy implements TerraformEnum {
  delete('DELETE'),
  abandon('ABANDON');

  const ApigeeDatastoreDeletionPolicy(this.terraformValue);
  @override
  final String terraformValue;
}

/// `datastore_config` block (max=1). Required when [targetType] is set.
@immutable
class ApigeeDatastoreDatastoreConfig {
  const ApigeeDatastoreDatastoreConfig({
    required this.projectId,
    this.bucketName,
    this.path,
    this.datasetName,
    this.tablePrefix,
  });

  final TfArg<String> projectId;
  final TfArg<String>? bucketName;
  final TfArg<String>? path;
  final TfArg<String>? datasetName;
  final TfArg<String>? tablePrefix;

  Map<String, Object?> toArgMap() => {
    'project_id': projectId,
    if (bucketName != null) 'bucket_name': bucketName!.toTfJson(),
    if (path != null) 'path': path!.toTfJson(),
    if (datasetName != null) 'dataset_name': datasetName!.toTfJson(),
    if (tablePrefix != null) 'table_prefix': tablePrefix!.toTfJson(),
  };
}

/// Factory wrapper for `google_apigee_datastore`.
final class GoogleApigeeDatastore extends Resource {
  static const String tfType = 'google_apigee_datastore';

  GoogleApigeeDatastore({
    required super.localName,
    required TfArg<String> orgId,
    required TfArg<String> displayName,
    required TfArg<ApigeeDatastoreTargetType> targetType,
    ApigeeDatastoreDatastoreConfig? datastoreConfig,
    TfArg<ApigeeDatastoreDeletionPolicy>? deletionPolicy,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'org_id': orgId,
           'display_name': displayName,
           'target_type': targetType,
           if (datastoreConfig != null)
             'datastore_config': TfArg.literal([datastoreConfig.toArgMap()]),
           if (deletionPolicy != null) 'deletion_policy': deletionPolicy,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleApigeeDatastoreSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `create_time` attribute.
  TfRef<String> get createTime => TfRef.attribute<String>(this, 'create_time');

  /// Reference to `last_update_time` attribute.
  TfRef<String> get lastUpdateTime =>
      TfRef.attribute<String>(this, 'last_update_time');

  /// Reference to `org` attribute.
  TfRef<String> get org => TfRef.attribute<String>(this, 'org');

  /// Reference to `self` attribute.
  TfRef<String> get self => TfRef.attribute<String>(this, 'self');
}
