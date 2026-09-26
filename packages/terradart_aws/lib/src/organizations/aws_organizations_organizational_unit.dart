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
         argMap: {
           'name': name,
           'parent_id': parentId,
           if (tags != null) 'tags': tags,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _awsOrganizationsOrganizationalUnitSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `accounts` attribute.
  TfRef<List<Map<String, Object?>>> get accounts =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'accounts');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');
}
