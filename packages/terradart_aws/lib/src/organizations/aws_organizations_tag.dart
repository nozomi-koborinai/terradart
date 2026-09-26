// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_organizations_tag`.
const Set<String> _awsOrganizationsTagSensitive = <String>{};

/// Factory wrapper for `aws_organizations_tag`.
final class AwsOrganizationsTag extends Resource {
  static const String tfType = 'aws_organizations_tag';

  AwsOrganizationsTag({
    required super.localName,
    required TfArg<String> key,
    required TfArg<String> resourceId,
    required TfArg<String> value,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {'key': key, 'resource_id': resourceId, 'value': value},
       );

  @override
  Set<String> get sensitiveFields => _awsOrganizationsTagSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}
