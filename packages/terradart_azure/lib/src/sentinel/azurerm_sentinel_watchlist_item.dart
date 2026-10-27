// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `azurerm_sentinel_watchlist_item`.
const Set<String> _azurermSentinelWatchlistItemSensitive = <String>{};

/// Factory wrapper for `azurerm_sentinel_watchlist_item`.
final class AzurermSentinelWatchlistItem extends Resource {
  static const String tfType = 'azurerm_sentinel_watchlist_item';

  AzurermSentinelWatchlistItem(
    super.localName, {
    TfArg<String>? name,
    required TfArg<Map<String, String>> properties,
    required TfArg<String> watchlistId,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': ?name,
           'properties': properties,
           'watchlist_id': watchlistId,
         },
       );

  @override
  Set<String> get sensitiveFields => _azurermSentinelWatchlistItemSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermSentinelWatchlistItem>`.
  RefTo<AzurermSentinelWatchlistItem> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `properties` attribute.
  TfRef<Map<String, String>> get properties =>
      TfRef.attribute<Map<String, String>>(this, 'properties');

  /// Reference to `watchlist_id` attribute.
  TfRef<String> get watchlistId =>
      TfRef.attribute<String>(this, 'watchlist_id');
}
