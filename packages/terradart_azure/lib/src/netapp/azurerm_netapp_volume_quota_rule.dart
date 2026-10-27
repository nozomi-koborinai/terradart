// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `azurerm_netapp_volume_quota_rule`.
const Set<String> _azurermNetappVolumeQuotaRuleSensitive = <String>{};

/// Netapp Volume Quota Rule Quota enum for `quota_type`.
extension type const NetappVolumeQuotaRuleQuotaType._(TfArg<String> _)
    implements TfArg<String> {
  NetappVolumeQuotaRuleQuotaType.variable(String name)
    : this._(TfArg.variable(name));
  NetappVolumeQuotaRuleQuotaType.expression(String template)
    : this._(TfArg.expression(template));
  const NetappVolumeQuotaRuleQuotaType.arg(TfArg<String> arg) : this._(arg);

  static const defaultgroupquota = NetappVolumeQuotaRuleQuotaType._(
    TfArgLiteral('DefaultGroupQuota'),
  );
  static const defaultuserquota = NetappVolumeQuotaRuleQuotaType._(
    TfArgLiteral('DefaultUserQuota'),
  );
  static const individualgroupquota = NetappVolumeQuotaRuleQuotaType._(
    TfArgLiteral('IndividualGroupQuota'),
  );
  static const individualuserquota = NetappVolumeQuotaRuleQuotaType._(
    TfArgLiteral('IndividualUserQuota'),
  );

  static const List<NetappVolumeQuotaRuleQuotaType> values = [
    defaultgroupquota,
    defaultuserquota,
    individualgroupquota,
    individualuserquota,
  ];
}

/// Factory wrapper for `azurerm_netapp_volume_quota_rule`.
final class AzurermNetappVolumeQuotaRule extends Resource {
  static const String tfType = 'azurerm_netapp_volume_quota_rule';

  AzurermNetappVolumeQuotaRule(
    super.localName, {
    required TfArg<String> location,
    required TfArg<String> name,
    required TfArg<num> quotaSizeInKib,
    TfArg<String>? quotaTarget,
    required NetappVolumeQuotaRuleQuotaType quotaType,
    required TfArg<String> volumeId,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'location': location,
           'name': name,
           'quota_size_in_kib': quotaSizeInKib,
           'quota_target': ?quotaTarget,
           'quota_type': quotaType,
           'volume_id': volumeId,
         },
       );

  @override
  Set<String> get sensitiveFields => _azurermNetappVolumeQuotaRuleSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermNetappVolumeQuotaRule>`.
  RefTo<AzurermNetappVolumeQuotaRule> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `quota_size_in_kib` attribute.
  TfRef<num> get quotaSizeInKib =>
      TfRef.attribute<num>(this, 'quota_size_in_kib');

  /// Reference to `quota_target` attribute.
  TfRef<String> get quotaTarget =>
      TfRef.attribute<String>(this, 'quota_target');

  /// Reference to `quota_type` attribute.
  TfRef<String> get quotaType => TfRef.attribute<String>(this, 'quota_type');

  /// Reference to `volume_id` attribute.
  TfRef<String> get volumeId => TfRef.attribute<String>(this, 'volume_id');
}
