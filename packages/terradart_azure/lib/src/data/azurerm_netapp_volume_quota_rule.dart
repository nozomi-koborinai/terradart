// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../netapp/azurerm_netapp_volume_quota_rule.dart';

/// Sensitive field paths for `azurerm_netapp_volume_quota_rule`.
const Set<String> _azurermNetappVolumeQuotaRuleSensitive = <String>{};

/// Factory wrapper for `azurerm_netapp_volume_quota_rule`.
final class DataAzurermNetappVolumeQuotaRule extends Data {
  static const String tfType = 'azurerm_netapp_volume_quota_rule';

  DataAzurermNetappVolumeQuotaRule(
    super.localName, {
    required TfArg<String> name,
    required TfArg<String> volumeId,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {'name': name, 'volume_id': volumeId},
       );

  @override
  Set<String> get sensitiveFields => _azurermNetappVolumeQuotaRuleSensitive;

  /// A reference to the `azurerm_netapp_volume_quota_rule` this data source reads, for
  /// arguments typed `RefTo<AzurermNetappVolumeQuotaRule>`.
  RefTo<AzurermNetappVolumeQuotaRule> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

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
