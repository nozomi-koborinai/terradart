// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `azurerm_subscriptions`.
const Set<String> _azurermSubscriptionsSensitive = <String>{};

/// Factory wrapper for `azurerm_subscriptions`.
final class DataAzurermSubscriptions extends Data {
  static const String tfType = 'azurerm_subscriptions';

  DataAzurermSubscriptions(
    super.localName, {
    TfArg<String>? displayNameContains,
    TfArg<String>? displayNamePrefix,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'display_name_contains': ?displayNameContains,
           'display_name_prefix': ?displayNamePrefix,
         },
       );

  @override
  Set<String> get sensitiveFields => _azurermSubscriptionsSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `subscriptions` attribute.
  TfRef<List<Map<String, Object?>>> get subscriptions =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'subscriptions');

  /// Reference to `display_name_contains` attribute.
  TfRef<String> get displayNameContains =>
      TfRef.attribute<String>(this, 'display_name_contains');

  /// Reference to `display_name_prefix` attribute.
  TfRef<String> get displayNamePrefix =>
      TfRef.attribute<String>(this, 'display_name_prefix');
}
