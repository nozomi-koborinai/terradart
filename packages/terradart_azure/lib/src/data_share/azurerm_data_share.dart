// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `azurerm_data_share`.
const Set<String> _azurermDataShareSensitive = <String>{};

/// Typed helper for the `snapshot_schedule` block of
/// `azurerm_data_share` (derived from provider schema).
@immutable
final class DataShareSnapshotSchedule {
  const DataShareSnapshotSchedule({
    required this.name,
    required this.recurrence,
    required this.startTime,
  });

  final TfArg<String> name;

  final TfArg<String> recurrence;

  final TfArg<String> startTime;

  @internal
  Map<String, Object?> encode() => {
    'name': name.toTfJson(),
    'recurrence': recurrence.toTfJson(),
    'start_time': startTime.toTfJson(),
  };
}

/// Factory wrapper for `azurerm_data_share`.
final class AzurermDataShare extends Resource {
  static const String tfType = 'azurerm_data_share';

  AzurermDataShare(
    super.localName, {
    required TfArg<String> accountId,
    TfArg<String>? description,
    required TfArg<String> kind,
    required TfArg<String> name,
    TfArg<String>? terms,
    DataShareSnapshotSchedule? snapshotSchedule,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'account_id': accountId,
           'description': ?description,
           'kind': kind,
           'name': name,
           'terms': ?terms,
           if (snapshotSchedule != null)
             'snapshot_schedule': TfArg.literal(snapshotSchedule.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _azurermDataShareSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermDataShare>`.
  RefTo<AzurermDataShare> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `kind` attribute.
  TfRef<String> get kindAttr => TfRef.attribute<String>(this, 'kind');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `account_id` attribute.
  TfRef<String> get accountId => TfRef.attribute<String>(this, 'account_id');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `terms` attribute.
  TfRef<String> get terms => TfRef.attribute<String>(this, 'terms');
}
