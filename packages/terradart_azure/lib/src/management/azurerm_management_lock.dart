// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `azurerm_management_lock`.
const Set<String> _azurermManagementLockSensitive = <String>{};

/// Factory wrapper for `azurerm_management_lock`.
final class AzurermManagementLock extends Resource {
  static const String tfType = 'azurerm_management_lock';

  AzurermManagementLock(
    super.localName, {
    required TfArg<String> lockLevel,
    required TfArg<String> name,
    TfArg<String>? notes,
    required TfArg<String> scope,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'lock_level': lockLevel,
           'name': name,
           'notes': ?notes,
           'scope': scope,
         },
       );

  @override
  Set<String> get sensitiveFields => _azurermManagementLockSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermManagementLock>`.
  RefTo<AzurermManagementLock> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `lock_level` attribute.
  TfRef<String> get lockLevel => TfRef.attribute<String>(this, 'lock_level');

  /// Reference to `notes` attribute.
  TfRef<String> get notes => TfRef.attribute<String>(this, 'notes');

  /// Reference to `scope` attribute.
  TfRef<String> get scope => TfRef.attribute<String>(this, 'scope');
}
