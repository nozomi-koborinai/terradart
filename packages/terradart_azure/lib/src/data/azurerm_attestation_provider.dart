// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../attestation/azurerm_attestation_provider.dart';
import '../resource/azurerm_resource_group.dart' show AzurermResourceGroup;

/// Sensitive field paths for `azurerm_attestation_provider`.
const Set<String> _azurermAttestationProviderSensitive = <String>{};

/// Factory wrapper for `azurerm_attestation_provider`.
final class DataAzurermAttestationProvider extends Data {
  static const String tfType = 'azurerm_attestation_provider';

  DataAzurermAttestationProvider(
    super.localName, {
    required TfArg<String> name,
    required RefTo<AzurermResourceGroup> resourceGroupName,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           'resource_group_name': resourceGroupName.encodeAs('name'),
         },
       );

  @override
  Set<String> get sensitiveFields => _azurermAttestationProviderSensitive;

  /// A reference to the `azurerm_attestation_provider` this data source reads, for
  /// arguments typed `RefTo<AzurermAttestationProvider>`.
  RefTo<AzurermAttestationProvider> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `attestation_uri` attribute.
  TfRef<String> get attestationUri =>
      TfRef.attribute<String>(this, 'attestation_uri');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `open_enclave_policy_base64` attribute.
  TfRef<String> get openEnclavePolicyBase64 =>
      TfRef.attribute<String>(this, 'open_enclave_policy_base64');

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

  /// Reference to `trust_model` attribute.
  TfRef<String> get trustModel => TfRef.attribute<String>(this, 'trust_model');

  /// Reference to `resource_group_name` attribute.
  TfRef<String> get resourceGroupName =>
      TfRef.attribute<String>(this, 'resource_group_name');
}
