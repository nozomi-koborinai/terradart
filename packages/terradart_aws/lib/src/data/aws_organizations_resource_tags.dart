// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_organizations_resource_tags`.
const Set<String> _awsOrganizationsResourceTagsSensitive = <String>{};

/// Factory wrapper for `aws_organizations_resource_tags`.
final class DataAwsOrganizationsResourceTags extends Data {
  static const String tfType = 'aws_organizations_resource_tags';

  DataAwsOrganizationsResourceTags({
    required super.localName,
    required TfArg<String> resourceId,
    TfArg<Map<String, String>>? tags,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {'resource_id': resourceId, if (tags != null) 'tags': tags},
       );

  @override
  Set<String> get sensitiveFields => _awsOrganizationsResourceTagsSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}
