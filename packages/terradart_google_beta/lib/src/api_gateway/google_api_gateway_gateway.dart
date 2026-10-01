// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_api_gateway_gateway`.
const Set<String> _googleApiGatewayGatewaySensitive = <String>{};

/// Factory wrapper for `google_api_gateway_gateway`.
///
/// A consumable API that can be used by multiple Gateways.
final class GoogleApiGatewayGateway extends Resource {
  static const String tfType = 'google_api_gateway_gateway';

  GoogleApiGatewayGateway(
    super.localName, {
    required TfArg<String> apiConfig,
    TfArg<String>? deletionPolicy,
    TfArg<String>? displayName,
    required TfArg<String> gatewayId,
    TfArg<Map<String, String>>? labels,
    TfArg<String>? project,
    TfArg<String>? region,
    super.lifecycle,
    super.dependsOn,
    String? provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         provider: provider ?? 'google-beta',
         argMap: {
           'api_config': apiConfig,
           'deletion_policy': ?deletionPolicy,
           'display_name': ?displayName,
           'gateway_id': gatewayId,
           'labels': ?labels,
           'project': ?project,
           'region': ?region,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleApiGatewayGatewaySensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleApiGatewayGateway>`.
  RefTo<GoogleApiGatewayGateway> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `default_hostname` attribute.
  TfRef<String> get defaultHostname =>
      TfRef.attribute<String>(this, 'default_hostname');

  /// Reference to `effective_labels` attribute.
  TfRef<Map<String, String>> get effectiveLabels =>
      TfRef.attribute<Map<String, String>>(this, 'effective_labels');

  /// Reference to `terraform_labels` attribute.
  TfRef<Map<String, String>> get terraformLabels =>
      TfRef.attribute<Map<String, String>>(this, 'terraform_labels');

  /// Reference to `api_config` attribute.
  TfRef<String> get apiConfig => TfRef.attribute<String>(this, 'api_config');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicy =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `display_name` attribute.
  TfRef<String> get displayName =>
      TfRef.attribute<String>(this, 'display_name');

  /// Reference to `gateway_id` attribute.
  TfRef<String> get gatewayId => TfRef.attribute<String>(this, 'gateway_id');

  /// Reference to `labels` attribute.
  TfRef<Map<String, String>> get labels =>
      TfRef.attribute<Map<String, String>>(this, 'labels');

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');
}
