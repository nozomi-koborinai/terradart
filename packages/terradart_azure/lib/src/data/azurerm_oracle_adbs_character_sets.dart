// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `azurerm_oracle_adbs_character_sets`.
const Set<String> _azurermOracleAdbsCharacterSetsSensitive = <String>{};

/// Factory wrapper for `azurerm_oracle_adbs_character_sets`.
final class DataAzurermOracleAdbsCharacterSets extends Data {
  static const String tfType = 'azurerm_oracle_adbs_character_sets';

  DataAzurermOracleAdbsCharacterSets(
    super.localName, {
    required TfArg<String> location,
    super.provider,
    super.timeouts,
  }) : super(terraformType: tfType, argMap: {'location': location});

  @override
  Set<String> get sensitiveFields => _azurermOracleAdbsCharacterSetsSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `character_sets` attribute.
  TfRef<List<Map<String, Object?>>> get characterSets =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'character_sets');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');
}
