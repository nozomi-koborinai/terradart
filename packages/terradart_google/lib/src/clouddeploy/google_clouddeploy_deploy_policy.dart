// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_clouddeploy_deploy_policy`.
const Set<String> _googleClouddeployDeployPolicySensitive = <String>{};

/// Factory wrapper for `google_clouddeploy_deploy_policy`.
///
/// A `DeployPolicy` inhibits manual or DeployPolicy-driven actions within a
/// Delivery Pipeline or Target.
///
/// Cloud Deploy **deploy policy** — restricts rollout actions on
/// selected pipelines / targets. Nested `rules` and `selectors` blocks
/// are passed as structured maps (same as the other Cloud Deploy
/// factories).
///
/// **Cost:** gcp-cost: Cloud Deploy `C3AD-803F-FC89` Active Multiple
/// Target Delivery Pipelines `E1A5-8E1F-C1DE` **$5/count**.
/// billing-behavior: a deploy policy is restriction metadata — the
/// catalog SKU is for *active multi-target pipelines*, not for creating
/// a policy. Enable `clouddeploy.googleapis.com` before apply.
///
/// Example:
/// ```dart
/// GoogleClouddeployDeployPolicy(
///   localName: 'freeze',
///   name: TfArg.literal('terradart-deploy-policy'),
///   location: TfArg.literal('us-central1'),
///   selectors: TfArg.literal([
///     {
///       'delivery_pipeline': {'id': 'terradart-pipeline'},
///     },
///   ]),
///   rules: TfArg.literal([
///     {
///       'rollout_restriction': {
///         'id': 'no-automation',
///         'invokers': ['DEPLOY_AUTOMATION'],
///       },
///     },
///   ]),
/// );
/// ```
final class GoogleClouddeployDeployPolicy extends Resource {
  static const String tfType = 'google_clouddeploy_deploy_policy';

  GoogleClouddeployDeployPolicy({
    required super.localName,
    required TfArg<String> name,
    required TfArg<String> location,
    required TfArg<List<Map<String, dynamic>>> selectors,
    required TfArg<List<Map<String, dynamic>>> rules,
    TfArg<bool>? suspended,
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
           'selectors': selectors,
           'rules': rules,
           'suspended': ?suspended,
           'description': ?description,
           'annotations': ?annotations,
           'labels': ?labels,
           'deletion_policy': ?deletionPolicy,
           'project': ?project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleClouddeployDeployPolicySensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleClouddeployDeployPolicy>`.
  RefTo<GoogleClouddeployDeployPolicy> get ref => RefTo.of(this);

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

  /// Reference to `terraform_labels` attribute.
  TfRef<Map<String, String>> get terraformLabels =>
      TfRef.attribute<Map<String, String>>(this, 'terraform_labels');

  /// Reference to `uid` attribute.
  TfRef<String> get uid => TfRef.attribute<String>(this, 'uid');

  /// Reference to `update_time` attribute.
  TfRef<String> get updateTime => TfRef.attribute<String>(this, 'update_time');

  /// Reference to `annotations` attribute.
  TfRef<Map<String, String>> get annotationsRef =>
      TfRef.attribute<Map<String, String>>(this, 'annotations');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicyRef =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `description` attribute.
  TfRef<String> get descriptionRef =>
      TfRef.attribute<String>(this, 'description');

  /// Reference to `labels` attribute.
  TfRef<Map<String, String>> get labelsRef =>
      TfRef.attribute<Map<String, String>>(this, 'labels');

  /// Reference to `location` attribute.
  TfRef<String> get locationRef => TfRef.attribute<String>(this, 'location');

  /// Reference to `project` attribute.
  TfRef<String> get projectRef => TfRef.attribute<String>(this, 'project');

  /// Reference to `suspended` attribute.
  TfRef<bool> get suspendedRef => TfRef.attribute<bool>(this, 'suspended');
}
