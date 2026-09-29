// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_iam_user_policy`.
const Set<String> _awsIamUserPolicySensitive = <String>{};

/// At most one of `name`, `name_prefix` on `aws_iam_user_policy`: the provider rejects
/// more than one, so each variant sets one of them and a
/// null choice sets none.
///
/// Pick one with a dot shorthand: `.name(...)`.
sealed class IamUserPolicyNameOrNamePrefix {
  const IamUserPolicyNameOrNamePrefix();

  /// Sets `name`.
  const factory IamUserPolicyNameOrNamePrefix.name(TfArg<String> name) =
      IamUserPolicyNameOrNamePrefixName;

  /// Sets `name_prefix`.
  const factory IamUserPolicyNameOrNamePrefix.namePrefix(
    TfArg<String> namePrefix,
  ) = IamUserPolicyNameOrNamePrefixNamePrefix;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();

  /// The resource arguments behind [encode], as the caller's
  /// [TfArg]s.
  Map<String, TfArg<Object?>> get argMap;
}

/// The [IamUserPolicyNameOrNamePrefix.name] choice: sets `name`.
final class IamUserPolicyNameOrNamePrefixName
    extends IamUserPolicyNameOrNamePrefix {
  const IamUserPolicyNameOrNamePrefixName(this.name);

  final TfArg<String> name;

  @override
  String get blockKey => 'name';

  @override
  Map<String, Object?> encode() => {'name': name.toTfJson()};

  @override
  Map<String, TfArg<Object?>> get argMap => {'name': name};
}

/// The [IamUserPolicyNameOrNamePrefix.namePrefix] choice: sets `name_prefix`.
final class IamUserPolicyNameOrNamePrefixNamePrefix
    extends IamUserPolicyNameOrNamePrefix {
  const IamUserPolicyNameOrNamePrefixNamePrefix(this.namePrefix);

  final TfArg<String> namePrefix;

  @override
  String get blockKey => 'name_prefix';

  @override
  Map<String, Object?> encode() => {'name_prefix': namePrefix.toTfJson()};

  @override
  Map<String, TfArg<Object?>> get argMap => {'name_prefix': namePrefix};
}

/// Factory wrapper for `aws_iam_user_policy`.
final class AwsIamUserPolicy extends Resource {
  static const String tfType = 'aws_iam_user_policy';

  AwsIamUserPolicy({
    required super.localName,
    IamUserPolicyNameOrNamePrefix? nameOrNamePrefix,
    required TfArg<String> policy,
    required TfArg<String> user,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {...?nameOrNamePrefix?.argMap, 'policy': policy, 'user': user},
       );

  @override
  Set<String> get sensitiveFields => _awsIamUserPolicySensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsIamUserPolicy>`.
  RefTo<AwsIamUserPolicy> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}
