// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_integration_connectors_managed_zone`.
const Set<String> _googleIntegrationConnectorsManagedZoneSensitive = <String>{};

/// Factory wrapper for `google_integration_connectors_managed_zone`.
///
/// An Integration connectors Managed Zone.
///
/// Integration Connectors **managed zone** — DNS zone peering a connector
/// path into a consumer VPC (`dns` + `target_project` / `target_vpc`).
///
/// **Cost / apply:** gcp-cost: no dedicated managed-zone SKU under
/// Integration Connectors `6FFB-B71E-5A0F` (connection node hours
/// `4AB5-4E41-8DAB` **$0.35/h** / `4E3B-04D1-77FA` **$0.70/h**).
/// billing-behavior: DNS metadata for never_apply connector stacks; needs
/// a real target VPC. Not applyable on `terradart-validate`. **Never**
/// wire into apply-smoke.
///
/// Enable `connectors.googleapis.com` before apply.
final class GoogleIntegrationConnectorsManagedZone extends Resource {
  static const String tfType = 'google_integration_connectors_managed_zone';

  GoogleIntegrationConnectorsManagedZone({
    required super.localName,
    required TfArg<String> name,
    required TfArg<String> dns,
    required TfArg<String> targetProject,
    required TfArg<String> targetVpc,
    TfArg<String>? description,
    TfArg<Map<String, String>>? labels,
    TfArg<String>? deletionPolicy,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           'dns': dns,
           'target_project': targetProject,
           'target_vpc': targetVpc,
           if (description != null) 'description': description,
           if (labels != null) 'labels': labels,
           if (deletionPolicy != null) 'deletion_policy': deletionPolicy,
           if (project != null) 'project': project,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleIntegrationConnectorsManagedZoneSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `create_time` attribute.
  TfRef<String> get createTime => TfRef.attribute<String>(this, 'create_time');

  /// Reference to `effective_labels` attribute.
  TfRef<Map<String, String>> get effectiveLabels =>
      TfRef.attribute<Map<String, String>>(this, 'effective_labels');

  /// Reference to `terraform_labels` attribute.
  TfRef<Map<String, String>> get terraformLabels =>
      TfRef.attribute<Map<String, String>>(this, 'terraform_labels');

  /// Reference to `update_time` attribute.
  TfRef<String> get updateTime => TfRef.attribute<String>(this, 'update_time');

  /// Reference to `id` attribute.
  TfRef<String> get idRef => TfRef.attribute<String>(this, 'id');

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');
}
