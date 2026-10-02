// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_secretsmanager_secret_version`.
const Set<String> _awsSecretsmanagerSecretVersionSensitive = <String>{
  'secret_binary',
  'secret_string',
  'secret_string_wo',
};

/// At most one of `secret_binary`, `secret_string`, `secret_string_wo` on `aws_secretsmanager_secret_version`: the provider rejects
/// more than one, so each variant sets one of them and a
/// null choice sets none.
///
/// Pick one with a dot shorthand: `.secretBinary(...)`.
sealed class SecretsmanagerSecretVersionSecret {
  const SecretsmanagerSecretVersionSecret();

  /// Sets `secret_binary`.
  const factory SecretsmanagerSecretVersionSecret.secretBinary(
    Sensitive<String> secretBinary,
  ) = SecretsmanagerSecretVersionSecretBinary;

  /// Sets `secret_string`.
  const factory SecretsmanagerSecretVersionSecret.secretString(
    Sensitive<String> secretString,
  ) = SecretsmanagerSecretVersionSecretString;

  /// Sets `secret_string_wo`.
  const factory SecretsmanagerSecretVersionSecret.secretStringWo(
    Sensitive<String> secretStringWo,
  ) = SecretsmanagerSecretVersionSecretStringWo;

  /// The Terraform argument this choice sets.
  @internal
  String get blockKey;

  @internal
  Map<String, Object?> encode();

  /// The resource arguments behind [encode], as the caller's
  /// [TfArg]s.
  @internal
  Map<String, TfArg<Object?>> get argMap;
}

/// The [SecretsmanagerSecretVersionSecret.secretBinary] choice: sets `secret_binary`.
final class SecretsmanagerSecretVersionSecretBinary
    extends SecretsmanagerSecretVersionSecret {
  const SecretsmanagerSecretVersionSecretBinary(this.secretBinary);

  final Sensitive<String> secretBinary;

  @internal
  @override
  String get blockKey => 'secret_binary';

  @internal
  @override
  Map<String, Object?> encode() => {'secret_binary': secretBinary.toTfJson()};

  @internal
  @override
  Map<String, TfArg<Object?>> get argMap => {'secret_binary': secretBinary};
}

/// The [SecretsmanagerSecretVersionSecret.secretString] choice: sets `secret_string`.
final class SecretsmanagerSecretVersionSecretString
    extends SecretsmanagerSecretVersionSecret {
  const SecretsmanagerSecretVersionSecretString(this.secretString);

  final Sensitive<String> secretString;

  @internal
  @override
  String get blockKey => 'secret_string';

  @internal
  @override
  Map<String, Object?> encode() => {'secret_string': secretString.toTfJson()};

  @internal
  @override
  Map<String, TfArg<Object?>> get argMap => {'secret_string': secretString};
}

/// The [SecretsmanagerSecretVersionSecret.secretStringWo] choice: sets `secret_string_wo`.
final class SecretsmanagerSecretVersionSecretStringWo
    extends SecretsmanagerSecretVersionSecret {
  const SecretsmanagerSecretVersionSecretStringWo(this.secretStringWo);

  final Sensitive<String> secretStringWo;

  @internal
  @override
  String get blockKey => 'secret_string_wo';

  @internal
  @override
  Map<String, Object?> encode() => {
    'secret_string_wo': secretStringWo.toTfJson(),
  };

  @internal
  @override
  Map<String, TfArg<Object?>> get argMap => {
    'secret_string_wo': secretStringWo,
  };
}

/// Factory wrapper for `aws_secretsmanager_secret_version`.
final class AwsSecretsmanagerSecretVersion extends Resource {
  static const String tfType = 'aws_secretsmanager_secret_version';

  AwsSecretsmanagerSecretVersion(
    super.localName, {
    TfArg<String>? region,
    SecretsmanagerSecretVersionSecret? secret,
    required TfArg<String> secretId,
    TfArg<num>? secretStringWoVersion,
    TfArg<List<String>>? versionStages,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'region': ?region,
           ...?secret?.argMap,
           'secret_id': secretId,
           'secret_string_wo_version': ?secretStringWoVersion,
           'version_stages': ?versionStages,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsSecretsmanagerSecretVersionSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsSecretsmanagerSecretVersion>`.
  RefTo<AwsSecretsmanagerSecretVersion> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `has_secret_string_wo` attribute.
  TfRef<bool> get hasSecretStringWo =>
      TfRef.attribute<bool>(this, 'has_secret_string_wo');

  /// Reference to `secret_arn` attribute.
  TfRef<String> get secretArn => TfRef.attribute<String>(this, 'secret_arn');

  /// Reference to `version_id` attribute.
  TfRef<String> get versionId => TfRef.attribute<String>(this, 'version_id');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `secret_binary` attribute.
  TfRef<String> get secretBinary =>
      TfRef.attribute<String>(this, 'secret_binary');

  /// Reference to `secret_id` attribute.
  TfRef<String> get secretId => TfRef.attribute<String>(this, 'secret_id');

  /// Reference to `secret_string` attribute.
  TfRef<String> get secretString =>
      TfRef.attribute<String>(this, 'secret_string');

  /// Reference to `secret_string_wo_version` attribute.
  TfRef<num> get secretStringWoVersion =>
      TfRef.attribute<num>(this, 'secret_string_wo_version');

  /// Reference to `version_stages` attribute.
  TfRef<List<String>> get versionStages =>
      TfRef.attribute<List<String>>(this, 'version_stages');
}
