// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_sagemaker_workforce`.
const Set<String> _awsSagemakerWorkforceSensitive = <String>{
  'oidc_config.client_secret',
};

/// Typed helper for the `cognito_config` block of
/// `aws_sagemaker_workforce` (derived from provider schema).
@immutable
final class SagemakerWorkforceCognitoConfig {
  const SagemakerWorkforceCognitoConfig({
    required this.clientId,
    required this.userPool,
  });

  final TfArg<String> clientId;

  final TfArg<String> userPool;

  Map<String, Object?> encode() => {
    'client_id': clientId.toTfJson(),
    'user_pool': userPool.toTfJson(),
  };
}

/// Typed helper for the `oidc_config` block of
/// `aws_sagemaker_workforce` (derived from provider schema).
@immutable
final class SagemakerWorkforceOidcConfig {
  const SagemakerWorkforceOidcConfig({
    this.authenticationRequestExtraParams,
    required this.authorizationEndpoint,
    required this.clientId,
    required this.clientSecret,
    required this.issuer,
    required this.jwksUri,
    required this.logoutEndpoint,
    this.scope,
    required this.tokenEndpoint,
    required this.userInfoEndpoint,
  });

  final TfArg<Map<String, String>>? authenticationRequestExtraParams;

  final TfArg<String> authorizationEndpoint;

  final TfArg<String> clientId;

  final TfArg<String> clientSecret;

  final TfArg<String> issuer;

  final TfArg<String> jwksUri;

  final TfArg<String> logoutEndpoint;

  final TfArg<String>? scope;

  final TfArg<String> tokenEndpoint;

  final TfArg<String> userInfoEndpoint;

  Map<String, Object?> encode() => {
    if (authenticationRequestExtraParams != null)
      'authentication_request_extra_params': authenticationRequestExtraParams!
          .toTfJson(),
    'authorization_endpoint': authorizationEndpoint.toTfJson(),
    'client_id': clientId.toTfJson(),
    'client_secret': clientSecret.toTfJson(),
    'issuer': issuer.toTfJson(),
    'jwks_uri': jwksUri.toTfJson(),
    'logout_endpoint': logoutEndpoint.toTfJson(),
    if (scope != null) 'scope': scope!.toTfJson(),
    'token_endpoint': tokenEndpoint.toTfJson(),
    'user_info_endpoint': userInfoEndpoint.toTfJson(),
  };
}

/// Typed helper for the `source_ip_config` block of
/// `aws_sagemaker_workforce` (derived from provider schema).
@immutable
final class SagemakerWorkforceSourceIpConfig {
  const SagemakerWorkforceSourceIpConfig({required this.cidrs});

  final TfArg<List<Object?>> cidrs;

  Map<String, Object?> encode() => {'cidrs': cidrs.toTfJson()};
}

/// Typed helper for the `workforce_vpc_config` block of
/// `aws_sagemaker_workforce` (derived from provider schema).
@immutable
final class SagemakerWorkforceWorkforceVpcConfig {
  const SagemakerWorkforceWorkforceVpcConfig({
    this.securityGroupIds,
    this.subnets,
    this.vpcId,
  });

  final TfArg<List<Object?>>? securityGroupIds;

  final TfArg<List<Object?>>? subnets;

  final TfArg<String>? vpcId;

  Map<String, Object?> encode() => {
    if (securityGroupIds != null)
      'security_group_ids': securityGroupIds!.toTfJson(),
    if (subnets != null) 'subnets': subnets!.toTfJson(),
    if (vpcId != null) 'vpc_id': vpcId!.toTfJson(),
  };
}

/// Factory wrapper for `aws_sagemaker_workforce`.
final class AwsSagemakerWorkforce extends Resource {
  static const String tfType = 'aws_sagemaker_workforce';

  AwsSagemakerWorkforce({
    required super.localName,
    TfArg<String>? region,
    required TfArg<String> workforceName,
    SagemakerWorkforceCognitoConfig? cognitoConfig,
    SagemakerWorkforceOidcConfig? oidcConfig,
    SagemakerWorkforceSourceIpConfig? sourceIpConfig,
    SagemakerWorkforceWorkforceVpcConfig? workforceVpcConfig,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (region != null) 'region': region,
           'workforce_name': workforceName,
           if (cognitoConfig != null)
             'cognito_config': TfArg.literal(cognitoConfig.encode()),
           if (oidcConfig != null)
             'oidc_config': TfArg.literal(oidcConfig.encode()),
           if (sourceIpConfig != null)
             'source_ip_config': TfArg.literal(sourceIpConfig.encode()),
           if (workforceVpcConfig != null)
             'workforce_vpc_config': TfArg.literal(workforceVpcConfig.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsSagemakerWorkforceSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `subdomain` attribute.
  TfRef<String> get subdomain => TfRef.attribute<String>(this, 'subdomain');
}
