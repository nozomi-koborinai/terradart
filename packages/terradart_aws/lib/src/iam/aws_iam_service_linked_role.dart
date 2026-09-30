// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_iam_service_linked_role`.
const Set<String> _awsIamServiceLinkedRoleSensitive = <String>{};

/// Factory wrapper for `aws_iam_service_linked_role`.
final class AwsIamServiceLinkedRole extends Resource {
  static const String tfType = 'aws_iam_service_linked_role';

  AwsIamServiceLinkedRole({
    required super.localName,
    required TfArg<String> awsServiceName,
    TfArg<String>? customSuffix,
    TfArg<String>? description,
    TfArg<Map<String, String>>? tags,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'aws_service_name': awsServiceName,
           'custom_suffix': ?customSuffix,
           'description': ?description,
           'tags': ?tags,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsIamServiceLinkedRoleSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsIamServiceLinkedRole>`.
  RefTo<AwsIamServiceLinkedRole> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `create_date` attribute.
  TfRef<String> get createDate => TfRef.attribute<String>(this, 'create_date');

  /// Reference to `path` attribute.
  TfRef<String> get path => TfRef.attribute<String>(this, 'path');

  /// Reference to `unique_id` attribute.
  TfRef<String> get uniqueId => TfRef.attribute<String>(this, 'unique_id');

  /// Reference to `aws_service_name` attribute.
  TfRef<String> get awsServiceNameRef =>
      TfRef.attribute<String>(this, 'aws_service_name');

  /// Reference to `custom_suffix` attribute.
  TfRef<String> get customSuffixRef =>
      TfRef.attribute<String>(this, 'custom_suffix');

  /// Reference to `description` attribute.
  TfRef<String> get descriptionRef =>
      TfRef.attribute<String>(this, 'description');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tagsRef =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}
