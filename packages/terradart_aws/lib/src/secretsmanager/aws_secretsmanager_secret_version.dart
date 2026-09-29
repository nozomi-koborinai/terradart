// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
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
    TfArg<String> secretBinary,
  ) = SecretsmanagerSecretVersionSecretBinary;

  /// Sets `secret_string`.
  const factory SecretsmanagerSecretVersionSecret.secretString(
    TfArg<String> secretString,
  ) = SecretsmanagerSecretVersionSecretString;

  /// Sets `secret_string_wo`.
  const factory SecretsmanagerSecretVersionSecret.secretStringWo(
    TfArg<String> secretStringWo,
  ) = SecretsmanagerSecretVersionSecretStringWo;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();

  /// The resource arguments behind [encode], as the caller's
  /// [TfArg]s.
  Map<String, TfArg<Object?>> get argMap;
}

/// The [SecretsmanagerSecretVersionSecret.secretBinary] choice: sets `secret_binary`.
final class SecretsmanagerSecretVersionSecretBinary
    extends SecretsmanagerSecretVersionSecret {
  const SecretsmanagerSecretVersionSecretBinary(this.secretBinary);

  final TfArg<String> secretBinary;

  @override
  String get blockKey => 'secret_binary';

  @override
  Map<String, Object?> encode() => {'secret_binary': secretBinary.toTfJson()};

  @override
  Map<String, TfArg<Object?>> get argMap => {'secret_binary': secretBinary};
}

/// The [SecretsmanagerSecretVersionSecret.secretString] choice: sets `secret_string`.
final class SecretsmanagerSecretVersionSecretString
    extends SecretsmanagerSecretVersionSecret {
  const SecretsmanagerSecretVersionSecretString(this.secretString);

  final TfArg<String> secretString;

  @override
  String get blockKey => 'secret_string';

  @override
  Map<String, Object?> encode() => {'secret_string': secretString.toTfJson()};

  @override
  Map<String, TfArg<Object?>> get argMap => {'secret_string': secretString};
}

/// The [SecretsmanagerSecretVersionSecret.secretStringWo] choice: sets `secret_string_wo`.
final class SecretsmanagerSecretVersionSecretStringWo
    extends SecretsmanagerSecretVersionSecret {
  const SecretsmanagerSecretVersionSecretStringWo(this.secretStringWo);

  final TfArg<String> secretStringWo;

  @override
  String get blockKey => 'secret_string_wo';

  @override
  Map<String, Object?> encode() => {
    'secret_string_wo': secretStringWo.toTfJson(),
  };

  @override
  Map<String, TfArg<Object?>> get argMap => {
    'secret_string_wo': secretStringWo,
  };
}

/// Factory wrapper for `aws_secretsmanager_secret_version`.
final class AwsSecretsmanagerSecretVersion extends Resource {
  static const String tfType = 'aws_secretsmanager_secret_version';

  AwsSecretsmanagerSecretVersion({
    required super.localName,
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
           if (region != null) 'region': region,
           ...?secret?.argMap,
           'secret_id': secretId,
           if (secretStringWoVersion != null)
             'secret_string_wo_version': secretStringWoVersion,
           if (versionStages != null) 'version_stages': versionStages,
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
}
