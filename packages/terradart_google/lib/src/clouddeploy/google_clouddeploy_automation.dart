// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_clouddeploy_automation`.
const Set<String> _googleClouddeployAutomationSensitive = <String>{};

/// Factory wrapper for `google_clouddeploy_automation`.
///
/// An `Automation` enables the automation of manually driven actions for a
/// Delivery Pipeline, which includes Release promotion amongst Targets, Rollout
/// repair and Rollout deployment strategy advancement.
///
/// Cloud Deploy **automation** — promotes / advances / repairs rollouts
/// on a [GoogleClouddeployDeliveryPipeline]. Nested `rules` and
/// `selector` blocks are passed as structured maps (same as the other
/// Cloud Deploy factories). Set [suspended] to `true` so the automation
/// does not fire rollouts.
///
/// **Cost:** gcp-cost: Cloud Deploy `C3AD-803F-FC89` Active Multiple
/// Target Delivery Pipelines `E1A5-8E1F-C1DE` **$5/count**.
/// billing-behavior: automations are pipeline config — the catalog SKU
/// is for *active multi-target pipelines*, not for creating an
/// automation. Enable `clouddeploy.googleapis.com` before apply.
///
/// Example:
/// ```dart
/// GoogleClouddeployAutomation(
///   localName: 'promote',
///   name: TfArg.literal('terradart-automation'),
///   location: TfArg.literal('us-central1'),
///   deliveryPipeline: TfArg.ref(pipeline.nameRef),
///   serviceAccount: TfArg.ref(deployer.email),
///   suspended: TfArg.literal(true),
///   selector: TfArg.literal(<String, Object?>{
///     'targets': [
///       {'id': 'terradart-run-target'},
///     ],
///   }),
///   rules: TfArg.literal([
///     {
///       'promote_release_rule': {'id': 'promote-release'},
///     },
///   ]),
/// );
/// ```
final class GoogleClouddeployAutomation extends Resource {
  static const String tfType = 'google_clouddeploy_automation';

  GoogleClouddeployAutomation({
    required super.localName,
    required TfArg<String> name,
    required TfArg<String> location,
    required TfArg<String> deliveryPipeline,
    required TfArg<String> serviceAccount,
    required TfArg<Map<String, dynamic>> selector,
    required TfArg<List<Map<String, dynamic>>> rules,
    TfArg<bool>? suspended,
    TfArg<String>? description,
    TfArg<Map<String, String>>? annotations,
    TfArg<Map<String, String>>? labels,
    TfArg<String>? deletionPolicy,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           'location': location,
           'delivery_pipeline': deliveryPipeline,
           'service_account': serviceAccount,
           'selector': selector,
           'rules': rules,
           if (suspended != null) 'suspended': suspended,
           if (description != null) 'description': description,
           if (annotations != null) 'annotations': annotations,
           if (labels != null) 'labels': labels,
           if (deletionPolicy != null) 'deletion_policy': deletionPolicy,
           if (project != null) 'project': project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleClouddeployAutomationSensitive;

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
}
