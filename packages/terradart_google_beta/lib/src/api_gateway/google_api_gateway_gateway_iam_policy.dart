// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_api_gateway_gateway_iam_policy`.
const Set<String> _googleApiGatewayGatewayIamPolicySensitive = <String>{};

/// Factory wrapper for `google_api_gateway_gateway_iam_policy`.
///
/// Authoritative IAM policy for a API Gateway Gateway.
///
/// Overwrites every role binding on the resource. Prefer
/// [GoogleApiGatewayGatewayIamMember] for additive grants.
final class GoogleApiGatewayGatewayIamPolicy extends Resource {
  static const String tfType = 'google_api_gateway_gateway_iam_policy';

  GoogleApiGatewayGatewayIamPolicy({
    required super.localName,
    required TfArg<String> gateway,
    required TfArg<String> policyData,
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
           'gateway': gateway,
           'policy_data': policyData,
           if (project != null) 'project': project,
           if (region != null) 'region': region,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleApiGatewayGatewayIamPolicySensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleApiGatewayGatewayIamPolicy>`.
  RefTo<GoogleApiGatewayGatewayIamPolicy> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');
}
