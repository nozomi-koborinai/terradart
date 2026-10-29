// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_compute_network_edge_security_service`.
const Set<String> _googleComputeNetworkEdgeSecurityServiceSensitive =
    <String>{};

/// Factory wrapper for `google_compute_network_edge_security_service`.
///
/// Google Cloud Armor network edge security service resource.
final class GoogleComputeNetworkEdgeSecurityService extends Resource {
  static const String tfType = 'google_compute_network_edge_security_service';

  GoogleComputeNetworkEdgeSecurityService(
    super.localName, {
    TfArg<String>? deletionPolicy,
    TfArg<String>? description,
    required TfArg<String> name,
    TfArg<String>? project,
    TfArg<String>? region,
    TfArg<String>? securityPolicy,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'deletion_policy': ?deletionPolicy,
           'description': ?description,
           'name': name,
           'project': ?project,
           'region': ?region,
           'security_policy': ?securityPolicy,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleComputeNetworkEdgeSecurityServiceSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleComputeNetworkEdgeSecurityService>`.
  RefTo<GoogleComputeNetworkEdgeSecurityService> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `creation_timestamp` attribute.
  TfRef<String> get creationTimestamp =>
      TfRef.attribute<String>(this, 'creation_timestamp');

  /// Reference to `fingerprint` attribute.
  TfRef<String> get fingerprint => TfRef.attribute<String>(this, 'fingerprint');

  /// Reference to `self_link` attribute.
  TfRef<String> get selfLink => TfRef.attribute<String>(this, 'self_link');

  /// Reference to `self_link_with_service_id` attribute.
  TfRef<String> get selfLinkWithServiceId =>
      TfRef.attribute<String>(this, 'self_link_with_service_id');

  /// Reference to `service_id` attribute.
  TfRef<String> get serviceId => TfRef.attribute<String>(this, 'service_id');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicy =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `security_policy` attribute.
  TfRef<String> get securityPolicy =>
      TfRef.attribute<String>(this, 'security_policy');
}
