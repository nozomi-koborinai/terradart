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
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           'dns': dns,
           'target_project': targetProject,
           'target_vpc': targetVpc,
           'description': ?description,
           'labels': ?labels,
           'deletion_policy': ?deletionPolicy,
           'project': ?project,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleIntegrationConnectorsManagedZoneSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleIntegrationConnectorsManagedZone>`.
  RefTo<GoogleIntegrationConnectorsManagedZone> get ref => RefTo.of(this);

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

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicyRef =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `description` attribute.
  TfRef<String> get descriptionRef =>
      TfRef.attribute<String>(this, 'description');

  /// Reference to `dns` attribute.
  TfRef<String> get dnsRef => TfRef.attribute<String>(this, 'dns');

  /// Reference to `labels` attribute.
  TfRef<Map<String, String>> get labelsRef =>
      TfRef.attribute<Map<String, String>>(this, 'labels');

  /// Reference to `project` attribute.
  TfRef<String> get projectRef => TfRef.attribute<String>(this, 'project');

  /// Reference to `target_project` attribute.
  TfRef<String> get targetProjectRef =>
      TfRef.attribute<String>(this, 'target_project');

  /// Reference to `target_vpc` attribute.
  TfRef<String> get targetVpcRef => TfRef.attribute<String>(this, 'target_vpc');

  /// Reference to `id` attribute.
  TfRef<String> get idRef => TfRef.attribute<String>(this, 'id');

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');
}
