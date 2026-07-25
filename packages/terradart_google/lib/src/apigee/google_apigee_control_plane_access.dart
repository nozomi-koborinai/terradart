// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_apigee_control_plane_access`.
const Set<String> _googleApigeeControlPlaneAccessSensitive = <String>{};

/// Factory wrapper for `google_apigee_control_plane_access`.
///
/// Authorize the Runtime components to access directly with Apigee Control
/// Plane.
///
/// Apigee **control plane access** — identities allowed to publish analytics
/// / synchronize the control plane for an organization.
///
/// **Cost / apply:** gcp-cost: no Control-plane-access SKU under Apigee
/// `1C2D-8C78-EC58` (list_skus keyword Control → 0). billing-behavior:
/// requires a never_apply [GoogleApigeeOrganization] (Gateway Node Hours
/// `0136-18C1-DD41` **$1.025/h**). Debt-only on `terradart-validate`.
/// **Never** wire into apply-smoke.
final class GoogleApigeeControlPlaneAccess extends Resource {
  static const String tfType = 'google_apigee_control_plane_access';

  GoogleApigeeControlPlaneAccess({
    required super.localName,
    required TfArg<String> name,
    TfArg<List<String>>? synchronizerIdentities,
    TfArg<List<String>>? analyticsPublisherIdentities,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           if (synchronizerIdentities != null)
             'synchronizer_identities': synchronizerIdentities,
           if (analyticsPublisherIdentities != null)
             'analytics_publisher_identities': analyticsPublisherIdentities,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleApigeeControlPlaneAccessSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `id` attribute.
  TfRef<String> get idRef => TfRef.attribute<String>(this, 'id');
}
