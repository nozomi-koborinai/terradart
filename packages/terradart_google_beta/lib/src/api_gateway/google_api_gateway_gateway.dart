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

  GoogleApiGatewayGateway({
    required super.localName,
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
           if (deletionPolicy != null) 'deletion_policy': deletionPolicy,
           if (displayName != null) 'display_name': displayName,
           'gateway_id': gatewayId,
           if (labels != null) 'labels': labels,
           if (project != null) 'project': project,
           if (region != null) 'region': region,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleApiGatewayGatewaySensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

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
}
