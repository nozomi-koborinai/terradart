// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_organizations_organizational_unit_descendant_organizational_units`.
const Set<String>
_awsOrganizationsOrganizationalUnitDescendantOrganizationalUnitsSensitive =
    <String>{};

/// Factory wrapper for `aws_organizations_organizational_unit_descendant_organizational_units`.
final class DataAwsOrganizationsOrganizationalUnitDescendantOrganizationalUnits
    extends Data {
  static const String tfType =
      'aws_organizations_organizational_unit_descendant_organizational_units';

  DataAwsOrganizationsOrganizationalUnitDescendantOrganizationalUnits({
    required super.localName,
    required TfArg<String> parentId,
    super.provider,
    super.timeouts,
  }) : super(terraformType: tfType, argMap: {'parent_id': parentId});

  @override
  Set<String> get sensitiveFields =>
      _awsOrganizationsOrganizationalUnitDescendantOrganizationalUnitsSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `children` attribute.
  TfRef<List<Map<String, Object?>>> get children =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'children');
}
