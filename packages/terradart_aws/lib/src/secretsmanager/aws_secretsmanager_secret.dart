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
      SecretsmanagerSecretNameName;

  /// Sets `name_prefix`.
  const factory SecretsmanagerSecretName.namePrefix(TfArg<String> namePrefix) =
      SecretsmanagerSecretNameNamePrefix;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();

  /// The resource arguments behind [encode], as the caller's
  /// [TfArg]s.
  Map<String, TfArg<Object?>> get argMap;
}

/// The [SecretsmanagerSecretName.name] choice: sets `name`.
final class SecretsmanagerSecretNameName extends SecretsmanagerSecretName {
  const SecretsmanagerSecretNameName(this.name);

  final TfArg<String> name;

  @override
  String get blockKey => 'name';

  @override
  Map<String, Object?> encode() => {'name': name.toTfJson()};

  @override
  Map<String, TfArg<Object?>> get argMap => {'name': name};
}

/// The [SecretsmanagerSecretName.namePrefix] choice: sets `name_prefix`.
final class SecretsmanagerSecretNameNamePrefix
    extends SecretsmanagerSecretName {
  const SecretsmanagerSecretNameNamePrefix(this.namePrefix);

  final TfArg<String> namePrefix;

  @override
  String get blockKey => 'name_prefix';

  @override
  Map<String, Object?> encode() => {'name_prefix': namePrefix.toTfJson()};

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

  Map<String, Object?> encode() => {
    if (kmsKeyId != null) 'kms_key_id': kmsKeyId!.encodeAs('arn').toTfJson(),
    'region': region.toTfJson(),
  };
}

/// Factory wrapper for `aws_secretsmanager_secret`.
final class AwsSecretsmanagerSecret extends Resource {
  static const String tfType = 'aws_secretsmanager_secret';

  AwsSecretsmanagerSecret({
    required super.localName,
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
           if (description != null) 'description': description,
           if (forceOverwriteReplicaSecret != null)
             'force_overwrite_replica_secret': forceOverwriteReplicaSecret,
           if (kmsKeyId != null) 'kms_key_id': kmsKeyId.encodeAs('arn'),
           ...?name?.argMap,
           if (policy != null) 'policy': policy,
           if (recoveryWindowInDays != null)
             'recovery_window_in_days': recoveryWindowInDays,
           if (region != null) 'region': region,
           if (tags != null) 'tags': tags,
           if (type != null) 'type': type,
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
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');
}
