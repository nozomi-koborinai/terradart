// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_ssmincidents_replication_set`.
const Set<String> _awsSsmincidentsReplicationSetSensitive = <String>{};

/// Typed helper for the `region` block of
/// `aws_ssmincidents_replication_set` (derived from provider schema).
@immutable
final class SsmincidentsReplicationSetRegion {
  const SsmincidentsReplicationSetRegion({this.kmsKeyArn, required this.name});

  final TfArg<String>? kmsKeyArn;

  final TfArg<String> name;

  Map<String, Object?> encode() => {
    if (kmsKeyArn != null) 'kms_key_arn': kmsKeyArn!.toTfJson(),
    'name': name.toTfJson(),
  };
}

/// Typed helper for the `regions` block of
/// `aws_ssmincidents_replication_set` (derived from provider schema).
@immutable
final class SsmincidentsReplicationSetRegions {
  const SsmincidentsReplicationSetRegions({this.kmsKeyArn, required this.name});

  final TfArg<String>? kmsKeyArn;

  final TfArg<String> name;

  Map<String, Object?> encode() => {
    if (kmsKeyArn != null) 'kms_key_arn': kmsKeyArn!.toTfJson(),
    'name': name.toTfJson(),
  };
}

/// Factory wrapper for `aws_ssmincidents_replication_set`.
final class AwsSsmincidentsReplicationSet extends Resource {
  static const String tfType = 'aws_ssmincidents_replication_set';

  AwsSsmincidentsReplicationSet({
    required super.localName,
    TfArg<Map<String, String>>? tags,
    List<SsmincidentsReplicationSetRegion>? region,
    List<SsmincidentsReplicationSetRegions>? regions,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (tags != null) 'tags': tags,
           if (region != null)
             'region': TfArg.literal([for (final e in region) e.encode()]),
           if (regions != null)
             'regions': TfArg.literal([for (final e in regions) e.encode()]),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsSsmincidentsReplicationSetSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `created_by` attribute.
  TfRef<String> get createdBy => TfRef.attribute<String>(this, 'created_by');

  /// Reference to `deletion_protected` attribute.
  TfRef<bool> get deletionProtected =>
      TfRef.attribute<bool>(this, 'deletion_protected');

  /// Reference to `last_modified_by` attribute.
  TfRef<String> get lastModifiedBy =>
      TfRef.attribute<String>(this, 'last_modified_by');

  /// Reference to `status` attribute.
  TfRef<String> get status => TfRef.attribute<String>(this, 'status');
}
