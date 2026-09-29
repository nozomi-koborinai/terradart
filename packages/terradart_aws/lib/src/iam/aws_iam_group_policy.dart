// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_iam_group_policy`.
const Set<String> _awsIamGroupPolicySensitive = <String>{};

/// At most one of `name`, `name_prefix` on `aws_iam_group_policy`: the provider rejects
/// more than one, so each variant sets one of them and a
/// null choice sets none.
///
/// Pick one with a dot shorthand: `.name(...)`.
sealed class IamGroupPolicyName {
  const IamGroupPolicyName();

  /// Sets `name`.
  const factory IamGroupPolicyName.name(TfArg<String> name) =
      IamGroupPolicyNameChoice;

  /// Sets `name_prefix`.
  const factory IamGroupPolicyName.namePrefix(TfArg<String> namePrefix) =
      IamGroupPolicyNamePrefix;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();

  /// The resource arguments behind [encode], as the caller's
  /// [TfArg]s.
  Map<String, TfArg<Object?>> get argMap;
}

/// The [IamGroupPolicyName.name] choice: sets `name`.
final class IamGroupPolicyNameChoice extends IamGroupPolicyName {
  const IamGroupPolicyNameChoice(this.name);

  final TfArg<String> name;

  @override
  String get blockKey => 'name';

  @override
  Map<String, Object?> encode() => {'name': name.toTfJson()};

  @override
  Map<String, TfArg<Object?>> get argMap => {'name': name};
}

/// The [IamGroupPolicyName.namePrefix] choice: sets `name_prefix`.
final class IamGroupPolicyNamePrefix extends IamGroupPolicyName {
  const IamGroupPolicyNamePrefix(this.namePrefix);

  final TfArg<String> namePrefix;

  @override
  String get blockKey => 'name_prefix';

  @override
  Map<String, Object?> encode() => {'name_prefix': namePrefix.toTfJson()};

  @override
  Map<String, TfArg<Object?>> get argMap => {'name_prefix': namePrefix};
}

/// Factory wrapper for `aws_iam_group_policy`.
final class AwsIamGroupPolicy extends Resource {
  static const String tfType = 'aws_iam_group_policy';

  AwsIamGroupPolicy({
    required super.localName,
    required TfArg<String> group,
    IamGroupPolicyName? name,
    required TfArg<String> policy,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {'group': group, ...?name?.argMap, 'policy': policy},
       );

  @override
  Set<String> get sensitiveFields => _awsIamGroupPolicySensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsIamGroupPolicy>`.
  RefTo<AwsIamGroupPolicy> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}
