// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_vmwareengine_upgrades`.
const Set<String> _googleVmwareengineUpgradesSensitive = <String>{};

/// Factory wrapper for `google_vmwareengine_upgrades`.
///
/// Read-only data source on the apply-excluded leftover path
/// (synth + `terraform validate` only). Do not apply.
final class DataGoogleVmwareengineUpgrades extends Data {
  static const String tfType = 'google_vmwareengine_upgrades';

  DataGoogleVmwareengineUpgrades({
    required super.localName,
    TfArg<String>? name,
    required TfArg<String> parent,
  }) : super(
         terraformType: tfType,
         argMap: {if (name != null) 'name': name, 'parent': parent},
       );

  @override
  Set<String> get sensitiveFields => _googleVmwareengineUpgradesSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `upgrades` attribute.
  TfRef<List<Map<String, Object?>>> get upgrades =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'upgrades');
}
