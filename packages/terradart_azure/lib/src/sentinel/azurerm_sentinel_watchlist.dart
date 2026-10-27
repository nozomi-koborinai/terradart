// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `azurerm_sentinel_watchlist`.
const Set<String> _azurermSentinelWatchlistSensitive = <String>{};

/// Factory wrapper for `azurerm_sentinel_watchlist`.
final class AzurermSentinelWatchlist extends Resource {
  static const String tfType = 'azurerm_sentinel_watchlist';

  AzurermSentinelWatchlist(
    super.localName, {
    TfArg<String>? defaultDuration,
    TfArg<String>? description,
    required TfArg<String> displayName,
    required TfArg<String> itemSearchKey,
    TfArg<List<String>>? labels,
    required TfArg<String> logAnalyticsWorkspaceId,
    required TfArg<String> name,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'default_duration': ?defaultDuration,
           'description': ?description,
           'display_name': displayName,
           'item_search_key': itemSearchKey,
           'labels': ?labels,
           'log_analytics_workspace_id': logAnalyticsWorkspaceId,
           'name': name,
         },
       );

  @override
  Set<String> get sensitiveFields => _azurermSentinelWatchlistSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermSentinelWatchlist>`.
  RefTo<AzurermSentinelWatchlist> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `default_duration` attribute.
  TfRef<String> get defaultDuration =>
      TfRef.attribute<String>(this, 'default_duration');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `display_name` attribute.
  TfRef<String> get displayName =>
      TfRef.attribute<String>(this, 'display_name');

  /// Reference to `item_search_key` attribute.
  TfRef<String> get itemSearchKey =>
      TfRef.attribute<String>(this, 'item_search_key');

  /// Reference to `labels` attribute.
  TfRef<List<String>> get labels =>
      TfRef.attribute<List<String>>(this, 'labels');

  /// Reference to `log_analytics_workspace_id` attribute.
  TfRef<String> get logAnalyticsWorkspaceId =>
      TfRef.attribute<String>(this, 'log_analytics_workspace_id');
}
