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
sealed class IamUserPolicyName {
  const IamUserPolicyName();

  /// Sets `name`.
  const factory IamUserPolicyName.name(TfArg<String> name) =
      IamUserPolicyNameChoice;

  /// Sets `name_prefix`.
  const factory IamUserPolicyName.namePrefix(TfArg<String> namePrefix) =
      IamUserPolicyNamePrefix;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();

  /// The resource arguments behind [encode], as the caller's
  /// [TfArg]s.
  Map<String, TfArg<Object?>> get argMap;
}

/// The [IamUserPolicyName.name] choice: sets `name`.
final class IamUserPolicyNameChoice extends IamUserPolicyName {
  const IamUserPolicyNameChoice(this.name);

  final TfArg<String> name;

  @override
  String get blockKey => 'name';

  @override
  Map<String, Object?> encode() => {'name': name.toTfJson()};

  @override
  Map<String, TfArg<Object?>> get argMap => {'name': name};
}

/// The [IamUserPolicyName.namePrefix] choice: sets `name_prefix`.
final class IamUserPolicyNamePrefix extends IamUserPolicyName {
  const IamUserPolicyNamePrefix(this.namePrefix);

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
    IamUserPolicyName? name,
    required TfArg<String> policy,
    required TfArg<String> user,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {...?name?.argMap, 'policy': policy, 'user': user},
       );

  @override
  Set<String> get sensitiveFields => _awsIamUserPolicySensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsIamUserPolicy>`.
  RefTo<AwsIamUserPolicy> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `name_prefix` attribute.
  TfRef<String> get namePrefix => TfRef.attribute<String>(this, 'name_prefix');

  /// Reference to `policy` attribute.
  TfRef<String> get policy => TfRef.attribute<String>(this, 'policy');

  /// Reference to `user` attribute.
  TfRef<String> get user => TfRef.attribute<String>(this, 'user');
}
