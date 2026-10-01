// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../iam/aws_iam_role.dart' show AwsIamRole;

/// Sensitive field paths for `aws_iam_instance_profile`.
const Set<String> _awsIamInstanceProfileSensitive = <String>{};

/// At most one of `name`, `name_prefix` on `aws_iam_instance_profile`: the provider rejects
/// more than one, so each variant sets one of them and a
/// null choice sets none.
///
/// Pick one with a dot shorthand: `.name(...)`.
sealed class IamInstanceProfileName {
  const IamInstanceProfileName();

  /// Sets `name`.
  const factory IamInstanceProfileName.name(TfArg<String> name) =
      IamInstanceProfileNameChoice;

  /// Sets `name_prefix`.
  const factory IamInstanceProfileName.namePrefix(TfArg<String> namePrefix) =
      IamInstanceProfileNamePrefix;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();

  /// The resource arguments behind [encode], as the caller's
  /// [TfArg]s.
  Map<String, TfArg<Object?>> get argMap;
}

/// The [IamInstanceProfileName.name] choice: sets `name`.
final class IamInstanceProfileNameChoice extends IamInstanceProfileName {
  const IamInstanceProfileNameChoice(this.name);

  final TfArg<String> name;

  @override
  String get blockKey => 'name';

  @override
  Map<String, Object?> encode() => {'name': name.toTfJson()};

  @override
  Map<String, TfArg<Object?>> get argMap => {'name': name};
}

/// The [IamInstanceProfileName.namePrefix] choice: sets `name_prefix`.
final class IamInstanceProfileNamePrefix extends IamInstanceProfileName {
  const IamInstanceProfileNamePrefix(this.namePrefix);

  final TfArg<String> namePrefix;

  @override
  String get blockKey => 'name_prefix';

  @override
  Map<String, Object?> encode() => {'name_prefix': namePrefix.toTfJson()};

  @override
  Map<String, TfArg<Object?>> get argMap => {'name_prefix': namePrefix};
}

/// Factory wrapper for `aws_iam_instance_profile`.
final class AwsIamInstanceProfile extends Resource {
  static const String tfType = 'aws_iam_instance_profile';

  AwsIamInstanceProfile(
    super.localName, {
    IamInstanceProfileName? name,
    TfArg<String>? path,
    RefTo<AwsIamRole>? role,
    TfArg<Map<String, String>>? tags,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           ...?name?.argMap,
           'path': ?path,
           'role': ?role?.encodeAs('name'),
           'tags': ?tags,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsIamInstanceProfileSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsIamInstanceProfile>`.
  RefTo<AwsIamInstanceProfile> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `create_date` attribute.
  TfRef<String> get createDate => TfRef.attribute<String>(this, 'create_date');

  /// Reference to `unique_id` attribute.
  TfRef<String> get uniqueId => TfRef.attribute<String>(this, 'unique_id');

  /// Reference to `name_prefix` attribute.
  TfRef<String> get namePrefix => TfRef.attribute<String>(this, 'name_prefix');

  /// Reference to `path` attribute.
  TfRef<String> get path => TfRef.attribute<String>(this, 'path');

  /// Reference to `role` attribute.
  TfRef<String> get role => TfRef.attribute<String>(this, 'role');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}
