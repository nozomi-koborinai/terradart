// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `azurerm_security_center_subscription_pricing`.
const Set<String> _azurermSecurityCenterSubscriptionPricingSensitive =
    <String>{};

/// Security Center Subscription Pricing Resource enum for `resource_type`.
extension type const SecurityCenterSubscriptionPricingResourceType._(
  TfArg<String> _
) implements TfArg<String> {
  SecurityCenterSubscriptionPricingResourceType.variable(String name)
    : this._(TfArg.variable(name));
  SecurityCenterSubscriptionPricingResourceType.expression(String template)
    : this._(TfArg.expression(template));
  const SecurityCenterSubscriptionPricingResourceType.arg(TfArg<String> arg)
    : this._(arg);

  static const ai = SecurityCenterSubscriptionPricingResourceType._(
    TfArgLiteral('AI'),
  );
  static const api = SecurityCenterSubscriptionPricingResourceType._(
    TfArgLiteral('Api'),
  );
  static const appservices = SecurityCenterSubscriptionPricingResourceType._(
    TfArgLiteral('AppServices'),
  );
  static const containerregistry =
      SecurityCenterSubscriptionPricingResourceType._(
        TfArgLiteral('ContainerRegistry'),
      );
  static const keyvaults = SecurityCenterSubscriptionPricingResourceType._(
    TfArgLiteral('KeyVaults'),
  );
  static const kubernetesservice =
      SecurityCenterSubscriptionPricingResourceType._(
        TfArgLiteral('KubernetesService'),
      );
  static const sqlservers = SecurityCenterSubscriptionPricingResourceType._(
    TfArgLiteral('SqlServers'),
  );
  static const sqlservervirtualmachines =
      SecurityCenterSubscriptionPricingResourceType._(
        TfArgLiteral('SqlServerVirtualMachines'),
      );
  static const storageaccounts =
      SecurityCenterSubscriptionPricingResourceType._(
        TfArgLiteral('StorageAccounts'),
      );
  static const virtualmachines =
      SecurityCenterSubscriptionPricingResourceType._(
        TfArgLiteral('VirtualMachines'),
      );
  static const arm = SecurityCenterSubscriptionPricingResourceType._(
    TfArgLiteral('Arm'),
  );
  static const dns = SecurityCenterSubscriptionPricingResourceType._(
    TfArgLiteral('Dns'),
  );
  static const opensourcerelationaldatabases =
      SecurityCenterSubscriptionPricingResourceType._(
        TfArgLiteral('OpenSourceRelationalDatabases'),
      );
  static const containers = SecurityCenterSubscriptionPricingResourceType._(
    TfArgLiteral('Containers'),
  );
  static const cosmosdbs = SecurityCenterSubscriptionPricingResourceType._(
    TfArgLiteral('CosmosDbs'),
  );
  static const cloudposture = SecurityCenterSubscriptionPricingResourceType._(
    TfArgLiteral('CloudPosture'),
  );

  static const List<SecurityCenterSubscriptionPricingResourceType> values = [
    ai,
    api,
    appservices,
    containerregistry,
    keyvaults,
    kubernetesservice,
    sqlservers,
    sqlservervirtualmachines,
    storageaccounts,
    virtualmachines,
    arm,
    dns,
    opensourcerelationaldatabases,
    containers,
    cosmosdbs,
    cloudposture,
  ];
}

/// Typed helper for the `extension` block of
/// `azurerm_security_center_subscription_pricing` (derived from provider schema).
@immutable
final class SecurityCenterSubscriptionPricingExtension {
  const SecurityCenterSubscriptionPricingExtension({
    this.additionalExtensionProperties,
    required this.name,
  });

  final TfArg<Map<String, String>>? additionalExtensionProperties;

  final TfArg<String> name;

  @internal
  Map<String, Object?> encode() => {
    'additional_extension_properties': ?additionalExtensionProperties
        ?.toTfJson(),
    'name': name.toTfJson(),
  };
}

/// Factory wrapper for `azurerm_security_center_subscription_pricing`.
final class AzurermSecurityCenterSubscriptionPricing extends Resource {
  static const String tfType = 'azurerm_security_center_subscription_pricing';

  AzurermSecurityCenterSubscriptionPricing(
    super.localName, {
    SecurityCenterSubscriptionPricingResourceType? resourceType,
    TfArg<String>? subplan,
    required TfArg<String> tier,
    List<SecurityCenterSubscriptionPricingExtension>? extension,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'resource_type': ?resourceType,
           'subplan': ?subplan,
           'tier': tier,
           if (extension != null)
             'extension': TfArg.literal([
               for (final e in extension) e.encode(),
             ]),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _azurermSecurityCenterSubscriptionPricingSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermSecurityCenterSubscriptionPricing>`.
  RefTo<AzurermSecurityCenterSubscriptionPricing> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `resource_type` attribute.
  TfRef<String> get resourceType =>
      TfRef.attribute<String>(this, 'resource_type');

  /// Reference to `subplan` attribute.
  TfRef<String> get subplan => TfRef.attribute<String>(this, 'subplan');

  /// Reference to `tier` attribute.
  TfRef<String> get tier => TfRef.attribute<String>(this, 'tier');
}
