// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../resource/azurerm_resource_group.dart' show AzurermResourceGroup;

/// Sensitive field paths for `azurerm_logic_app_integration_account_agreement`.
const Set<String> _azurermLogicAppIntegrationAccountAgreementSensitive =
    <String>{};

/// Logic App Integration Account Agreement enum for `agreement_type`.
extension type const LogicAppIntegrationAccountAgreementType._(TfArg<String> _)
    implements TfArg<String> {
  LogicAppIntegrationAccountAgreementType.variable(String name)
    : this._(TfArg.variable(name));
  LogicAppIntegrationAccountAgreementType.expression(String template)
    : this._(TfArg.expression(template));
  const LogicAppIntegrationAccountAgreementType.arg(TfArg<String> arg)
    : this._(arg);

  static const as2 = LogicAppIntegrationAccountAgreementType._(
    TfArgLiteral('AS2'),
  );
  static const x12 = LogicAppIntegrationAccountAgreementType._(
    TfArgLiteral('X12'),
  );
  static const edifact = LogicAppIntegrationAccountAgreementType._(
    TfArgLiteral('Edifact'),
  );

  static const List<LogicAppIntegrationAccountAgreementType> values = [
    as2,
    x12,
    edifact,
  ];
}

/// Typed helper for the `guest_identity` block of
/// `azurerm_logic_app_integration_account_agreement` (derived from provider schema).
@immutable
final class LogicAppIntegrationAccountAgreementGuestIdentity {
  const LogicAppIntegrationAccountAgreementGuestIdentity({
    required this.qualifier,
    required this.value,
  });

  final TfArg<String> qualifier;

  final TfArg<String> value;

  @internal
  Map<String, Object?> encode() => {
    'qualifier': qualifier.toTfJson(),
    'value': value.toTfJson(),
  };
}

/// Typed helper for the `host_identity` block of
/// `azurerm_logic_app_integration_account_agreement` (derived from provider schema).
@immutable
final class LogicAppIntegrationAccountAgreementHostIdentity {
  const LogicAppIntegrationAccountAgreementHostIdentity({
    required this.qualifier,
    required this.value,
  });

  final TfArg<String> qualifier;

  final TfArg<String> value;

  @internal
  Map<String, Object?> encode() => {
    'qualifier': qualifier.toTfJson(),
    'value': value.toTfJson(),
  };
}

/// Factory wrapper for `azurerm_logic_app_integration_account_agreement`.
final class AzurermLogicAppIntegrationAccountAgreement extends Resource {
  static const String tfType =
      'azurerm_logic_app_integration_account_agreement';

  AzurermLogicAppIntegrationAccountAgreement(
    super.localName, {
    required LogicAppIntegrationAccountAgreementType agreementType,
    required TfArg<String> content,
    required TfArg<String> guestPartnerName,
    required TfArg<String> hostPartnerName,
    required TfArg<String> integrationAccountName,
    TfArg<Map<String, String>>? metadata,
    required TfArg<String> name,
    required RefTo<AzurermResourceGroup> resourceGroupName,
    required LogicAppIntegrationAccountAgreementGuestIdentity guestIdentity,
    required LogicAppIntegrationAccountAgreementHostIdentity hostIdentity,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'agreement_type': agreementType,
           'content': content,
           'guest_partner_name': guestPartnerName,
           'host_partner_name': hostPartnerName,
           'integration_account_name': integrationAccountName,
           'metadata': ?metadata,
           'name': name,
           'resource_group_name': resourceGroupName.encodeAs('name'),
           'guest_identity': TfArg.literal(guestIdentity.encode()),
           'host_identity': TfArg.literal(hostIdentity.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _azurermLogicAppIntegrationAccountAgreementSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermLogicAppIntegrationAccountAgreement>`.
  RefTo<AzurermLogicAppIntegrationAccountAgreement> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `agreement_type` attribute.
  TfRef<String> get agreementType =>
      TfRef.attribute<String>(this, 'agreement_type');

  /// Reference to `content` attribute.
  TfRef<String> get content => TfRef.attribute<String>(this, 'content');

  /// Reference to `guest_partner_name` attribute.
  TfRef<String> get guestPartnerName =>
      TfRef.attribute<String>(this, 'guest_partner_name');

  /// Reference to `host_partner_name` attribute.
  TfRef<String> get hostPartnerName =>
      TfRef.attribute<String>(this, 'host_partner_name');

  /// Reference to `integration_account_name` attribute.
  TfRef<String> get integrationAccountName =>
      TfRef.attribute<String>(this, 'integration_account_name');

  /// Reference to `metadata` attribute.
  TfRef<Map<String, String>> get metadata =>
      TfRef.attribute<Map<String, String>>(this, 'metadata');

  /// Reference to `resource_group_name` attribute.
  TfRef<String> get resourceGroupName =>
      TfRef.attribute<String>(this, 'resource_group_name');
}
