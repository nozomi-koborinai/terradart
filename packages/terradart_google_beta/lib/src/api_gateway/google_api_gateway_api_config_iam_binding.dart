// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_api_gateway_api_config_iam_binding`.
const Set<String> _googleApiGatewayApiConfigIamBindingSensitive = <String>{};

/// Factory wrapper for `google_api_gateway_api_config_iam_binding`.
///
/// Authoritative IAM binding for a single `role` on a API Gateway API Config.
///
/// Replaces the entire member list for that role. Prefer
/// [GoogleApiGatewayApiConfigIamMember] for additive grants.
final class GoogleApiGatewayApiConfigIamBinding extends Resource {
  static const String tfType = 'google_api_gateway_api_config_iam_binding';

  GoogleApiGatewayApiConfigIamBinding({
    required super.localName,
    required TfArg<String> api,
    required TfArg<String> apiConfig,
    required TfArg<List<String>> members,
    TfArg<String>? project,
    required TfArg<String> role,
    TfArg<Map<String, dynamic>>? condition,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         provider: 'google-beta',
         argMap: {
           'api': api,
           'api_config': apiConfig,
           'members': members,
           if (project != null) 'project': project,
           'role': role,
           if (condition != null) 'condition': condition,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleApiGatewayApiConfigIamBindingSensitive;
}
