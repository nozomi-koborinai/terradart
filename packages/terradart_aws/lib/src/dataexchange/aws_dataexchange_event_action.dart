// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../kms/aws_kms_key.dart' show AwsKmsKey;
import '../s3/aws_s3_bucket.dart' show AwsS3Bucket;

/// Sensitive field paths for `aws_dataexchange_event_action`.
const Set<String> _awsDataexchangeEventActionSensitive = <String>{};

/// Typed helper for the `action` block of
/// `aws_dataexchange_event_action` (derived from provider schema).
@immutable
final class DataexchangeEventAction {
  const DataexchangeEventAction({this.exportRevisionToS3});

  final List<DataexchangeEventActionExportRevisionToS3>? exportRevisionToS3;

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
final class DataexchangeEventActionExportRevisionToS3 {
  const DataexchangeEventActionExportRevisionToS3({
    this.encryption,
    this.revisionDestination,
  });

  final List<DataexchangeEventActionEncryption>? encryption;

  final List<DataexchangeEventActionRevisionDestination>? revisionDestination;

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
final class DataexchangeEventActionEncryption {
  const DataexchangeEventActionEncryption({this.kmsKeyArn, this.type});

  final RefTo<AwsKmsKey>? kmsKeyArn;

  final TfArg<DataexchangeEventActionType>? type;

  Map<String, Object?> encode() => {
    'kms_key_arn': ?kmsKeyArn?.encodeAs('arn').toTfJson(),
    'type': ?type?.toTfJson(),
  };
}

/// `type` — derived from the provider schema description.
enum DataexchangeEventActionType implements TerraformEnum {
  awsKms('aws:kms'),
  aes256('AES256');

  const DataexchangeEventActionType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `action.export_revision_to_s3.revision_destination` block of
/// `aws_dataexchange_event_action` (derived from provider schema).
@immutable
final class DataexchangeEventActionRevisionDestination {
  const DataexchangeEventActionRevisionDestination({
    required this.bucket,
    this.keyPattern,
  });

  final RefTo<AwsS3Bucket> bucket;

  final TfArg<String>? keyPattern;

  Map<String, Object?> encode() => {
    'bucket': bucket.encodeAs('id').toTfJson(),
    'key_pattern': ?keyPattern?.toTfJson(),
  };
}

/// Typed helper for the `event` block of
/// `aws_dataexchange_event_action` (derived from provider schema).
@immutable
final class DataexchangeEventActionEvent {
  const DataexchangeEventActionEvent({this.revisionPublished});

  final List<DataexchangeEventActionRevisionPublished>? revisionPublished;

  Map<String, Object?> encode() => {
    if (revisionPublished != null)
      'revision_published': [for (final e in revisionPublished!) e.encode()],
  };
}

/// Typed helper for the `event.revision_published` block of
/// `aws_dataexchange_event_action` (derived from provider schema).
@immutable
final class DataexchangeEventActionRevisionPublished {
  const DataexchangeEventActionRevisionPublished({required this.dataSetId});

  final TfArg<String> dataSetId;

  Map<String, Object?> encode() => {'data_set_id': dataSetId.toTfJson()};
}

/// Factory wrapper for `aws_dataexchange_event_action`.
final class AwsDataexchangeEventAction extends Resource {
  static const String tfType = 'aws_dataexchange_event_action';

  AwsDataexchangeEventAction(
    super.localName, {
    TfArg<String>? region,
    List<DataexchangeEventAction>? action,
    List<DataexchangeEventActionEvent>? event,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'region': ?region,
           if (action != null)
             'action': TfArg.literal([for (final e in action) e.encode()]),
           if (event != null)
             'event': TfArg.literal([for (final e in event) e.encode()]),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsDataexchangeEventActionSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsDataexchangeEventAction>`.
  RefTo<AwsDataexchangeEventAction> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `created_at` attribute.
  TfRef<String> get createdAt => TfRef.attribute<String>(this, 'created_at');

  /// Reference to `updated_at` attribute.
  TfRef<String> get updatedAt => TfRef.attribute<String>(this, 'updated_at');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');
}
