// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `azurerm_frontdoor_custom_https_configuration`.
const Set<String> _azurermFrontdoorCustomHttpsConfigurationSensitive =
    <String>{};

/// Typed helper for the `custom_https_configuration` block of
/// `azurerm_frontdoor_custom_https_configuration` (derived from provider schema).
@immutable
final class FrontdoorCustomHttpsConfiguration {
  const FrontdoorCustomHttpsConfiguration({
    this.azureKeyVaultCertificateSecretName,
    this.azureKeyVaultCertificateSecretVersion,
    this.azureKeyVaultCertificateVaultId,
    this.certificateSource,
  });

  final TfArg<String>? azureKeyVaultCertificateSecretName;

  final TfArg<String>? azureKeyVaultCertificateSecretVersion;

  final TfArg<String>? azureKeyVaultCertificateVaultId;

  final FrontdoorCustomHttpsConfigurationCertificateSource? certificateSource;

  @internal
  Map<String, Object?> encode() => {
    'azure_key_vault_certificate_secret_name':
        ?azureKeyVaultCertificateSecretName?.toTfJson(),
    'azure_key_vault_certificate_secret_version':
        ?azureKeyVaultCertificateSecretVersion?.toTfJson(),
    'azure_key_vault_certificate_vault_id': ?azureKeyVaultCertificateVaultId
        ?.toTfJson(),
    'certificate_source': ?certificateSource?.toTfJson(),
  };
}

/// `certificate_source` — derived from the provider schema description.
extension type const FrontdoorCustomHttpsConfigurationCertificateSource._(
  TfArg<String> _
) implements TfArg<String> {
  FrontdoorCustomHttpsConfigurationCertificateSource.variable(String name)
    : this._(TfArg.variable(name));
  FrontdoorCustomHttpsConfigurationCertificateSource.expression(String template)
    : this._(TfArg.expression(template));
  const FrontdoorCustomHttpsConfigurationCertificateSource.arg(
    TfArg<String> arg,
  ) : this._(arg);

  static const azurekeyvault =
      FrontdoorCustomHttpsConfigurationCertificateSource._(
        TfArgLiteral('AzureKeyVault'),
      );
  static const frontdoor = FrontdoorCustomHttpsConfigurationCertificateSource._(
    TfArgLiteral('FrontDoor'),
  );

  static const List<FrontdoorCustomHttpsConfigurationCertificateSource> values =
      [azurekeyvault, frontdoor];
}

/// Factory wrapper for `azurerm_frontdoor_custom_https_configuration`.
final class AzurermFrontdoorCustomHttpsConfiguration extends Resource {
  static const String tfType = 'azurerm_frontdoor_custom_https_configuration';

  AzurermFrontdoorCustomHttpsConfiguration(
    super.localName, {
    required TfArg<bool> customHttpsProvisioningEnabled,
    required TfArg<String> frontendEndpointId,
    FrontdoorCustomHttpsConfiguration? customHttpsConfiguration,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'custom_https_provisioning_enabled': customHttpsProvisioningEnabled,
           'frontend_endpoint_id': frontendEndpointId,
           if (customHttpsConfiguration != null)
             'custom_https_configuration': TfArg.literal(
               customHttpsConfiguration.encode(),
             ),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _azurermFrontdoorCustomHttpsConfigurationSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermFrontdoorCustomHttpsConfiguration>`.
  RefTo<AzurermFrontdoorCustomHttpsConfiguration> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `custom_https_provisioning_enabled` attribute.
  TfRef<bool> get customHttpsProvisioningEnabled =>
      TfRef.attribute<bool>(this, 'custom_https_provisioning_enabled');

  /// Reference to `frontend_endpoint_id` attribute.
  TfRef<String> get frontendEndpointId =>
      TfRef.attribute<String>(this, 'frontend_endpoint_id');
}
