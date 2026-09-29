// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_iam_role_policy`.
const Set<String> _awsIamRolePolicySensitive = <String>{};

/// At most one of `name`, `name_prefix` on `aws_iam_role_policy`: the provider rejects
/// more than one, so each variant sets one of them and a
/// null choice sets none.
///
/// Pick one with a dot shorthand: `.name(...)`.
sealed class IamRolePolicyNameOrNamePrefix {
  const IamRolePolicyNameOrNamePrefix();

  /// Sets `name`.
  const factory IamRolePolicyNameOrNamePrefix.name(TfArg<String> name) =
      IamRolePolicyNameOrNamePrefixName;

  /// Sets `name_prefix`.
  const factory IamRolePolicyNameOrNamePrefix.namePrefix(
    TfArg<String> namePrefix,
  ) = IamRolePolicyNameOrNamePrefixNamePrefix;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();

  /// The resource arguments behind [encode], as the caller's
  /// [TfArg]s.
  Map<String, TfArg<Object?>> get argMap;
}

/// The [IamRolePolicyNameOrNamePrefix.name] choice: sets `name`.
final class IamRolePolicyNameOrNamePrefixName
    extends IamRolePolicyNameOrNamePrefix {
  const IamRolePolicyNameOrNamePrefixName(this.name);

  final TfArg<String> name;

  @override
  String get blockKey => 'name';

  @override
  Map<String, Object?> encode() => {'name': name.toTfJson()};

  @override
  Map<String, TfArg<Object?>> get argMap => {'name': name};
}

/// The [IamRolePolicyNameOrNamePrefix.namePrefix] choice: sets `name_prefix`.
final class IamRolePolicyNameOrNamePrefixNamePrefix
    extends IamRolePolicyNameOrNamePrefix {
  const IamRolePolicyNameOrNamePrefixNamePrefix(this.namePrefix);

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
    IamRolePolicyNameOrNamePrefix? nameOrNamePrefix,
    required TfArg<String> policy,
    required TfArg<String> role,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {...?nameOrNamePrefix?.argMap, 'policy': policy, 'role': role},
       );

  @override
  Set<String> get sensitiveFields => _awsIamRolePolicySensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}
