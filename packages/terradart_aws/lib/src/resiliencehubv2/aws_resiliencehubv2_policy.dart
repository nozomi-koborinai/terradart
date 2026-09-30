// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../kms/aws_kms_key.dart' show AwsKmsKey;

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

  final TfArg<Resiliencehubv2PolicyMultiAzDisasterRecoveryApproach>
  disasterRecoveryApproach;

  final TfArg<num>? rpoInMinutes;

  final TfArg<num>? rtoInMinutes;

  Map<String, Object?> encode() => {
    'disaster_recovery_approach': disasterRecoveryApproach.toTfJson(),
    'rpo_in_minutes': ?rpoInMinutes?.toTfJson(),
    'rto_in_minutes': ?rtoInMinutes?.toTfJson(),
  };
}

/// `disaster_recovery_approach` — derived from the provider schema description.
enum Resiliencehubv2PolicyMultiAzDisasterRecoveryApproach
    implements TerraformEnum {
  activeActive('ACTIVE_ACTIVE'),
  hotStandby('HOT_STANDBY'),
  warmStandby('WARM_STANDBY'),
  pilotLight('PILOT_LIGHT'),
  backupAndRestore('BACKUP_AND_RESTORE');

  const Resiliencehubv2PolicyMultiAzDisasterRecoveryApproach(
    this.terraformValue,
  );
  @override
  final String terraformValue;
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

  final TfArg<Resiliencehubv2PolicyMultiRegionDisasterRecoveryApproach>
  disasterRecoveryApproach;

  final TfArg<num>? rpoInMinutes;

  final TfArg<num>? rtoInMinutes;

  Map<String, Object?> encode() => {
    'disaster_recovery_approach': disasterRecoveryApproach.toTfJson(),
    'rpo_in_minutes': ?rpoInMinutes?.toTfJson(),
    'rto_in_minutes': ?rtoInMinutes?.toTfJson(),
  };
}

/// `disaster_recovery_approach` — derived from the provider schema description.
enum Resiliencehubv2PolicyMultiRegionDisasterRecoveryApproach
    implements TerraformEnum {
  activeActive('ACTIVE_ACTIVE'),
  hotStandby('HOT_STANDBY'),
  warmStandby('WARM_STANDBY'),
  pilotLight('PILOT_LIGHT'),
  backupAndRestore('BACKUP_AND_RESTORE');

  const Resiliencehubv2PolicyMultiRegionDisasterRecoveryApproach(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Factory wrapper for `aws_resiliencehubv2_policy`.
final class AwsResiliencehubv2Policy extends Resource {
  static const String tfType = 'aws_resiliencehubv2_policy';

  AwsResiliencehubv2Policy({
    required super.localName,
    TfArg<String>? description,
    RefTo<AwsKmsKey>? kmsKeyId,
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
           'description': ?description,
           'kms_key_id': ?kmsKeyId?.encodeAs('arn'),
           'name': name,
           'region': ?region,
           'tags': ?tags,
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

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsResiliencehubv2Policy>`.
  RefTo<AwsResiliencehubv2Policy> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `tags_all` attribute.
  TfRef<Map<String, String>> get tagsAll =>
      TfRef.attribute<Map<String, String>>(this, 'tags_all');

  /// Reference to `description` attribute.
  TfRef<String> get descriptionRef =>
      TfRef.attribute<String>(this, 'description');

  /// Reference to `kms_key_id` attribute.
  TfRef<String> get kmsKeyIdRef => TfRef.attribute<String>(this, 'kms_key_id');

  /// Reference to `region` attribute.
  TfRef<String> get regionRef => TfRef.attribute<String>(this, 'region');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tagsRef =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}
