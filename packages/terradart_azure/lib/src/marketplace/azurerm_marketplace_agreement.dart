// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `azurerm_marketplace_agreement`.
const Set<String> _azurermMarketplaceAgreementSensitive = <String>{};

/// Factory wrapper for `azurerm_marketplace_agreement`.
final class AzurermMarketplaceAgreement extends Resource {
  static const String tfType = 'azurerm_marketplace_agreement';

  AzurermMarketplaceAgreement(
    super.localName, {
    required TfArg<String> offer,
    required TfArg<String> plan,
    required TfArg<String> publisher,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {'offer': offer, 'plan': plan, 'publisher': publisher},
       );

  @override
  Set<String> get sensitiveFields => _azurermMarketplaceAgreementSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermMarketplaceAgreement>`.
  RefTo<AzurermMarketplaceAgreement> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `license_text_link` attribute.
  TfRef<String> get licenseTextLink =>
      TfRef.attribute<String>(this, 'license_text_link');

  /// Reference to `privacy_policy_link` attribute.
  TfRef<String> get privacyPolicyLink =>
      TfRef.attribute<String>(this, 'privacy_policy_link');

  /// Reference to `offer` attribute.
  TfRef<String> get offer => TfRef.attribute<String>(this, 'offer');

  /// Reference to `plan` attribute.
  TfRef<String> get plan => TfRef.attribute<String>(this, 'plan');

  /// Reference to `publisher` attribute.
  TfRef<String> get publisher => TfRef.attribute<String>(this, 'publisher');
}
