// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `azurerm_palo_alto_local_rulestack_outbound_trust_certificate_association`.
const Set<String>
_azurermPaloAltoLocalRulestackOutboundTrustCertificateAssociationSensitive =
    <String>{};

/// Factory wrapper for `azurerm_palo_alto_local_rulestack_outbound_trust_certificate_association`.
final class AzurermPaloAltoLocalRulestackOutboundTrustCertificateAssociation
    extends Resource {
  static const String tfType =
      'azurerm_palo_alto_local_rulestack_outbound_trust_certificate_association';

  AzurermPaloAltoLocalRulestackOutboundTrustCertificateAssociation(
    super.localName, {
    required TfArg<String> certificateId,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(terraformType: tfType, argMap: {'certificate_id': certificateId});

  @override
  Set<String> get sensitiveFields =>
      _azurermPaloAltoLocalRulestackOutboundTrustCertificateAssociationSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermPaloAltoLocalRulestackOutboundTrustCertificateAssociation>`.
  RefTo<AzurermPaloAltoLocalRulestackOutboundTrustCertificateAssociation>
  get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `certificate_id` attribute.
  TfRef<String> get certificateId =>
      TfRef.attribute<String>(this, 'certificate_id');
}
