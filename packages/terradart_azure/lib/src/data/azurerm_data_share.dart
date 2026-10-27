// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../data_share/azurerm_data_share.dart';

/// Sensitive field paths for `azurerm_data_share`.
const Set<String> _azurermDataShareSensitive = <String>{};

/// Factory wrapper for `azurerm_data_share`.
final class DataAzurermDataShare extends Data {
  static const String tfType = 'azurerm_data_share';

  DataAzurermDataShare(
    super.localName, {
    required TfArg<String> accountId,
    required TfArg<String> name,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {'account_id': accountId, 'name': name},
       );

  @override
  Set<String> get sensitiveFields => _azurermDataShareSensitive;

  /// A reference to the `azurerm_data_share` this data source reads, for
  /// arguments typed `RefTo<AzurermDataShare>`.
  RefTo<AzurermDataShare> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `kind` attribute.
  TfRef<String> get kindAttr => TfRef.attribute<String>(this, 'kind');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `snapshot_schedule` attribute.
  TfRef<List<Map<String, Object?>>> get snapshotSchedule =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'snapshot_schedule');

  /// Reference to `terms` attribute.
  TfRef<String> get terms => TfRef.attribute<String>(this, 'terms');

  /// Reference to `account_id` attribute.
  TfRef<String> get accountId => TfRef.attribute<String>(this, 'account_id');
}
