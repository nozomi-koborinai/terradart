// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_resiliencehubv2_policy`.
const Set<String> _awsResiliencehubv2PolicySensitive = <String>{};

/// Typed helper for the `availability_slo` block of
/// `aws_resiliencehubv2_policy` (derived from provider schema).
@immutable
final class Resiliencehubv2PolicyAvailabilitySlo {
  const Resiliencehubv2PolicyAvailabilitySlo({required this.target});

  final TfArg<num> target;

  Map<String, Object?> encode() => {'target': target.toTfJson()};
}

/// Typed helper for the `data_recovery` block of
/// `aws_resiliencehubv2_policy` (derived from provider schema).
@immutable
final class Resiliencehubv2PolicyDataRecovery {
  const Resiliencehubv2PolicyDataRecovery({
    required this.timeBetweenBackupsInMinutes,
  });

  final TfArg<num> timeBetweenBackupsInMinutes;

  Map<String, Object?> encode() => {
    'time_between_backups_in_minutes': timeBetweenBackupsInMinutes.toTfJson(),
  };
}

/// Typed helper for the `multi_az` block of
/// `aws_resiliencehubv2_policy` (derived from provider schema).
@immutable
final class Resiliencehubv2PolicyMultiAz {
  const Resiliencehubv2PolicyMultiAz({
    required this.disasterRecoveryApproach,
    this.rpoInMinutes,
    this.rtoInMinutes,
  });

  final TfArg<String> disasterRecoveryApproach;

  final TfArg<num>? rpoInMinutes;

  final TfArg<num>? rtoInMinutes;

  Map<String, Object?> encode() => {
    'disaster_recovery_approach': disasterRecoveryApproach.toTfJson(),
    if (rpoInMinutes != null) 'rpo_in_minutes': rpoInMinutes!.toTfJson(),
    if (rtoInMinutes != null) 'rto_in_minutes': rtoInMinutes!.toTfJson(),
  };
}

/// Typed helper for the `multi_region` block of
/// `aws_resiliencehubv2_policy` (derived from provider schema).
@immutable
final class Resiliencehubv2PolicyMultiRegion {
  const Resiliencehubv2PolicyMultiRegion({
    required this.disasterRecoveryApproach,
    this.rpoInMinutes,
    this.rtoInMinutes,
  });

  final TfArg<String> disasterRecoveryApproach;

  final TfArg<num>? rpoInMinutes;

  final TfArg<num>? rtoInMinutes;

  Map<String, Object?> encode() => {
    'disaster_recovery_approach': disasterRecoveryApproach.toTfJson(),
    if (rpoInMinutes != null) 'rpo_in_minutes': rpoInMinutes!.toTfJson(),
    if (rtoInMinutes != null) 'rto_in_minutes': rtoInMinutes!.toTfJson(),
  };
}

/// Factory wrapper for `aws_resiliencehubv2_policy`.
final class AwsResiliencehubv2Policy extends Resource {
  static const String tfType = 'aws_resiliencehubv2_policy';

  AwsResiliencehubv2Policy({
    required super.localName,
    TfArg<String>? description,
    TfArg<String>? kmsKeyId,
    required TfArg<String> name,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    List<Resiliencehubv2PolicyAvailabilitySlo>? availabilitySlo,
    List<Resiliencehubv2PolicyDataRecovery>? dataRecovery,
    List<Resiliencehubv2PolicyMultiAz>? multiAz,
    List<Resiliencehubv2PolicyMultiRegion>? multiRegion,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (description != null) 'description': description,
           if (kmsKeyId != null) 'kms_key_id': kmsKeyId,
           'name': name,
           if (region != null) 'region': region,
           if (tags != null) 'tags': tags,
           if (availabilitySlo != null)
             'availability_slo': TfArg.literal([
               for (final e in availabilitySlo) e.encode(),
             ]),
           if (dataRecovery != null)
             'data_recovery': TfArg.literal([
               for (final e in dataRecovery) e.encode(),
             ]),
           if (multiAz != null)
             'multi_az': TfArg.literal([for (final e in multiAz) e.encode()]),
           if (multiRegion != null)
             'multi_region': TfArg.literal([
               for (final e in multiRegion) e.encode(),
             ]),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsResiliencehubv2PolicySensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `tags_all` attribute.
  TfRef<Map<String, String>> get tagsAll =>
      TfRef.attribute<Map<String, String>>(this, 'tags_all');
}
