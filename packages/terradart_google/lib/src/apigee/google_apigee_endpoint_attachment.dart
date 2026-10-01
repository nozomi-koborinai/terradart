// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_apigee_endpoint_attachment`.
const Set<String> _googleApigeeEndpointAttachmentSensitive = <String>{};

/// Factory wrapper for `google_apigee_endpoint_attachment`.
///
/// An `EndpointAttachment` in Apigee is a resource that facilitates private
/// connectivity between Apigee and backend services using Private Service
/// Connect (PSC).
///
/// For more information, see the [Apigee
/// documentation](https://docs.cloud.google.com/apigee/docs/api-platform/architecture/southbound-networking-patterns-endpoints).
///
/// Apigee **endpoint attachment** — Private Service Connect attachment
/// from an Apigee org to a producer service attachment.
///
/// **Cost / apply:** gcp-cost: no endpoint-attachment SKU under Apigee
/// `1C2D-8C78-EC58` (list_skus keyword network → 0). billing-behavior:
/// requires a never_apply [GoogleApigeeOrganization] plus a real PSC
/// service attachment. Debt-only on `terradart-validate`. **Never** wire
/// into apply-smoke.
final class GoogleApigeeEndpointAttachment extends Resource {
  static const String tfType = 'google_apigee_endpoint_attachment';

  GoogleApigeeEndpointAttachment({
    required super.localName,
    required TfArg<String> endpointAttachmentId,
    required TfArg<String> location,
    required TfArg<String> orgId,
    required TfArg<String> serviceAttachment,
    TfArg<String>? deletionPolicy,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'endpoint_attachment_id': endpointAttachmentId,
           'location': location,
           'org_id': orgId,
           'service_attachment': serviceAttachment,
           'deletion_policy': ?deletionPolicy,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleApigeeEndpointAttachmentSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleApigeeEndpointAttachment>`.
  RefTo<GoogleApigeeEndpointAttachment> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `connection_state` attribute.
  TfRef<String> get connectionState =>
      TfRef.attribute<String>(this, 'connection_state');

  /// Reference to `host` attribute.
  TfRef<String> get host => TfRef.attribute<String>(this, 'host');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicy =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `endpoint_attachment_id` attribute.
  TfRef<String> get endpointAttachmentId =>
      TfRef.attribute<String>(this, 'endpoint_attachment_id');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `org_id` attribute.
  TfRef<String> get orgId => TfRef.attribute<String>(this, 'org_id');

  /// Reference to `service_attachment` attribute.
  TfRef<String> get serviceAttachment =>
      TfRef.attribute<String>(this, 'service_attachment');
}
