// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_api_gateway_gateway_iam_binding`.
const Set<String> _googleApiGatewayGatewayIamBindingSensitive = <String>{};

/// Factory wrapper for `google_api_gateway_gateway_iam_binding`.
///
/// Authoritative IAM binding for a single `role` on a API Gateway Gateway.
///
/// Replaces the entire member list for that role. Prefer
/// [GoogleApiGatewayGatewayIamMember] for additive grants.
final class GoogleApiGatewayGatewayIamBinding extends Resource {
  static const String tfType = 'google_api_gateway_gateway_iam_binding';

  GoogleApiGatewayGatewayIamBinding({
    required super.localName,
    required TfArg<String> gateway,
    required TfArg<List<String>> members,
    TfArg<String>? project,
    TfArg<String>? region,
    required TfArg<String> role,
    TfArg<Map<String, dynamic>>? condition,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         provider: 'google-beta',
         argMap: {
           'gateway': gateway,
           'members': members,
           if (project != null) 'project': project,
           if (region != null) 'region': region,
           'role': role,
           if (condition != null) 'condition': condition,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleApiGatewayGatewayIamBindingSensitive;
}
