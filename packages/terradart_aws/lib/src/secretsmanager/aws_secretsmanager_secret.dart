// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_secretsmanager_secret`.
const Set<String> _awsSecretsmanagerSecretSensitive = <String>{};

/// Typed helper for the `replica` block of
/// `aws_secretsmanager_secret` (derived from provider schema).
@immutable
final class SecretsmanagerSecretReplica {
  const SecretsmanagerSecretReplica({this.kmsKeyId, required this.region});

  final TfArg<String>? kmsKeyId;

  final TfArg<String> region;

  Map<String, Object?> encode() => {
    if (kmsKeyId != null) 'kms_key_id': kmsKeyId!.toTfJson(),
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
    TfArg<String>? kmsKeyId,
    TfArg<String>? name,
    TfArg<String>? namePrefix,
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
           if (kmsKeyId != null) 'kms_key_id': kmsKeyId,
           if (name != null) 'name': name,
           if (namePrefix != null) 'name_prefix': namePrefix,
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

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');
}
