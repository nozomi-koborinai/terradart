// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_redshift_snapshot_schedule`.
const Set<String> _awsRedshiftSnapshotScheduleSensitive = <String>{};

/// Factory wrapper for `aws_redshift_snapshot_schedule`.
final class AwsRedshiftSnapshotSchedule extends Resource {
  static const String tfType = 'aws_redshift_snapshot_schedule';

  AwsRedshiftSnapshotSchedule({
    required super.localName,
    required TfArg<List<String>> definitions,
    TfArg<String>? description,
    TfArg<bool>? forceDestroy,
    TfArg<String>? identifier,
    TfArg<String>? identifierPrefix,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'definitions': definitions,
           if (description != null) 'description': description,
           if (forceDestroy != null) 'force_destroy': forceDestroy,
           if (identifier != null) 'identifier': identifier,
           if (identifierPrefix != null) 'identifier_prefix': identifierPrefix,
           if (region != null) 'region': region,
           if (tags != null) 'tags': tags,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsRedshiftSnapshotScheduleSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');
}
