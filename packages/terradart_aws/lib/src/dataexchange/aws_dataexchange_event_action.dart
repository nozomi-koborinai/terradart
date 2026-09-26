// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_dataexchange_event_action`.
const Set<String> _awsDataexchangeEventActionSensitive = <String>{};

/// Typed helper for the `action` block of
/// `aws_dataexchange_event_action` (derived from provider schema).
@immutable
final class DataexchangeEventActionAction {
  const DataexchangeEventActionAction({this.exportRevisionToS3});

  final List<DataexchangeEventActionActionExportRevisionToS3>?
  exportRevisionToS3;

  Map<String, Object?> encode() => {
    if (exportRevisionToS3 != null)
      'export_revision_to_s3': [
        for (final e in exportRevisionToS3!) e.encode(),
      ],
  };
}

/// Typed helper for the `action.export_revision_to_s3` block of
/// `aws_dataexchange_event_action` (derived from provider schema).
@immutable
final class DataexchangeEventActionActionExportRevisionToS3 {
  const DataexchangeEventActionActionExportRevisionToS3({
    this.encryption,
    this.revisionDestination,
  });

  final List<DataexchangeEventActionActionExportRevisionToS3Encryption>?
  encryption;

  final List<
    DataexchangeEventActionActionExportRevisionToS3RevisionDestination
  >?
  revisionDestination;

  Map<String, Object?> encode() => {
    if (encryption != null)
      'encryption': [for (final e in encryption!) e.encode()],
    if (revisionDestination != null)
      'revision_destination': [
        for (final e in revisionDestination!) e.encode(),
      ],
  };
}

/// Typed helper for the `action.export_revision_to_s3.encryption` block of
/// `aws_dataexchange_event_action` (derived from provider schema).
@immutable
final class DataexchangeEventActionActionExportRevisionToS3Encryption {
  const DataexchangeEventActionActionExportRevisionToS3Encryption({
    this.kmsKeyArn,
    this.type,
  });

  final TfArg<String>? kmsKeyArn;

  final TfArg<String>? type;

  Map<String, Object?> encode() => {
    if (kmsKeyArn != null) 'kms_key_arn': kmsKeyArn!.toTfJson(),
    if (type != null) 'type': type!.toTfJson(),
  };
}

/// Typed helper for the `action.export_revision_to_s3.revision_destination` block of
/// `aws_dataexchange_event_action` (derived from provider schema).
@immutable
final class DataexchangeEventActionActionExportRevisionToS3RevisionDestination {
  const DataexchangeEventActionActionExportRevisionToS3RevisionDestination({
    required this.bucket,
    this.keyPattern,
  });

  final TfArg<String> bucket;

  final TfArg<String>? keyPattern;

  Map<String, Object?> encode() => {
    'bucket': bucket.toTfJson(),
    if (keyPattern != null) 'key_pattern': keyPattern!.toTfJson(),
  };
}

/// Typed helper for the `event` block of
/// `aws_dataexchange_event_action` (derived from provider schema).
@immutable
final class DataexchangeEventActionEvent {
  const DataexchangeEventActionEvent({this.revisionPublished});

  final List<DataexchangeEventActionEventRevisionPublished>? revisionPublished;

  Map<String, Object?> encode() => {
    if (revisionPublished != null)
      'revision_published': [for (final e in revisionPublished!) e.encode()],
  };
}

/// Typed helper for the `event.revision_published` block of
/// `aws_dataexchange_event_action` (derived from provider schema).
@immutable
final class DataexchangeEventActionEventRevisionPublished {
  const DataexchangeEventActionEventRevisionPublished({
    required this.dataSetId,
  });

  final TfArg<String> dataSetId;

  Map<String, Object?> encode() => {'data_set_id': dataSetId.toTfJson()};
}

/// Factory wrapper for `aws_dataexchange_event_action`.
final class AwsDataexchangeEventAction extends Resource {
  static const String tfType = 'aws_dataexchange_event_action';

  AwsDataexchangeEventAction({
    required super.localName,
    TfArg<String>? region,
    List<DataexchangeEventActionAction>? action,
    List<DataexchangeEventActionEvent>? event,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (region != null) 'region': region,
           if (action != null)
             'action': TfArg.literal([for (final e in action) e.encode()]),
           if (event != null)
             'event': TfArg.literal([for (final e in event) e.encode()]),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsDataexchangeEventActionSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `created_at` attribute.
  TfRef<String> get createdAt => TfRef.attribute<String>(this, 'created_at');

  /// Reference to `updated_at` attribute.
  TfRef<String> get updatedAt => TfRef.attribute<String>(this, 'updated_at');
}
