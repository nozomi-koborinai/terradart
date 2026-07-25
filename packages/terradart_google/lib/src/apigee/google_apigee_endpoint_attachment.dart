// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_apigee_endpoint_attachment`.
const Set<String> _googleApigeeEndpointAttachmentSensitive = <String>{};

/// Factory wrapper for `google_apigee_endpoint_attachment`.
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
  }) : super(
         terraformType: tfType,
         argMap: {
           'endpoint_attachment_id': endpointAttachmentId,
           'location': location,
           'org_id': orgId,
           'service_attachment': serviceAttachment,
           if (deletionPolicy != null) 'deletion_policy': deletionPolicy,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleApigeeEndpointAttachmentSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `connection_state` attribute.
  TfRef<String> get connectionState =>
      TfRef.attribute<String>(this, 'connection_state');

  /// Reference to `host` attribute.
  TfRef<String> get host => TfRef.attribute<String>(this, 'host');

  /// Reference to `id` attribute.
  TfRef<String> get idRef => TfRef.attribute<String>(this, 'id');

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `host` attribute (PSC consumer host).
  TfRef<String> get hostRef => TfRef.attribute<String>(this, 'host');
}
