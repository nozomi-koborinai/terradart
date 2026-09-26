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

  final List<
    VerifiedpermissionsIdentitySourceConfigurationCognitoUserPoolConfiguration
  >?
  cognitoUserPoolConfiguration;

  final List<
    VerifiedpermissionsIdentitySourceConfigurationOpenIdConnectConfiguration
  >?
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
final class VerifiedpermissionsIdentitySourceConfigurationCognitoUserPoolConfiguration {
  const VerifiedpermissionsIdentitySourceConfigurationCognitoUserPoolConfiguration({
    this.clientIds,
    required this.userPoolArn,
    this.groupConfiguration,
  });

  final TfArg<List<Object?>>? clientIds;

  final TfArg<String> userPoolArn;

  final List<
    VerifiedpermissionsIdentitySourceConfigurationCognitoUserPoolConfigurationGroupConfiguration
  >?
  groupConfiguration;

  Map<String, Object?> encode() => {
    if (clientIds != null) 'client_ids': clientIds!.toTfJson(),
    'user_pool_arn': userPoolArn.toTfJson(),
    if (groupConfiguration != null)
      'group_configuration': [for (final e in groupConfiguration!) e.encode()],
  };
}

/// Typed helper for the `configuration.cognito_user_pool_configuration.group_configuration` block of
/// `aws_verifiedpermissions_identity_source` (derived from provider schema).
@immutable
final class VerifiedpermissionsIdentitySourceConfigurationCognitoUserPoolConfigurationGroupConfiguration {
  const VerifiedpermissionsIdentitySourceConfigurationCognitoUserPoolConfigurationGroupConfiguration({
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
final class VerifiedpermissionsIdentitySourceConfigurationOpenIdConnectConfiguration {
  const VerifiedpermissionsIdentitySourceConfigurationOpenIdConnectConfiguration({
    this.entityIdPrefix,
    required this.issuer,
    this.groupConfiguration,
    this.tokenSelection,
  });

  final TfArg<String>? entityIdPrefix;

  final TfArg<String> issuer;

  final List<
    VerifiedpermissionsIdentitySourceConfigurationOpenIdConnectConfigurationGroupConfiguration
  >?
  groupConfiguration;

  final List<
    VerifiedpermissionsIdentitySourceConfigurationOpenIdConnectConfigurationTokenSelection
  >?
  tokenSelection;

  Map<String, Object?> encode() => {
    if (entityIdPrefix != null) 'entity_id_prefix': entityIdPrefix!.toTfJson(),
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
final class VerifiedpermissionsIdentitySourceConfigurationOpenIdConnectConfigurationGroupConfiguration {
  const VerifiedpermissionsIdentitySourceConfigurationOpenIdConnectConfigurationGroupConfiguration({
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
final class VerifiedpermissionsIdentitySourceConfigurationOpenIdConnectConfigurationTokenSelection {
  const VerifiedpermissionsIdentitySourceConfigurationOpenIdConnectConfigurationTokenSelection({
    this.accessTokenOnly,
    this.identityTokenOnly,
  });

  final List<
    VerifiedpermissionsIdentitySourceConfigurationOpenIdConnectConfigurationTokenSelectionAccessTokenOnly
  >?
  accessTokenOnly;

  final List<
    VerifiedpermissionsIdentitySourceConfigurationOpenIdConnectConfigurationTokenSelectionIdentityTokenOnly
  >?
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
final class VerifiedpermissionsIdentitySourceConfigurationOpenIdConnectConfigurationTokenSelectionAccessTokenOnly {
  const VerifiedpermissionsIdentitySourceConfigurationOpenIdConnectConfigurationTokenSelectionAccessTokenOnly({
    this.audiences,
    this.principalIdClaim,
  });

  final TfArg<List<Object?>>? audiences;

  final TfArg<String>? principalIdClaim;

  Map<String, Object?> encode() => {
    if (audiences != null) 'audiences': audiences!.toTfJson(),
    if (principalIdClaim != null)
      'principal_id_claim': principalIdClaim!.toTfJson(),
  };
}

/// Typed helper for the `configuration.open_id_connect_configuration.token_selection.identity_token_only` block of
/// `aws_verifiedpermissions_identity_source` (derived from provider schema).
@immutable
final class VerifiedpermissionsIdentitySourceConfigurationOpenIdConnectConfigurationTokenSelectionIdentityTokenOnly {
  const VerifiedpermissionsIdentitySourceConfigurationOpenIdConnectConfigurationTokenSelectionIdentityTokenOnly({
    this.clientIds,
    this.principalIdClaim,
  });

  final TfArg<List<Object?>>? clientIds;

  final TfArg<String>? principalIdClaim;

  Map<String, Object?> encode() => {
    if (clientIds != null) 'client_ids': clientIds!.toTfJson(),
    if (principalIdClaim != null)
      'principal_id_claim': principalIdClaim!.toTfJson(),
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
           if (principalEntityType != null)
             'principal_entity_type': principalEntityType,
           if (region != null) 'region': region,
           if (configuration != null)
             'configuration': TfArg.literal([
               for (final e in configuration) e.encode(),
             ]),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _awsVerifiedpermissionsIdentitySourceSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}
