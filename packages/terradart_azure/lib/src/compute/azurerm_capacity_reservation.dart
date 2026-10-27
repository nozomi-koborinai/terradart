// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `azurerm_capacity_reservation`.
const Set<String> _azurermCapacityReservationSensitive = <String>{};

/// Typed helper for the `sku` block of
/// `azurerm_capacity_reservation` (derived from provider schema).
@immutable
final class CapacityReservationSku {
  const CapacityReservationSku({required this.capacity, required this.name});

  final TfArg<num> capacity;

  final TfArg<String> name;

  @internal
  Map<String, Object?> encode() => {
    'capacity': capacity.toTfJson(),
    'name': name.toTfJson(),
  };
}

/// Factory wrapper for `azurerm_capacity_reservation`.
final class AzurermCapacityReservation extends Resource {
  static const String tfType = 'azurerm_capacity_reservation';

  AzurermCapacityReservation(
    super.localName, {
    required TfArg<String> capacityReservationGroupId,
    required TfArg<String> name,
    TfArg<Map<String, String>>? tags,
    TfArg<String>? zone,
    required CapacityReservationSku sku,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'capacity_reservation_group_id': capacityReservationGroupId,
           'name': name,
           'tags': ?tags,
           'zone': ?zone,
           'sku': TfArg.literal(sku.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _azurermCapacityReservationSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermCapacityReservation>`.
  RefTo<AzurermCapacityReservation> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `capacity_reservation_group_id` attribute.
  TfRef<String> get capacityReservationGroupId =>
      TfRef.attribute<String>(this, 'capacity_reservation_group_id');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');

  /// Reference to `zone` attribute.
  TfRef<String> get zone => TfRef.attribute<String>(this, 'zone');
}
