// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_finspace_kx_user`.
const Set<String> _awsFinspaceKxUserSensitive = <String>{};

/// Factory wrapper for `aws_finspace_kx_user`.
final class AwsFinspaceKxUser extends Resource {
  static const String tfType = 'aws_finspace_kx_user';

  AwsFinspaceKxUser(
    super.localName, {
    required TfArg<String> environmentId,
    required TfArg<String> iamRole,
    required TfArg<String> name,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'environment_id': environmentId,
           'iam_role': iamRole,
           'name': name,
           'region': ?region,
           'tags': ?tags,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsFinspaceKxUserSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsFinspaceKxUser>`.
  RefTo<AwsFinspaceKxUser> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `environment_id` attribute.
  TfRef<String> get environmentId =>
      TfRef.attribute<String>(this, 'environment_id');

  /// Reference to `iam_role` attribute.
  TfRef<String> get iamRole => TfRef.attribute<String>(this, 'iam_role');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}
