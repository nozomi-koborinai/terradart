// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_clouddeploy_target`.
const Set<String> _googleClouddeployTargetSensitive = <String>{};

/// Factory wrapper for `google_clouddeploy_target`.
///
/// The Cloud Deploy `Target` resource.
final class GoogleClouddeployTarget extends Resource {
  static const String tfType = 'google_clouddeploy_target';

  GoogleClouddeployTarget({
    required super.localName,
    required TfArg<String> name,
    required TfArg<String> location,
    TfArg<Map<String, dynamic>>? gke,
    TfArg<Map<String, dynamic>>? run,
    TfArg<Map<String, dynamic>>? multiTarget,
    TfArg<Map<String, dynamic>>? anthosCluster,
    TfArg<Map<String, dynamic>>? customTarget,
    TfArg<List<Map<String, dynamic>>>? executionConfigs,
    TfArg<List<Map<String, dynamic>>>? associatedEntities,
    TfArg<Map<String, String>>? deployParameters,
    TfArg<bool>? requireApproval,
    TfArg<String>? description,
    TfArg<Map<String, String>>? annotations,
    TfArg<Map<String, String>>? labels,
    TfArg<String>? deletionPolicy,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           'location': location,
           'gke': ?gke,
           'run': ?run,
           'multi_target': ?multiTarget,
           'anthos_cluster': ?anthosCluster,
           'custom_target': ?customTarget,
           'execution_configs': ?executionConfigs,
           'associated_entities': ?associatedEntities,
           'deploy_parameters': ?deployParameters,
           'require_approval': ?requireApproval,
           'description': ?description,
           'annotations': ?annotations,
           'labels': ?labels,
           'deletion_policy': ?deletionPolicy,
           'project': ?project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleClouddeployTargetSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleClouddeployTarget>`.
  RefTo<GoogleClouddeployTarget> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `create_time` attribute.
  TfRef<String> get createTime => TfRef.attribute<String>(this, 'create_time');

  /// Reference to `effective_annotations` attribute.
  TfRef<Map<String, String>> get effectiveAnnotations =>
      TfRef.attribute<Map<String, String>>(this, 'effective_annotations');

  /// Reference to `effective_labels` attribute.
  TfRef<Map<String, String>> get effectiveLabels =>
      TfRef.attribute<Map<String, String>>(this, 'effective_labels');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');

  /// Reference to `target_id` attribute.
  TfRef<String> get targetId => TfRef.attribute<String>(this, 'target_id');

  /// Reference to `terraform_labels` attribute.
  TfRef<Map<String, String>> get terraformLabels =>
      TfRef.attribute<Map<String, String>>(this, 'terraform_labels');

  /// Reference to `uid` attribute.
  TfRef<String> get uid => TfRef.attribute<String>(this, 'uid');

  /// Reference to `update_time` attribute.
  TfRef<String> get updateTime => TfRef.attribute<String>(this, 'update_time');
}
