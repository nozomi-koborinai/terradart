// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../iam/aws_iam_role.dart' show AwsIamRole;

/// Sensitive field paths for `aws_iam_role_policy`.
const Set<String> _awsIamRolePolicySensitive = <String>{};

/// At most one of `name`, `name_prefix` on `aws_iam_role_policy`: the provider rejects
/// more than one, so each variant sets one of them and a
/// null choice sets none.
///
/// Pick one with a dot shorthand: `.name(...)`.
sealed class IamRolePolicyName {
  const IamRolePolicyName();

  /// Sets `name`.
  const factory IamRolePolicyName.name(TfArg<String> name) =
      IamRolePolicyNameChoice;

  /// Sets `name_prefix`.
  const factory IamRolePolicyName.namePrefix(TfArg<String> namePrefix) =
      IamRolePolicyNamePrefix;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();

  /// The resource arguments behind [encode], as the caller's
  /// [TfArg]s.
  Map<String, TfArg<Object?>> get argMap;
}

/// The [IamRolePolicyName.name] choice: sets `name`.
final class IamRolePolicyNameChoice extends IamRolePolicyName {
  const IamRolePolicyNameChoice(this.name);

  final TfArg<String> name;

  @override
  String get blockKey => 'name';

  @override
  Map<String, Object?> encode() => {'name': name.toTfJson()};

  @override
  Map<String, TfArg<Object?>> get argMap => {'name': name};
}

/// The [IamRolePolicyName.namePrefix] choice: sets `name_prefix`.
final class IamRolePolicyNamePrefix extends IamRolePolicyName {
  const IamRolePolicyNamePrefix(this.namePrefix);

  final TfArg<String> namePrefix;

  @override
  String get blockKey => 'name_prefix';

  @override
  Map<String, Object?> encode() => {'name_prefix': namePrefix.toTfJson()};

  @override
  Map<String, TfArg<Object?>> get argMap => {'name_prefix': namePrefix};
}

/// Factory wrapper for `aws_iam_role_policy`.
final class AwsIamRolePolicy extends Resource {
  static const String tfType = 'aws_iam_role_policy';

  AwsIamRolePolicy({
    required super.localName,
    IamRolePolicyName? name,
    required TfArg<String> policy,
    required RefTo<AwsIamRole> role,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           ...?name?.argMap,
           'policy': policy,
           'role': role.encodeAs('name'),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsIamRolePolicySensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsIamRolePolicy>`.
  RefTo<AwsIamRolePolicy> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `name_prefix` attribute.
  TfRef<String> get namePrefix => TfRef.attribute<String>(this, 'name_prefix');

  /// Reference to `policy` attribute.
  TfRef<String> get policy => TfRef.attribute<String>(this, 'policy');

  /// Reference to `role` attribute.
  TfRef<String> get role => TfRef.attribute<String>(this, 'role');
}
