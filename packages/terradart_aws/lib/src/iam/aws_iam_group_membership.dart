// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_iam_group_membership`.
const Set<String> _awsIamGroupMembershipSensitive = <String>{};

/// Factory wrapper for `aws_iam_group_membership`.
final class AwsIamGroupMembership extends Resource {
  static const String tfType = 'aws_iam_group_membership';

  AwsIamGroupMembership({
    required super.localName,
    required TfArg<String> group,
    required TfArg<String> name,
    required TfArg<List<String>> users,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {'group': group, 'name': name, 'users': users},
       );

  @override
  Set<String> get sensitiveFields => _awsIamGroupMembershipSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}
