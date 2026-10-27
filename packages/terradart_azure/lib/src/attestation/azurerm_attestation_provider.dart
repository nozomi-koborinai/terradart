// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../resource/azurerm_resource_group.dart' show AzurermResourceGroup;

/// Sensitive field paths for `azurerm_attestation_provider`.
const Set<String> _azurermAttestationProviderSensitive = <String>{};

/// Factory wrapper for `azurerm_attestation_provider`.
final class AzurermAttestationProvider extends Resource {
  static const String tfType = 'azurerm_attestation_provider';

  AzurermAttestationProvider(
    super.localName, {
    required TfArg<String> location,
    required TfArg<String> name,
    TfArg<String>? openEnclavePolicyBase64,
    TfArg<String>? policySigningCertificateData,
    required RefTo<AzurermResourceGroup> resourceGroupName,
    TfArg<String>? sevSnpPolicyBase64,
    TfArg<String>? sgxEnclavePolicyBase64,
    TfArg<Map<String, String>>? tags,
    TfArg<String>? tpmPolicyBase64,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'location': location,
           'name': name,
           'open_enclave_policy_base64': ?openEnclavePolicyBase64,
           'policy_signing_certificate_data': ?policySigningCertificateData,
           'resource_group_name': resourceGroupName.encodeAs('name'),
           'sev_snp_policy_base64': ?sevSnpPolicyBase64,
           'sgx_enclave_policy_base64': ?sgxEnclavePolicyBase64,
           'tags': ?tags,
           'tpm_policy_base64': ?tpmPolicyBase64,
         },
       );

  @override
  Set<String> get sensitiveFields => _azurermAttestationProviderSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermAttestationProvider>`.
  RefTo<AzurermAttestationProvider> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `attestation_uri` attribute.
  TfRef<String> get attestationUri =>
      TfRef.attribute<String>(this, 'attestation_uri');

  /// Reference to `trust_model` attribute.
  TfRef<String> get trustModel => TfRef.attribute<String>(this, 'trust_model');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `open_enclave_policy_base64` attribute.
  TfRef<String> get openEnclavePolicyBase64 =>
      TfRef.attribute<String>(this, 'open_enclave_policy_base64');

  /// Reference to `policy_signing_certificate_data` attribute.
  TfRef<String> get policySigningCertificateData =>
      TfRef.attribute<String>(this, 'policy_signing_certificate_data');

  /// Reference to `resource_group_name` attribute.
  TfRef<String> get resourceGroupName =>
      TfRef.attribute<String>(this, 'resource_group_name');

  /// Reference to `sev_snp_policy_base64` attribute.
  TfRef<String> get sevSnpPolicyBase64 =>
      TfRef.attribute<String>(this, 'sev_snp_policy_base64');

  /// Reference to `sgx_enclave_policy_base64` attribute.
  TfRef<String> get sgxEnclavePolicyBase64 =>
      TfRef.attribute<String>(this, 'sgx_enclave_policy_base64');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');

  /// Reference to `tpm_policy_base64` attribute.
  TfRef<String> get tpmPolicyBase64 =>
      TfRef.attribute<String>(this, 'tpm_policy_base64');
}
