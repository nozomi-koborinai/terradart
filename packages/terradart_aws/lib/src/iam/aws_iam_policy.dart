// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_iam_policy`.
const Set<String> _awsIamPolicySensitive = <String>{};

/// At most one of `name`, `name_prefix` on `aws_iam_policy`: the provider rejects
/// more than one, so each variant sets one of them and a
/// null choice sets none.
sealed class IamPolicyNameOrNamePrefix {
  const IamPolicyNameOrNamePrefix();

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();

  /// The resource arguments behind [encode], as the caller's
  /// [TfArg]s.
  Map<String, TfArg<Object?>> get argMap;
}

/// Sets `name` (one of the [IamPolicyNameOrNamePrefix] choices).
final class IamPolicyNameOption extends IamPolicyNameOrNamePrefix {
  const IamPolicyNameOption({required this.name});

  final TfArg<String> name;

  @override
  String get blockKey => 'name';

  @override
  Map<String, Object?> encode() => {'name': name.toTfJson()};

  @override
  Map<String, TfArg<Object?>> get argMap => {'name': name};
}

/// Sets `name_prefix` (one of the [IamPolicyNameOrNamePrefix] choices).
final class IamPolicyNamePrefixOption extends IamPolicyNameOrNamePrefix {
  const IamPolicyNamePrefixOption({required this.namePrefix});

  final TfArg<String> namePrefix;

  @override
  String get blockKey => 'name_prefix';

  @override
  Map<String, Object?> encode() => {'name_prefix': namePrefix.toTfJson()};

  @override
  Map<String, TfArg<Object?>> get argMap => {'name_prefix': namePrefix};
}

/// Factory wrapper for `aws_iam_policy`.
final class AwsIamPolicy extends Resource {
  static const String tfType = 'aws_iam_policy';

  AwsIamPolicy({
    required super.localName,
    TfArg<num>? delayAfterPolicyCreationInMs,
    TfArg<String>? description,
    IamPolicyNameOrNamePrefix? nameOrNamePrefix,
    TfArg<String>? path,
    required TfArg<String> policy,
    TfArg<Map<String, String>>? tags,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (delayAfterPolicyCreationInMs != null)
             'delay_after_policy_creation_in_ms': delayAfterPolicyCreationInMs,
           if (description != null) 'description': description,
           ...?nameOrNamePrefix?.argMap,
           if (path != null) 'path': path,
           'policy': policy,
           if (tags != null) 'tags': tags,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsIamPolicySensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `attachment_count` attribute.
  TfRef<num> get attachmentCount =>
      TfRef.attribute<num>(this, 'attachment_count');

  /// Reference to `policy_id` attribute.
  TfRef<String> get policyId => TfRef.attribute<String>(this, 'policy_id');
}
