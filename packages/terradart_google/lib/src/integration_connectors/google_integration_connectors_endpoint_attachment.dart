// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_integration_connectors_endpoint_attachment`.
const Set<String> _googleIntegrationConnectorsEndpointAttachmentSensitive =
    <String>{};

/// Factory wrapper for `google_integration_connectors_endpoint_attachment`.
///
/// An Integration connectors Endpoint Attachment.
///
/// Integration Connectors **endpoint attachment** — Private Service Connect
/// attachment for a connector path (`service_attachment`).
///
/// **Cost / apply:** gcp-cost: no dedicated endpoint-attachment SKU under
/// Integration Connectors `6FFB-B71E-5A0F` (connection node hours
/// `4AB5-4E41-8DAB` **$0.35/h** / `4E3B-04D1-77FA` **$0.70/h**).
/// billing-behavior: PSC wiring for never_apply
/// [GoogleIntegrationConnectorsConnection] stacks; needs a real producer
/// service attachment. Not applyable on `terradart-validate`. **Never**
/// wire into apply-smoke.
///
/// Enable `connectors.googleapis.com` before apply.
final class GoogleIntegrationConnectorsEndpointAttachment extends Resource {
  static const String tfType =
      'google_integration_connectors_endpoint_attachment';

  GoogleIntegrationConnectorsEndpointAttachment({
    required super.localName,
    required TfArg<String> name,
    required TfArg<String> location,
    required TfArg<String> serviceAttachment,
    TfArg<String>? description,
    TfArg<bool>? endpointGlobalAccess,
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
           'service_attachment': serviceAttachment,
           'description': ?description,
           'endpoint_global_access': ?endpointGlobalAccess,
           'labels': ?labels,
           'deletion_policy': ?deletionPolicy,
           'project': ?project,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleIntegrationConnectorsEndpointAttachmentSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleIntegrationConnectorsEndpointAttachment>`.
  RefTo<GoogleIntegrationConnectorsEndpointAttachment> get ref =>
      RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `create_time` attribute.
  TfRef<String> get createTime => TfRef.attribute<String>(this, 'create_time');

  /// Reference to `effective_labels` attribute.
  TfRef<Map<String, String>> get effectiveLabels =>
      TfRef.attribute<Map<String, String>>(this, 'effective_labels');

  /// Reference to `endpoint_ip` attribute.
  TfRef<String> get endpointIp => TfRef.attribute<String>(this, 'endpoint_ip');

  /// Reference to `terraform_labels` attribute.
  TfRef<Map<String, String>> get terraformLabels =>
      TfRef.attribute<Map<String, String>>(this, 'terraform_labels');

  /// Reference to `update_time` attribute.
  TfRef<String> get updateTime => TfRef.attribute<String>(this, 'update_time');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicy =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `endpoint_global_access` attribute.
  TfRef<bool> get endpointGlobalAccess =>
      TfRef.attribute<bool>(this, 'endpoint_global_access');

  /// Reference to `labels` attribute.
  TfRef<Map<String, String>> get labels =>
      TfRef.attribute<Map<String, String>>(this, 'labels');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');

  /// Reference to `service_attachment` attribute.
  TfRef<String> get serviceAttachment =>
      TfRef.attribute<String>(this, 'service_attachment');
}
