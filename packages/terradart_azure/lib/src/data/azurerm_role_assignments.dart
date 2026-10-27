// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `azurerm_role_assignments`.
const Set<String> _azurermRoleAssignmentsSensitive = <String>{};

/// Factory wrapper for `azurerm_role_assignments`.
final class DataAzurermRoleAssignments extends Data {
  static const String tfType = 'azurerm_role_assignments';

  DataAzurermRoleAssignments(
    super.localName, {
    TfArg<bool>? limitAtScope,
    TfArg<String>? principalId,
    required TfArg<String> scope,
    TfArg<String>? tenantId,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'limit_at_scope': ?limitAtScope,
           'principal_id': ?principalId,
           'scope': scope,
           'tenant_id': ?tenantId,
         },
       );

  @override
  Set<String> get sensitiveFields => _azurermRoleAssignmentsSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `role_assignments` attribute.
  TfRef<List<Map<String, Object?>>> get roleAssignments =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'role_assignments');

  /// Reference to `limit_at_scope` attribute.
  TfRef<bool> get limitAtScope => TfRef.attribute<bool>(this, 'limit_at_scope');

  /// Reference to `principal_id` attribute.
  TfRef<String> get principalId =>
      TfRef.attribute<String>(this, 'principal_id');

  /// Reference to `scope` attribute.
  TfRef<String> get scope => TfRef.attribute<String>(this, 'scope');

  /// Reference to `tenant_id` attribute.
  TfRef<String> get tenantId => TfRef.attribute<String>(this, 'tenant_id');
}
