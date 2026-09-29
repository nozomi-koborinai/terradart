// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_iam_instance_profile`.
const Set<String> _awsIamInstanceProfileSensitive = <String>{};

/// At most one of `name`, `name_prefix` on `aws_iam_instance_profile`: the provider rejects
/// more than one, so each variant sets one of them and a
/// null choice sets none.
sealed class IamInstanceProfileNameOrNamePrefix {
  const IamInstanceProfileNameOrNamePrefix();

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();

  /// The resource arguments behind [encode], as the caller's
  /// [TfArg]s.
  Map<String, TfArg<Object?>> get argMap;
}

/// Sets `name` (one of the [IamInstanceProfileNameOrNamePrefix] choices).
final class IamInstanceProfileNameOption
    extends IamInstanceProfileNameOrNamePrefix {
  const IamInstanceProfileNameOption({required this.name});

  final TfArg<String> name;

  @override
  String get blockKey => 'name';

  @override
  Map<String, Object?> encode() => {'name': name.toTfJson()};

  @override
  Map<String, TfArg<Object?>> get argMap => {'name': name};
}

/// Sets `name_prefix` (one of the [IamInstanceProfileNameOrNamePrefix] choices).
final class IamInstanceProfileNamePrefixOption
    extends IamInstanceProfileNameOrNamePrefix {
  const IamInstanceProfileNamePrefixOption({required this.namePrefix});

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

  AwsIamInstanceProfile({
    required super.localName,
    IamInstanceProfileNameOrNamePrefix? nameOrNamePrefix,
    TfArg<String>? path,
    TfArg<String>? role,
    TfArg<Map<String, String>>? tags,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           ...?nameOrNamePrefix?.argMap,
           if (path != null) 'path': path,
           if (role != null) 'role': role,
           if (tags != null) 'tags': tags,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsIamInstanceProfileSensitive;

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
