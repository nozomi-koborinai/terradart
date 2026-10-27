// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `azurerm_cognitive_deployment`.
const Set<String> _azurermCognitiveDeploymentSensitive = <String>{};

/// Cognitive Deployment Version Upgrade enum for `version_upgrade_option`.
extension type const CognitiveDeploymentVersionUpgradeOption._(TfArg<String> _)
    implements TfArg<String> {
  CognitiveDeploymentVersionUpgradeOption.variable(String name)
    : this._(TfArg.variable(name));
  CognitiveDeploymentVersionUpgradeOption.expression(String template)
    : this._(TfArg.expression(template));
  const CognitiveDeploymentVersionUpgradeOption.arg(TfArg<String> arg)
    : this._(arg);

  static const noautoupgrade = CognitiveDeploymentVersionUpgradeOption._(
    TfArgLiteral('NoAutoUpgrade'),
  );
  static const oncecurrentversionexpired =
      CognitiveDeploymentVersionUpgradeOption._(
        TfArgLiteral('OnceCurrentVersionExpired'),
      );
  static const oncenewdefaultversionavailable =
      CognitiveDeploymentVersionUpgradeOption._(
        TfArgLiteral('OnceNewDefaultVersionAvailable'),
      );

  static const List<CognitiveDeploymentVersionUpgradeOption> values = [
    noautoupgrade,
    oncecurrentversionexpired,
    oncenewdefaultversionavailable,
  ];
}

/// Typed helper for the `model` block of
/// `azurerm_cognitive_deployment` (derived from provider schema).
@immutable
final class CognitiveDeploymentModel {
  const CognitiveDeploymentModel({
    required this.format,
    required this.name,
    this.version,
  });

  final TfArg<String> format;

  final TfArg<String> name;

  final TfArg<String>? version;

  @internal
  Map<String, Object?> encode() => {
    'format': format.toTfJson(),
    'name': name.toTfJson(),
    'version': ?version?.toTfJson(),
  };
}

/// Typed helper for the `sku` block of
/// `azurerm_cognitive_deployment` (derived from provider schema).
@immutable
final class CognitiveDeploymentSku {
  const CognitiveDeploymentSku({
    this.capacity,
    this.family,
    required this.name,
    this.size,
    this.tier,
  });

  final TfArg<num>? capacity;

  final TfArg<String>? family;

  final CognitiveDeploymentSkuName name;

  final TfArg<String>? size;

  final CognitiveDeploymentTier? tier;

  @internal
  Map<String, Object?> encode() => {
    'capacity': ?capacity?.toTfJson(),
    'family': ?family?.toTfJson(),
    'name': name.toTfJson(),
    'size': ?size?.toTfJson(),
    'tier': ?tier?.toTfJson(),
  };
}

/// `name` — derived from the provider schema description.
extension type const CognitiveDeploymentSkuName._(TfArg<String> _)
    implements TfArg<String> {
  CognitiveDeploymentSkuName.variable(String name)
    : this._(TfArg.variable(name));
  CognitiveDeploymentSkuName.expression(String template)
    : this._(TfArg.expression(template));
  const CognitiveDeploymentSkuName.arg(TfArg<String> arg) : this._(arg);

  static const standard = CognitiveDeploymentSkuName._(
    TfArgLiteral('Standard'),
  );
  static const datazonebatch = CognitiveDeploymentSkuName._(
    TfArgLiteral('DataZoneBatch'),
  );
  static const datazoneprovisionedmanaged = CognitiveDeploymentSkuName._(
    TfArgLiteral('DataZoneProvisionedManaged'),
  );
  static const datazonestandard = CognitiveDeploymentSkuName._(
    TfArgLiteral('DataZoneStandard'),
  );
  static const globalbatch = CognitiveDeploymentSkuName._(
    TfArgLiteral('GlobalBatch'),
  );
  static const globalprovisionedmanaged = CognitiveDeploymentSkuName._(
    TfArgLiteral('GlobalProvisionedManaged'),
  );
  static const globalstandard = CognitiveDeploymentSkuName._(
    TfArgLiteral('GlobalStandard'),
  );
  static const provisionedmanaged = CognitiveDeploymentSkuName._(
    TfArgLiteral('ProvisionedManaged'),
  );

  static const List<CognitiveDeploymentSkuName> values = [
    standard,
    datazonebatch,
    datazoneprovisionedmanaged,
    datazonestandard,
    globalbatch,
    globalprovisionedmanaged,
    globalstandard,
    provisionedmanaged,
  ];
}

/// `tier` — derived from the provider schema description.
extension type const CognitiveDeploymentTier._(TfArg<String> _)
    implements TfArg<String> {
  CognitiveDeploymentTier.variable(String name) : this._(TfArg.variable(name));
  CognitiveDeploymentTier.expression(String template)
    : this._(TfArg.expression(template));
  const CognitiveDeploymentTier.arg(TfArg<String> arg) : this._(arg);

  static const basic = CognitiveDeploymentTier._(TfArgLiteral('Basic'));
  static const enterprise = CognitiveDeploymentTier._(
    TfArgLiteral('Enterprise'),
  );
  static const free = CognitiveDeploymentTier._(TfArgLiteral('Free'));
  static const premium = CognitiveDeploymentTier._(TfArgLiteral('Premium'));
  static const standard = CognitiveDeploymentTier._(TfArgLiteral('Standard'));

  static const List<CognitiveDeploymentTier> values = [
    basic,
    enterprise,
    free,
    premium,
    standard,
  ];
}

/// Factory wrapper for `azurerm_cognitive_deployment`.
final class AzurermCognitiveDeployment extends Resource {
  static const String tfType = 'azurerm_cognitive_deployment';

  AzurermCognitiveDeployment(
    super.localName, {
    required TfArg<String> cognitiveAccountId,
    TfArg<bool>? dynamicThrottlingEnabled,
    required TfArg<String> name,
    TfArg<String>? raiPolicyName,
    TfArg<String>? spilloverDeploymentName,
    CognitiveDeploymentVersionUpgradeOption? versionUpgradeOption,
    required CognitiveDeploymentModel model,
    required CognitiveDeploymentSku sku,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'cognitive_account_id': cognitiveAccountId,
           'dynamic_throttling_enabled': ?dynamicThrottlingEnabled,
           'name': name,
           'rai_policy_name': ?raiPolicyName,
           'spillover_deployment_name': ?spilloverDeploymentName,
           'version_upgrade_option': ?versionUpgradeOption,
           'model': TfArg.literal(model.encode()),
           'sku': TfArg.literal(sku.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _azurermCognitiveDeploymentSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermCognitiveDeployment>`.
  RefTo<AzurermCognitiveDeployment> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `cognitive_account_id` attribute.
  TfRef<String> get cognitiveAccountId =>
      TfRef.attribute<String>(this, 'cognitive_account_id');

  /// Reference to `dynamic_throttling_enabled` attribute.
  TfRef<bool> get dynamicThrottlingEnabled =>
      TfRef.attribute<bool>(this, 'dynamic_throttling_enabled');

  /// Reference to `rai_policy_name` attribute.
  TfRef<String> get raiPolicyName =>
      TfRef.attribute<String>(this, 'rai_policy_name');

  /// Reference to `spillover_deployment_name` attribute.
  TfRef<String> get spilloverDeploymentName =>
      TfRef.attribute<String>(this, 'spillover_deployment_name');

  /// Reference to `version_upgrade_option` attribute.
  TfRef<String> get versionUpgradeOption =>
      TfRef.attribute<String>(this, 'version_upgrade_option');
}
