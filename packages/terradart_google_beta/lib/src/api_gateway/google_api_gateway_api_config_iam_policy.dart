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

  GoogleApiGatewayApiConfigIamPolicy({
    required super.localName,
    TfArg<String>? api,
    required RefTo<GoogleApiGatewayApiConfig> apiConfig,
    required TfArg<String> policyData,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
    String? provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         provider: provider ?? 'google-beta',
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

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleApiGatewayApiConfigIamPolicy>`.
  RefTo<GoogleApiGatewayApiConfigIamPolicy> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');

  /// Reference to `api` attribute.
  TfRef<String> get apiRef => TfRef.attribute<String>(this, 'api');

  /// Reference to `api_config` attribute.
  TfRef<String> get apiConfigRef => TfRef.attribute<String>(this, 'api_config');

  /// Reference to `policy_data` attribute.
  TfRef<String> get policyDataRef =>
      TfRef.attribute<String>(this, 'policy_data');

  /// Reference to `project` attribute.
  TfRef<String> get projectRef => TfRef.attribute<String>(this, 'project');
}
