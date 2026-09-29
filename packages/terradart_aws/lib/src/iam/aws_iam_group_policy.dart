// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_iam_group_policy`.
const Set<String> _awsIamGroupPolicySensitive = <String>{};

/// At most one of `name`, `name_prefix` on `aws_iam_group_policy`: the provider rejects
/// more than one, so each variant sets one of them and a
/// null choice sets none.
sealed class IamGroupPolicyNameOrNamePrefix {
  const IamGroupPolicyNameOrNamePrefix();

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();

  /// The resource arguments behind [encode], as the caller's
  /// [TfArg]s.
  Map<String, TfArg<Object?>> get argMap;
}

/// Sets `name` (one of the [IamGroupPolicyNameOrNamePrefix] choices).
final class IamGroupPolicyNameOption extends IamGroupPolicyNameOrNamePrefix {
  const IamGroupPolicyNameOption({required this.name});

  final TfArg<String> name;

  @override
  String get blockKey => 'name';

  @override
  Map<String, Object?> encode() => {'name': name.toTfJson()};

  @override
  Map<String, TfArg<Object?>> get argMap => {'name': name};
}

/// Sets `name_prefix` (one of the [IamGroupPolicyNameOrNamePrefix] choices).
final class IamGroupPolicyNamePrefixOption
    extends IamGroupPolicyNameOrNamePrefix {
  const IamGroupPolicyNamePrefixOption({required this.namePrefix});

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
    IamGroupPolicyNameOrNamePrefix? nameOrNamePrefix,
    required TfArg<String> policy,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'group': group,
           ...?nameOrNamePrefix?.argMap,
           'policy': policy,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsIamGroupPolicySensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}
