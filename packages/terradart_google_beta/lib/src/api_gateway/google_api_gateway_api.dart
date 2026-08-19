// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_api_gateway_api`.
const Set<String> _googleApiGatewayApiSensitive = <String>{};

/// Factory wrapper for `google_api_gateway_api`.
final class GoogleApiGatewayApi extends Resource {
  static const String tfType = 'google_api_gateway_api';

  GoogleApiGatewayApi({
    required super.localName,
    required TfArg<String> apiId,
    TfArg<String>? deletionPolicy,
    TfArg<String>? displayName,
    TfArg<Map<String, String>>? labels,
    TfArg<String>? managedService,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         provider: 'google-beta',
         argMap: {
           'api_id': apiId,
           if (deletionPolicy != null) 'deletion_policy': deletionPolicy,
           if (displayName != null) 'display_name': displayName,
           if (labels != null) 'labels': labels,
           if (managedService != null) 'managed_service': managedService,
           if (project != null) 'project': project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleApiGatewayApiSensitive;
}
