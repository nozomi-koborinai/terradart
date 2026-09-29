// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_iam_user_policy`.
const Set<String> _awsIamUserPolicySensitive = <String>{};

/// At most one of `name`, `name_prefix` on `aws_iam_user_policy`: the provider rejects
/// more than one, so each variant sets one of them and a
/// null choice sets none.
sealed class IamUserPolicyNameOrNamePrefix {
  const IamUserPolicyNameOrNamePrefix();

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();

  /// The resource arguments behind [encode], as the caller's
  /// [TfArg]s.
  Map<String, TfArg<Object?>> get argMap;
}

/// Sets `name` (one of the [IamUserPolicyNameOrNamePrefix] choices).
final class IamUserPolicyNameOption extends IamUserPolicyNameOrNamePrefix {
  const IamUserPolicyNameOption({required this.name});

  final TfArg<String> name;

  @override
  String get blockKey => 'name';

  @override
  Map<String, Object?> encode() => {'name': name.toTfJson()};

  @override
  Map<String, TfArg<Object?>> get argMap => {'name': name};
}

/// Sets `name_prefix` (one of the [IamUserPolicyNameOrNamePrefix] choices).
final class IamUserPolicyNamePrefixOption
    extends IamUserPolicyNameOrNamePrefix {
  const IamUserPolicyNamePrefixOption({required this.namePrefix});

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

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}
