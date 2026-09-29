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
    String? provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         provider: provider ?? 'google-beta',
         argMap: {'api': api, 'policy_data': policyData, 'project': ?project},
       );

  @override
  Set<String> get sensitiveFields => _googleApiGatewayApiIamPolicySensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleApiGatewayApiIamPolicy>`.
  RefTo<GoogleApiGatewayApiIamPolicy> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');
}
