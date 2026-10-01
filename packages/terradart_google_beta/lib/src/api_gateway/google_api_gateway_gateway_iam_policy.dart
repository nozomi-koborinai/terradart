// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../api_gateway/google_api_gateway_gateway.dart'
    show GoogleApiGatewayGateway;

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

  GoogleApiGatewayGatewayIamPolicy(
    super.localName, {
    required RefTo<GoogleApiGatewayGateway> gateway,
    required TfArg<String> policyData,
    TfArg<String>? project,
    TfArg<String>? region,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'gateway': gateway.encodeAs('name'),
           'policy_data': policyData,
           'project': ?(project ?? gateway.alsoAs('project')),
           'region': ?(region ?? gateway.alsoAs('region')),
         },
       );

  @override
  Set<String> get sensitiveFields => _googleApiGatewayGatewayIamPolicySensitive;

  @override
  String get defaultProvider => 'google-beta';

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleApiGatewayGatewayIamPolicy>`.
  RefTo<GoogleApiGatewayGatewayIamPolicy> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');

  /// Reference to `gateway` attribute.
  TfRef<String> get gateway => TfRef.attribute<String>(this, 'gateway');

  /// Reference to `policy_data` attribute.
  TfRef<String> get policyData => TfRef.attribute<String>(this, 'policy_data');

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');
}
