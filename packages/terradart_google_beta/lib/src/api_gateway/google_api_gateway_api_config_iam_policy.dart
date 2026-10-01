// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../api_gateway/google_api_gateway_api_config.dart'
    show GoogleApiGatewayApiConfig;

/// Sensitive field paths for `google_api_gateway_api_config_iam_policy`.
const Set<String> _googleApiGatewayApiConfigIamPolicySensitive = <String>{};

/// Factory wrapper for `google_api_gateway_api_config_iam_policy`.
///
/// Authoritative IAM policy for a API Gateway API Config.
///
/// Overwrites every role binding on the resource. Prefer
/// [GoogleApiGatewayApiConfigIamMember] for additive grants.
final class GoogleApiGatewayApiConfigIamPolicy extends Resource {
  static const String tfType = 'google_api_gateway_api_config_iam_policy';

  GoogleApiGatewayApiConfigIamPolicy(
    super.localName, {
    TfArg<String>? api,
    required RefTo<GoogleApiGatewayApiConfig> apiConfig,
    required TfArg<String> policyData,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'api': ?(api ?? apiConfig.alsoAs('api')),
           'api_config': apiConfig.encodeAs('name'),
           'policy_data': policyData,
           'project': ?(project ?? apiConfig.alsoAs('project')),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleApiGatewayApiConfigIamPolicySensitive;

  @override
  String get defaultProvider => 'google-beta';

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleApiGatewayApiConfigIamPolicy>`.
  RefTo<GoogleApiGatewayApiConfigIamPolicy> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');

  /// Reference to `api` attribute.
  TfRef<String> get api => TfRef.attribute<String>(this, 'api');

  /// Reference to `api_config` attribute.
  TfRef<String> get apiConfig => TfRef.attribute<String>(this, 'api_config');

  /// Reference to `policy_data` attribute.
  TfRef<String> get policyData => TfRef.attribute<String>(this, 'policy_data');

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');
}
