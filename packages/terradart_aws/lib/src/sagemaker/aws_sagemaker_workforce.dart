// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../ec2/aws_security_group.dart' show AwsSecurityGroup;
import '../ec2/aws_subnet.dart' show AwsSubnet;
import '../ec2/aws_vpc.dart' show AwsVpc;

/// Sensitive field paths for `aws_sagemaker_workforce`.
const Set<String> _awsSagemakerWorkforceSensitive = <String>{
  'oidc_config.client_secret',
};

/// Exactly one of `cognito_config`, `oidc_config` on `aws_sagemaker_workforce`: the provider rejects
/// none and more than one, so each variant sets one of them.
///
/// Pick one with a dot shorthand: `.cognitoConfig(...)`.
sealed class SagemakerWorkforceIdentityProvider {
  const SagemakerWorkforceIdentityProvider();

  /// Sets `cognito_config`.
  const factory SagemakerWorkforceIdentityProvider.cognitoConfig(
    SagemakerWorkforceCognitoConfig cognitoConfig,
  ) = SagemakerWorkforceIdentityProviderCognitoConfig;

  /// Sets `oidc_config`.
  const factory SagemakerWorkforceIdentityProvider.oidcConfig(
    SagemakerWorkforceOidcConfig oidcConfig,
  ) = SagemakerWorkforceIdentityProviderOidcConfig;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();

  /// The resource arguments behind [encode], as the caller's
  /// [TfArg]s.
  Map<String, TfArg<Object?>> get argMap;
}

/// The [SagemakerWorkforceIdentityProvider.cognitoConfig] choice: sets `cognito_config`.
final class SagemakerWorkforceIdentityProviderCognitoConfig
    extends SagemakerWorkforceIdentityProvider {
  const SagemakerWorkforceIdentityProviderCognitoConfig(this.cognitoConfig);

  final SagemakerWorkforceCognitoConfig cognitoConfig;

  @override
  String get blockKey => 'cognito_config';

  @override
  Map<String, Object?> encode() => {'cognito_config': cognitoConfig.encode()};

  @override
  Map<String, TfArg<Object?>> get argMap => {
    'cognito_config': TfArg.literal(cognitoConfig.encode()),
  };
}

/// The [SagemakerWorkforceIdentityProvider.oidcConfig] choice: sets `oidc_config`.
final class SagemakerWorkforceIdentityProviderOidcConfig
    extends SagemakerWorkforceIdentityProvider {
  const SagemakerWorkforceIdentityProviderOidcConfig(this.oidcConfig);

  final SagemakerWorkforceOidcConfig oidcConfig;

  @override
  String get blockKey => 'oidc_config';

  @override
  Map<String, Object?> encode() => {'oidc_config': oidcConfig.encode()};

  @override
  Map<String, TfArg<Object?>> get argMap => {
    'oidc_config': TfArg.literal(oidcConfig.encode()),
  };
}

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

  final TfArg<List<RefTo<AwsSecurityGroup>>>? securityGroupIds;

  final TfArg<List<RefTo<AwsSubnet>>>? subnets;

  final RefTo<AwsVpc>? vpcId;

  Map<String, Object?> encode() => {
    if (securityGroupIds != null)
      'security_group_ids': securityGroupIds!.encodeAs('id').toTfJson(),
    if (subnets != null) 'subnets': subnets!.encodeAs('id').toTfJson(),
    if (vpcId != null) 'vpc_id': vpcId!.encodeAs('id').toTfJson(),
  };
}

/// Factory wrapper for `aws_sagemaker_workforce`.
final class AwsSagemakerWorkforce extends Resource {
  static const String tfType = 'aws_sagemaker_workforce';

  AwsSagemakerWorkforce({
    required super.localName,
    TfArg<String>? region,
    required TfArg<String> workforceName,
    required SagemakerWorkforceIdentityProvider identityProvider,
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
           ...identityProvider.argMap,
           if (sourceIpConfig != null)
             'source_ip_config': TfArg.literal(sourceIpConfig.encode()),
           if (workforceVpcConfig != null)
             'workforce_vpc_config': TfArg.literal(workforceVpcConfig.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsSagemakerWorkforceSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsSagemakerWorkforce>`.
  RefTo<AwsSagemakerWorkforce> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `subdomain` attribute.
  TfRef<String> get subdomain => TfRef.attribute<String>(this, 'subdomain');
}
