// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_organizations_resource_policy`.
const Set<String> _awsOrganizationsResourcePolicySensitive = <String>{};

/// Factory wrapper for `aws_organizations_resource_policy`.
final class AwsOrganizationsResourcePolicy extends Resource {
  static const String tfType = 'aws_organizations_resource_policy';

  AwsOrganizationsResourcePolicy(
    super.localName, {
    required TfArg<String> content,
    TfArg<Map<String, String>>? tags,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {'content': content, 'tags': ?tags},
       );

  @override
  Set<String> get sensitiveFields => _awsOrganizationsResourcePolicySensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsOrganizationsResourcePolicy>`.
  RefTo<AwsOrganizationsResourcePolicy> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `content` attribute.
  TfRef<String> get content => TfRef.attribute<String>(this, 'content');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}
