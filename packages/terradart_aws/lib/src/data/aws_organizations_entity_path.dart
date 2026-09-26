// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_organizations_entity_path`.
const Set<String> _awsOrganizationsEntityPathSensitive = <String>{};

/// Factory wrapper for `aws_organizations_entity_path`.
final class DataAwsOrganizationsEntityPath extends Data {
  static const String tfType = 'aws_organizations_entity_path';

  DataAwsOrganizationsEntityPath({
    required super.localName,
    required TfArg<String> entityId,
    super.provider,
    super.timeouts,
  }) : super(terraformType: tfType, argMap: {'entity_id': entityId});

  @override
  Set<String> get sensitiveFields => _awsOrganizationsEntityPathSensitive;

  /// Reference to `entity_path` attribute.
  TfRef<String> get entityPath => TfRef.attribute<String>(this, 'entity_path');
}
