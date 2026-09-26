// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_organizations_policy`.
const Set<String> _awsOrganizationsPolicySensitive = <String>{};

/// Factory wrapper for `aws_organizations_policy`.
final class AwsOrganizationsPolicy extends Resource {
  static const String tfType = 'aws_organizations_policy';

  AwsOrganizationsPolicy({
    required super.localName,
    required TfArg<String> content,
    TfArg<String>? description,
    required TfArg<String> name,
    TfArg<bool>? skipDestroy,
    TfArg<Map<String, String>>? tags,
    TfArg<String>? type,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'content': content,
           if (description != null) 'description': description,
           'name': name,
           if (skipDestroy != null) 'skip_destroy': skipDestroy,
           if (tags != null) 'tags': tags,
           if (type != null) 'type': type,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsOrganizationsPolicySensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');
}
