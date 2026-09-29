// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_iam_role`.
const Set<String> _awsIamRoleSensitive = <String>{};

/// At most one of `name`, `name_prefix` on `aws_iam_role`: the provider rejects
/// more than one, so each variant sets one of them and a
/// null choice sets none.
///
/// Pick one with a dot shorthand: `.name(...)`.
sealed class IamRoleName {
  const IamRoleName();

  /// Sets `name`.
  const factory IamRoleName.name(TfArg<String> name) = IamRoleNameName;

  /// Sets `name_prefix`.
  const factory IamRoleName.namePrefix(TfArg<String> namePrefix) =
      IamRoleNameNamePrefix;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();

  /// The resource arguments behind [encode], as the caller's
  /// [TfArg]s.
  Map<String, TfArg<Object?>> get argMap;
}

/// The [IamRoleName.name] choice: sets `name`.
final class IamRoleNameName extends IamRoleName {
  const IamRoleNameName(this.name);

  final TfArg<String> name;

  @override
  String get blockKey => 'name';

  @override
  Map<String, Object?> encode() => {'name': name.toTfJson()};

  @override
  Map<String, TfArg<Object?>> get argMap => {'name': name};
}

/// The [IamRoleName.namePrefix] choice: sets `name_prefix`.
final class IamRoleNameNamePrefix extends IamRoleName {
  const IamRoleNameNamePrefix(this.namePrefix);

  final TfArg<String> namePrefix;

  @override
  String get blockKey => 'name_prefix';

  @override
  Map<String, Object?> encode() => {'name_prefix': namePrefix.toTfJson()};

  @override
  Map<String, TfArg<Object?>> get argMap => {'name_prefix': namePrefix};
}

/// Typed helper for the `inline_policy` block of
/// `aws_iam_role` (derived from provider schema).
@immutable
final class IamRoleInlinePolicy {
  const IamRoleInlinePolicy({this.name, this.policy});

  final TfArg<String>? name;

  final TfArg<String>? policy;

  Map<String, Object?> encode() => {
    'name': ?name?.toTfJson(),
    'policy': ?policy?.toTfJson(),
  };
}

/// Factory wrapper for `aws_iam_role`.
///
/// AWS **IAM role** — the identity a Lambda function, ECS task, or other
/// AWS service assumes at runtime.
///
/// `assumeRolePolicy` is the trust policy JSON. Build it with a
/// [DataAwsIamPolicyDocument] and pass `TfArg.ref(doc.json)`, so the
/// statements are typed Dart rather than a hand-written JSON string.
/// Attach managed policies with [AwsIamRolePolicyAttachment].
final class AwsIamRole extends Resource {
  static const String tfType = 'aws_iam_role';

  AwsIamRole({
    required super.localName,
    required TfArg<String> assumeRolePolicy,
    TfArg<String>? description,
    TfArg<bool>? forceDetachPolicies,
    TfArg<List<String>>? managedPolicyArns,
    TfArg<num>? maxSessionDuration,
    IamRoleName? name,
    TfArg<String>? path,
    TfArg<String>? permissionsBoundary,
    TfArg<Map<String, String>>? tags,
    List<IamRoleInlinePolicy>? inlinePolicy,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'assume_role_policy': assumeRolePolicy,
           'description': ?description,
           'force_detach_policies': ?forceDetachPolicies,
           'managed_policy_arns': ?managedPolicyArns,
           'max_session_duration': ?maxSessionDuration,
           ...?name?.argMap,
           'path': ?path,
           'permissions_boundary': ?permissionsBoundary,
           'tags': ?tags,
           if (inlinePolicy != null)
             'inline_policy': TfArg.literal([
               for (final e in inlinePolicy) e.encode(),
             ]),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsIamRoleSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsIamRole>`.
  RefTo<AwsIamRole> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `create_date` attribute.
  TfRef<String> get createDate => TfRef.attribute<String>(this, 'create_date');

  /// Reference to `unique_id` attribute.
  TfRef<String> get uniqueId => TfRef.attribute<String>(this, 'unique_id');
}
