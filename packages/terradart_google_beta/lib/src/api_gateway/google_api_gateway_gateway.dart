// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_api_gateway_gateway`.
const Set<String> _googleApiGatewayGatewaySensitive = <String>{};

/// Factory wrapper for `google_api_gateway_gateway`.
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
  }) : super(
         terraformType: tfType,
         provider: 'google-beta',
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
}
