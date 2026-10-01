// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_verifiedpermissions_identity_source`.
const Set<String> _awsVerifiedpermissionsIdentitySourceSensitive = <String>{};

/// Typed helper for the `configuration` block of
/// `aws_verifiedpermissions_identity_source` (derived from provider schema).
@immutable
final class VerifiedpermissionsIdentitySourceConfiguration {
  const VerifiedpermissionsIdentitySourceConfiguration({
    this.cognitoUserPoolConfiguration,
    this.openIdConnectConfiguration,
  });

  final List<VerifiedpermissionsIdentitySourceCognitoUserPoolConfiguration>?
  cognitoUserPoolConfiguration;

  final List<VerifiedpermissionsIdentitySourceOpenIdConnectConfiguration>?
  openIdConnectConfiguration;

  Map<String, Object?> encode() => {
    if (cognitoUserPoolConfiguration != null)
      'cognito_user_pool_configuration': [
        for (final e in cognitoUserPoolConfiguration!) e.encode(),
      ],
    if (openIdConnectConfiguration != null)
      'open_id_connect_configuration': [
        for (final e in openIdConnectConfiguration!) e.encode(),
      ],
  };
}

/// Typed helper for the `configuration.cognito_user_pool_configuration` block of
/// `aws_verifiedpermissions_identity_source` (derived from provider schema).
@immutable
final class VerifiedpermissionsIdentitySourceCognitoUserPoolConfiguration {
  const VerifiedpermissionsIdentitySourceCognitoUserPoolConfiguration({
    this.clientIds,
    required this.userPoolArn,
    this.groupConfiguration,
  });

  final TfArg<List<String>>? clientIds;

  final TfArg<String> userPoolArn;

  final List<
    VerifiedpermissionsIdentitySourceCognitoUserPoolConfigurationGroupConfiguration
  >?
  groupConfiguration;

  Map<String, Object?> encode() => {
    'client_ids': ?clientIds?.toTfJson(),
    'user_pool_arn': userPoolArn.toTfJson(),
    if (groupConfiguration != null)
      'group_configuration': [for (final e in groupConfiguration!) e.encode()],
  };
}

/// Typed helper for the `configuration.cognito_user_pool_configuration.group_configuration` block of
/// `aws_verifiedpermissions_identity_source` (derived from provider schema).
@immutable
final class VerifiedpermissionsIdentitySourceCognitoUserPoolConfigurationGroupConfiguration {
  const VerifiedpermissionsIdentitySourceCognitoUserPoolConfigurationGroupConfiguration({
    required this.groupEntityType,
  });

  final TfArg<String> groupEntityType;

  Map<String, Object?> encode() => {
    'group_entity_type': groupEntityType.toTfJson(),
  };
}

/// Typed helper for the `configuration.open_id_connect_configuration` block of
/// `aws_verifiedpermissions_identity_source` (derived from provider schema).
@immutable
final class VerifiedpermissionsIdentitySourceOpenIdConnectConfiguration {
  const VerifiedpermissionsIdentitySourceOpenIdConnectConfiguration({
    this.entityIdPrefix,
    required this.issuer,
    this.groupConfiguration,
    this.tokenSelection,
  });

  final TfArg<String>? entityIdPrefix;

  final TfArg<String> issuer;

  final List<
    VerifiedpermissionsIdentitySourceOpenIdConnectConfigurationGroupConfiguration
  >?
  groupConfiguration;

  final List<VerifiedpermissionsIdentitySourceTokenSelection>? tokenSelection;

  Map<String, Object?> encode() => {
    'entity_id_prefix': ?entityIdPrefix?.toTfJson(),
    'issuer': issuer.toTfJson(),
    if (groupConfiguration != null)
      'group_configuration': [for (final e in groupConfiguration!) e.encode()],
    if (tokenSelection != null)
      'token_selection': [for (final e in tokenSelection!) e.encode()],
  };
}

/// Typed helper for the `configuration.open_id_connect_configuration.group_configuration` block of
/// `aws_verifiedpermissions_identity_source` (derived from provider schema).
@immutable
final class VerifiedpermissionsIdentitySourceOpenIdConnectConfigurationGroupConfiguration {
  const VerifiedpermissionsIdentitySourceOpenIdConnectConfigurationGroupConfiguration({
    required this.groupClaim,
    required this.groupEntityType,
  });

  final TfArg<String> groupClaim;

  final TfArg<String> groupEntityType;

  Map<String, Object?> encode() => {
    'group_claim': groupClaim.toTfJson(),
    'group_entity_type': groupEntityType.toTfJson(),
  };
}

/// Typed helper for the `configuration.open_id_connect_configuration.token_selection` block of
/// `aws_verifiedpermissions_identity_source` (derived from provider schema).
@immutable
final class VerifiedpermissionsIdentitySourceTokenSelection {
  const VerifiedpermissionsIdentitySourceTokenSelection({
    this.accessTokenOnly,
    this.identityTokenOnly,
  });

  final List<VerifiedpermissionsIdentitySourceAccessTokenOnly>? accessTokenOnly;

  final List<VerifiedpermissionsIdentitySourceIdentityTokenOnly>?
  identityTokenOnly;

  Map<String, Object?> encode() => {
    if (accessTokenOnly != null)
      'access_token_only': [for (final e in accessTokenOnly!) e.encode()],
    if (identityTokenOnly != null)
      'identity_token_only': [for (final e in identityTokenOnly!) e.encode()],
  };
}

/// Typed helper for the `configuration.open_id_connect_configuration.token_selection.access_token_only` block of
/// `aws_verifiedpermissions_identity_source` (derived from provider schema).
@immutable
final class VerifiedpermissionsIdentitySourceAccessTokenOnly {
  const VerifiedpermissionsIdentitySourceAccessTokenOnly({
    this.audiences,
    this.principalIdClaim,
  });

  final TfArg<List<String>>? audiences;

  final TfArg<String>? principalIdClaim;

  Map<String, Object?> encode() => {
    'audiences': ?audiences?.toTfJson(),
    'principal_id_claim': ?principalIdClaim?.toTfJson(),
  };
}

/// Typed helper for the `configuration.open_id_connect_configuration.token_selection.identity_token_only` block of
/// `aws_verifiedpermissions_identity_source` (derived from provider schema).
@immutable
final class VerifiedpermissionsIdentitySourceIdentityTokenOnly {
  const VerifiedpermissionsIdentitySourceIdentityTokenOnly({
    this.clientIds,
    this.principalIdClaim,
  });

  final TfArg<List<String>>? clientIds;

  final TfArg<String>? principalIdClaim;

  Map<String, Object?> encode() => {
    'client_ids': ?clientIds?.toTfJson(),
    'principal_id_claim': ?principalIdClaim?.toTfJson(),
  };
}

/// Factory wrapper for `aws_verifiedpermissions_identity_source`.
final class AwsVerifiedpermissionsIdentitySource extends Resource {
  static const String tfType = 'aws_verifiedpermissions_identity_source';

  AwsVerifiedpermissionsIdentitySource({
    required super.localName,
    required TfArg<String> policyStoreId,
    TfArg<String>? principalEntityType,
    TfArg<String>? region,
    List<VerifiedpermissionsIdentitySourceConfiguration>? configuration,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'policy_store_id': policyStoreId,
           'principal_entity_type': ?principalEntityType,
           'region': ?region,
           if (configuration != null)
             'configuration': TfArg.literal([
               for (final e in configuration) e.encode(),
             ]),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _awsVerifiedpermissionsIdentitySourceSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsVerifiedpermissionsIdentitySource>`.
  RefTo<AwsVerifiedpermissionsIdentitySource> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `policy_store_id` attribute.
  TfRef<String> get policyStoreId =>
      TfRef.attribute<String>(this, 'policy_store_id');

  /// Reference to `principal_entity_type` attribute.
  TfRef<String> get principalEntityType =>
      TfRef.attribute<String>(this, 'principal_entity_type');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');
}
