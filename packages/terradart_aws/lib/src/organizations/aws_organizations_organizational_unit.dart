// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_organizations_organizational_unit`.
const Set<String> _awsOrganizationsOrganizationalUnitSensitive = <String>{};

/// Factory wrapper for `aws_organizations_organizational_unit`.
final class AwsOrganizationsOrganizationalUnit extends Resource {
  static const String tfType = 'aws_organizations_organizational_unit';

  AwsOrganizationsOrganizationalUnit({
    required super.localName,
    required TfArg<String> name,
    required TfArg<String> parentId,
    TfArg<Map<String, String>>? tags,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {'name': name, 'parent_id': parentId, 'tags': ?tags},
       );

  @override
  Set<String> get sensitiveFields =>
      _awsOrganizationsOrganizationalUnitSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsOrganizationsOrganizationalUnit>`.
  RefTo<AwsOrganizationsOrganizationalUnit> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `accounts` attribute.
  TfRef<List<Map<String, Object?>>> get accounts =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'accounts');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `parent_id` attribute.
  TfRef<String> get parentId => TfRef.attribute<String>(this, 'parent_id');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}
