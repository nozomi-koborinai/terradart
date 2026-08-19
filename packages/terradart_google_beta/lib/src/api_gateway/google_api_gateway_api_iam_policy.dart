// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_api_gateway_api_iam_policy`.
const Set<String> _googleApiGatewayApiIamPolicySensitive = <String>{};

/// Factory wrapper for `google_api_gateway_api_iam_policy`.
///
/// Authoritative IAM policy for a API Gateway API.
///
/// Overwrites every role binding on the resource. Prefer
/// [GoogleApiGatewayApiIamMember] for additive grants.
final class GoogleApiGatewayApiIamPolicy extends Resource {
  static const String tfType = 'google_api_gateway_api_iam_policy';

  GoogleApiGatewayApiIamPolicy({
    required super.localName,
    required TfArg<String> api,
    required TfArg<String> policyData,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         provider: 'google-beta',
         argMap: {
           'api': api,
           'policy_data': policyData,
           if (project != null) 'project': project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleApiGatewayApiIamPolicySensitive;
}
