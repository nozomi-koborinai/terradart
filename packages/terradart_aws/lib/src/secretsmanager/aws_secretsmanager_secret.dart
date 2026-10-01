// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../kms/aws_kms_key.dart' show AwsKmsKey;

/// Sensitive field paths for `aws_secretsmanager_secret`.
const Set<String> _awsSecretsmanagerSecretSensitive = <String>{};

/// At most one of `name`, `name_prefix` on `aws_secretsmanager_secret`: the provider rejects
/// more than one, so each variant sets one of them and a
/// null choice sets none.
///
/// Pick one with a dot shorthand: `.name(...)`.
sealed class SecretsmanagerSecretName {
  const SecretsmanagerSecretName();

  /// Sets `name`.
  const factory SecretsmanagerSecretName.name(TfArg<String> name) =
      SecretsmanagerSecretNameChoice;

  /// Sets `name_prefix`.
  const factory SecretsmanagerSecretName.namePrefix(TfArg<String> namePrefix) =
      SecretsmanagerSecretNamePrefix;

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

/// The [SecretsmanagerSecretName.name] choice: sets `name`.
final class SecretsmanagerSecretNameChoice extends SecretsmanagerSecretName {
  const SecretsmanagerSecretNameChoice(this.name);

  final TfArg<String> name;

  @internal
  @override
  String get blockKey => 'name';

  @internal
  @override
  Map<String, Object?> encode() => {'name': name.toTfJson()};

  @internal
  @override
  Map<String, TfArg<Object?>> get argMap => {'name': name};
}

/// The [SecretsmanagerSecretName.namePrefix] choice: sets `name_prefix`.
final class SecretsmanagerSecretNamePrefix extends SecretsmanagerSecretName {
  const SecretsmanagerSecretNamePrefix(this.namePrefix);

  final TfArg<String> namePrefix;

  @internal
  @override
  String get blockKey => 'name_prefix';

  @internal
  @override
  Map<String, Object?> encode() => {'name_prefix': namePrefix.toTfJson()};

  @internal
  @override
  Map<String, TfArg<Object?>> get argMap => {'name_prefix': namePrefix};
}

/// Typed helper for the `replica` block of
/// `aws_secretsmanager_secret` (derived from provider schema).
@immutable
final class SecretsmanagerSecretReplica {
  const SecretsmanagerSecretReplica({this.kmsKeyId, required this.region});

  final RefTo<AwsKmsKey>? kmsKeyId;

  final TfArg<String> region;

  @internal
  Map<String, Object?> encode() => {
    'kms_key_id': ?kmsKeyId?.encodeAs('arn').toTfJson(),
    'region': region.toTfJson(),
  };
}

/// Factory wrapper for `aws_secretsmanager_secret`.
final class AwsSecretsmanagerSecret extends Resource {
  static const String tfType = 'aws_secretsmanager_secret';

  AwsSecretsmanagerSecret(
    super.localName, {
    TfArg<String>? description,
    TfArg<bool>? forceOverwriteReplicaSecret,
    RefTo<AwsKmsKey>? kmsKeyId,
    SecretsmanagerSecretName? name,
    TfArg<String>? policy,
    TfArg<num>? recoveryWindowInDays,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    TfArg<String>? type,
    List<SecretsmanagerSecretReplica>? replica,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'description': ?description,
           'force_overwrite_replica_secret': ?forceOverwriteReplicaSecret,
           'kms_key_id': ?kmsKeyId?.encodeAs('arn'),
           ...?name?.argMap,
           'policy': ?policy,
           'recovery_window_in_days': ?recoveryWindowInDays,
           'region': ?region,
           'tags': ?tags,
           'type': ?type,
           if (replica != null)
             'replica': TfArg.literal([for (final e in replica) e.encode()]),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsSecretsmanagerSecretSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsSecretsmanagerSecret>`.
  RefTo<AwsSecretsmanagerSecret> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `force_overwrite_replica_secret` attribute.
  TfRef<bool> get forceOverwriteReplicaSecret =>
      TfRef.attribute<bool>(this, 'force_overwrite_replica_secret');

  /// Reference to `kms_key_id` attribute.
  TfRef<String> get kmsKeyId => TfRef.attribute<String>(this, 'kms_key_id');

  /// Reference to `name_prefix` attribute.
  TfRef<String> get namePrefix => TfRef.attribute<String>(this, 'name_prefix');

  /// Reference to `policy` attribute.
  TfRef<String> get policy => TfRef.attribute<String>(this, 'policy');

  /// Reference to `recovery_window_in_days` attribute.
  TfRef<num> get recoveryWindowInDays =>
      TfRef.attribute<num>(this, 'recovery_window_in_days');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');

  /// Reference to `type` attribute.
  TfRef<String> get type => TfRef.attribute<String>(this, 'type');
}
