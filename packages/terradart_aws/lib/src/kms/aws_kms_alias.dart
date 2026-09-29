// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_kms_alias`.
const Set<String> _awsKmsAliasSensitive = <String>{};

/// At most one of `name`, `name_prefix` on `aws_kms_alias`: the provider rejects
/// more than one, so each variant sets one of them and a
/// null choice sets none.
///
/// Pick one with a dot shorthand: `.name(...)`.
sealed class KmsAliasName {
  const KmsAliasName();

  /// Sets `name`.
  const factory KmsAliasName.name(TfArg<String> name) = KmsAliasNameName;

  /// Sets `name_prefix`.
  const factory KmsAliasName.namePrefix(TfArg<String> namePrefix) =
      KmsAliasNameNamePrefix;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();

  /// The resource arguments behind [encode], as the caller's
  /// [TfArg]s.
  Map<String, TfArg<Object?>> get argMap;
}

/// The [KmsAliasName.name] choice: sets `name`.
final class KmsAliasNameName extends KmsAliasName {
  const KmsAliasNameName(this.name);

  final TfArg<String> name;

  @override
  String get blockKey => 'name';

  @override
  Map<String, Object?> encode() => {'name': name.toTfJson()};

  @override
  Map<String, TfArg<Object?>> get argMap => {'name': name};
}

/// The [KmsAliasName.namePrefix] choice: sets `name_prefix`.
final class KmsAliasNameNamePrefix extends KmsAliasName {
  const KmsAliasNameNamePrefix(this.namePrefix);

  final TfArg<String> namePrefix;

  @override
  String get blockKey => 'name_prefix';

  @override
  Map<String, Object?> encode() => {'name_prefix': namePrefix.toTfJson()};

  @override
  Map<String, TfArg<Object?>> get argMap => {'name_prefix': namePrefix};
}

/// Factory wrapper for `aws_kms_alias`.
final class AwsKmsAlias extends Resource {
  static const String tfType = 'aws_kms_alias';

  AwsKmsAlias({
    required super.localName,
    KmsAliasName? name,
    TfArg<String>? region,
    required TfArg<String> targetKeyId,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           ...?name?.argMap,
           if (region != null) 'region': region,
           'target_key_id': targetKeyId,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsKmsAliasSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `target_key_arn` attribute.
  TfRef<String> get targetKeyArn =>
      TfRef.attribute<String>(this, 'target_key_arn');
}
