// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_organizations_organizational_unit_child_accounts`.
const Set<String> _awsOrganizationsOrganizationalUnitChildAccountsSensitive =
    <String>{};

/// Factory wrapper for `aws_organizations_organizational_unit_child_accounts`.
final class DataAwsOrganizationsOrganizationalUnitChildAccounts extends Data {
  static const String tfType =
      'aws_organizations_organizational_unit_child_accounts';

  DataAwsOrganizationsOrganizationalUnitChildAccounts({
    required super.localName,
    required TfArg<String> parentId,
    super.provider,
    super.timeouts,
  }) : super(terraformType: tfType, argMap: {'parent_id': parentId});

  @override
  Set<String> get sensitiveFields =>
      _awsOrganizationsOrganizationalUnitChildAccountsSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `accounts` attribute.
  TfRef<List<Map<String, Object?>>> get accounts =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'accounts');
}
