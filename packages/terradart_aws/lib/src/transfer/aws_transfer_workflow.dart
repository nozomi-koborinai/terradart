// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_transfer_workflow`.
const Set<String> _awsTransferWorkflowSensitive = <String>{};

/// Typed helper for the `on_exception_steps` block of
/// `aws_transfer_workflow` (derived from provider schema).
@immutable
final class TransferWorkflowOnExceptionSteps {
  const TransferWorkflowOnExceptionSteps({
    required this.type,
    this.copyStepDetails,
    this.customStepDetails,
    this.decryptStepDetails,
    this.deleteStepDetails,
    this.tagStepDetails,
  });

  final TfArg<String> type;

  final TransferWorkflowOnExceptionStepsCopyStepDetails? copyStepDetails;

  final TransferWorkflowOnExceptionStepsCustomStepDetails? customStepDetails;

  final TransferWorkflowOnExceptionStepsDecryptStepDetails? decryptStepDetails;

  final TransferWorkflowOnExceptionStepsDeleteStepDetails? deleteStepDetails;

  final TransferWorkflowOnExceptionStepsTagStepDetails? tagStepDetails;

  Map<String, Object?> encode() => {
    'type': type.toTfJson(),
    if (copyStepDetails != null) 'copy_step_details': copyStepDetails!.encode(),
    if (customStepDetails != null)
      'custom_step_details': customStepDetails!.encode(),
    if (decryptStepDetails != null)
      'decrypt_step_details': decryptStepDetails!.encode(),
    if (deleteStepDetails != null)
      'delete_step_details': deleteStepDetails!.encode(),
    if (tagStepDetails != null) 'tag_step_details': tagStepDetails!.encode(),
  };
}

/// Typed helper for the `on_exception_steps.copy_step_details` block of
/// `aws_transfer_workflow` (derived from provider schema).
@immutable
final class TransferWorkflowOnExceptionStepsCopyStepDetails {
  const TransferWorkflowOnExceptionStepsCopyStepDetails({
    this.name,
    this.overwriteExisting,
    this.sourceFileLocation,
    this.destinationFileLocation,
  });

  final TfArg<String>? name;

  final TfArg<String>? overwriteExisting;

  final TfArg<String>? sourceFileLocation;

  final TransferWorkflowOnExceptionStepsCopyStepDetailsDestinationFileLocation?
  destinationFileLocation;

  Map<String, Object?> encode() => {
    if (name != null) 'name': name!.toTfJson(),
    if (overwriteExisting != null)
      'overwrite_existing': overwriteExisting!.toTfJson(),
    if (sourceFileLocation != null)
      'source_file_location': sourceFileLocation!.toTfJson(),
    if (destinationFileLocation != null)
      'destination_file_location': destinationFileLocation!.encode(),
  };
}

/// Typed helper for the `on_exception_steps.copy_step_details.destination_file_location` block of
/// `aws_transfer_workflow` (derived from provider schema).
@immutable
final class TransferWorkflowOnExceptionStepsCopyStepDetailsDestinationFileLocation {
  const TransferWorkflowOnExceptionStepsCopyStepDetailsDestinationFileLocation({
    this.efsFileLocation,
    this.s3FileLocation,
  });

  final TransferWorkflowOnExceptionStepsCopyStepDetailsDestinationFileLocationEfsFileLocation?
  efsFileLocation;

  final TransferWorkflowOnExceptionStepsCopyStepDetailsDestinationFileLocationS3FileLocation?
  s3FileLocation;

  Map<String, Object?> encode() => {
    if (efsFileLocation != null) 'efs_file_location': efsFileLocation!.encode(),
    if (s3FileLocation != null) 's3_file_location': s3FileLocation!.encode(),
  };
}

/// Typed helper for the `on_exception_steps.copy_step_details.destination_file_location.efs_file_location` block of
/// `aws_transfer_workflow` (derived from provider schema).
@immutable
final class TransferWorkflowOnExceptionStepsCopyStepDetailsDestinationFileLocationEfsFileLocation {
  const TransferWorkflowOnExceptionStepsCopyStepDetailsDestinationFileLocationEfsFileLocation({
    this.fileSystemId,
    this.path,
  });

  final TfArg<String>? fileSystemId;

  final TfArg<String>? path;

  Map<String, Object?> encode() => {
    if (fileSystemId != null) 'file_system_id': fileSystemId!.toTfJson(),
    if (path != null) 'path': path!.toTfJson(),
  };
}

/// Typed helper for the `on_exception_steps.copy_step_details.destination_file_location.s3_file_location` block of
/// `aws_transfer_workflow` (derived from provider schema).
@immutable
final class TransferWorkflowOnExceptionStepsCopyStepDetailsDestinationFileLocationS3FileLocation {
  const TransferWorkflowOnExceptionStepsCopyStepDetailsDestinationFileLocationS3FileLocation({
    this.bucket,
    this.key,
  });

  final TfArg<String>? bucket;

  final TfArg<String>? key;

  Map<String, Object?> encode() => {
    if (bucket != null) 'bucket': bucket!.toTfJson(),
    if (key != null) 'key': key!.toTfJson(),
  };
}

/// Typed helper for the `on_exception_steps.custom_step_details` block of
/// `aws_transfer_workflow` (derived from provider schema).
@immutable
final class TransferWorkflowOnExceptionStepsCustomStepDetails {
  const TransferWorkflowOnExceptionStepsCustomStepDetails({
    this.name,
    this.sourceFileLocation,
    this.target,
    this.timeoutSeconds,
  });

  final TfArg<String>? name;

  final TfArg<String>? sourceFileLocation;

  final TfArg<String>? target;

  final TfArg<num>? timeoutSeconds;

  Map<String, Object?> encode() => {
    if (name != null) 'name': name!.toTfJson(),
    if (sourceFileLocation != null)
      'source_file_location': sourceFileLocation!.toTfJson(),
    if (target != null) 'target': target!.toTfJson(),
    if (timeoutSeconds != null) 'timeout_seconds': timeoutSeconds!.toTfJson(),
  };
}

/// Typed helper for the `on_exception_steps.decrypt_step_details` block of
/// `aws_transfer_workflow` (derived from provider schema).
@immutable
final class TransferWorkflowOnExceptionStepsDecryptStepDetails {
  const TransferWorkflowOnExceptionStepsDecryptStepDetails({
    this.name,
    this.overwriteExisting,
    this.sourceFileLocation,
    required this.type,
    this.destinationFileLocation,
  });

  final TfArg<String>? name;

  final TfArg<String>? overwriteExisting;

  final TfArg<String>? sourceFileLocation;

  final TfArg<String> type;

  final TransferWorkflowOnExceptionStepsDecryptStepDetailsDestinationFileLocation?
  destinationFileLocation;

  Map<String, Object?> encode() => {
    if (name != null) 'name': name!.toTfJson(),
    if (overwriteExisting != null)
      'overwrite_existing': overwriteExisting!.toTfJson(),
    if (sourceFileLocation != null)
      'source_file_location': sourceFileLocation!.toTfJson(),
    'type': type.toTfJson(),
    if (destinationFileLocation != null)
      'destination_file_location': destinationFileLocation!.encode(),
  };
}

/// Typed helper for the `on_exception_steps.decrypt_step_details.destination_file_location` block of
/// `aws_transfer_workflow` (derived from provider schema).
@immutable
final class TransferWorkflowOnExceptionStepsDecryptStepDetailsDestinationFileLocation {
  const TransferWorkflowOnExceptionStepsDecryptStepDetailsDestinationFileLocation({
    this.efsFileLocation,
    this.s3FileLocation,
  });

  final TransferWorkflowOnExceptionStepsDecryptStepDetailsDestinationFileLocationEfsFileLocation?
  efsFileLocation;

  final TransferWorkflowOnExceptionStepsDecryptStepDetailsDestinationFileLocationS3FileLocation?
  s3FileLocation;

  Map<String, Object?> encode() => {
    if (efsFileLocation != null) 'efs_file_location': efsFileLocation!.encode(),
    if (s3FileLocation != null) 's3_file_location': s3FileLocation!.encode(),
  };
}

/// Typed helper for the `on_exception_steps.decrypt_step_details.destination_file_location.efs_file_location` block of
/// `aws_transfer_workflow` (derived from provider schema).
@immutable
final class TransferWorkflowOnExceptionStepsDecryptStepDetailsDestinationFileLocationEfsFileLocation {
  const TransferWorkflowOnExceptionStepsDecryptStepDetailsDestinationFileLocationEfsFileLocation({
    this.fileSystemId,
    this.path,
  });

  final TfArg<String>? fileSystemId;

  final TfArg<String>? path;

  Map<String, Object?> encode() => {
    if (fileSystemId != null) 'file_system_id': fileSystemId!.toTfJson(),
    if (path != null) 'path': path!.toTfJson(),
  };
}

/// Typed helper for the `on_exception_steps.decrypt_step_details.destination_file_location.s3_file_location` block of
/// `aws_transfer_workflow` (derived from provider schema).
@immutable
final class TransferWorkflowOnExceptionStepsDecryptStepDetailsDestinationFileLocationS3FileLocation {
  const TransferWorkflowOnExceptionStepsDecryptStepDetailsDestinationFileLocationS3FileLocation({
    this.bucket,
    this.key,
  });

  final TfArg<String>? bucket;

  final TfArg<String>? key;

  Map<String, Object?> encode() => {
    if (bucket != null) 'bucket': bucket!.toTfJson(),
    if (key != null) 'key': key!.toTfJson(),
  };
}

/// Typed helper for the `on_exception_steps.delete_step_details` block of
/// `aws_transfer_workflow` (derived from provider schema).
@immutable
final class TransferWorkflowOnExceptionStepsDeleteStepDetails {
  const TransferWorkflowOnExceptionStepsDeleteStepDetails({
    this.name,
    this.sourceFileLocation,
  });

  final TfArg<String>? name;

  final TfArg<String>? sourceFileLocation;

  Map<String, Object?> encode() => {
    if (name != null) 'name': name!.toTfJson(),
    if (sourceFileLocation != null)
      'source_file_location': sourceFileLocation!.toTfJson(),
  };
}

/// Typed helper for the `on_exception_steps.tag_step_details` block of
/// `aws_transfer_workflow` (derived from provider schema).
@immutable
final class TransferWorkflowOnExceptionStepsTagStepDetails {
  const TransferWorkflowOnExceptionStepsTagStepDetails({
    this.name,
    this.sourceFileLocation,
    this.tags,
  });

  final TfArg<String>? name;

  final TfArg<String>? sourceFileLocation;

  final List<TransferWorkflowOnExceptionStepsTagStepDetailsTags>? tags;

  Map<String, Object?> encode() => {
    if (name != null) 'name': name!.toTfJson(),
    if (sourceFileLocation != null)
      'source_file_location': sourceFileLocation!.toTfJson(),
    if (tags != null) 'tags': [for (final e in tags!) e.encode()],
  };
}

/// Typed helper for the `on_exception_steps.tag_step_details.tags` block of
/// `aws_transfer_workflow` (derived from provider schema).
@immutable
final class TransferWorkflowOnExceptionStepsTagStepDetailsTags {
  const TransferWorkflowOnExceptionStepsTagStepDetailsTags({
    required this.key,
    required this.value,
  });

  final TfArg<String> key;

  final TfArg<String> value;

  Map<String, Object?> encode() => {
    'key': key.toTfJson(),
    'value': value.toTfJson(),
  };
}

/// Typed helper for the `steps` block of
/// `aws_transfer_workflow` (derived from provider schema).
@immutable
final class TransferWorkflowSteps {
  const TransferWorkflowSteps({
    required this.type,
    this.copyStepDetails,
    this.customStepDetails,
    this.decryptStepDetails,
    this.deleteStepDetails,
    this.tagStepDetails,
  });

  final TfArg<String> type;

  final TransferWorkflowStepsCopyStepDetails? copyStepDetails;

  final TransferWorkflowStepsCustomStepDetails? customStepDetails;

  final TransferWorkflowStepsDecryptStepDetails? decryptStepDetails;

  final TransferWorkflowStepsDeleteStepDetails? deleteStepDetails;

  final TransferWorkflowStepsTagStepDetails? tagStepDetails;

  Map<String, Object?> encode() => {
    'type': type.toTfJson(),
    if (copyStepDetails != null) 'copy_step_details': copyStepDetails!.encode(),
    if (customStepDetails != null)
      'custom_step_details': customStepDetails!.encode(),
    if (decryptStepDetails != null)
      'decrypt_step_details': decryptStepDetails!.encode(),
    if (deleteStepDetails != null)
      'delete_step_details': deleteStepDetails!.encode(),
    if (tagStepDetails != null) 'tag_step_details': tagStepDetails!.encode(),
  };
}

/// Typed helper for the `steps.copy_step_details` block of
/// `aws_transfer_workflow` (derived from provider schema).
@immutable
final class TransferWorkflowStepsCopyStepDetails {
  const TransferWorkflowStepsCopyStepDetails({
    this.name,
    this.overwriteExisting,
    this.sourceFileLocation,
    this.destinationFileLocation,
  });

  final TfArg<String>? name;

  final TfArg<String>? overwriteExisting;

  final TfArg<String>? sourceFileLocation;

  final TransferWorkflowStepsCopyStepDetailsDestinationFileLocation?
  destinationFileLocation;

  Map<String, Object?> encode() => {
    if (name != null) 'name': name!.toTfJson(),
    if (overwriteExisting != null)
      'overwrite_existing': overwriteExisting!.toTfJson(),
    if (sourceFileLocation != null)
      'source_file_location': sourceFileLocation!.toTfJson(),
    if (destinationFileLocation != null)
      'destination_file_location': destinationFileLocation!.encode(),
  };
}

/// Typed helper for the `steps.copy_step_details.destination_file_location` block of
/// `aws_transfer_workflow` (derived from provider schema).
@immutable
final class TransferWorkflowStepsCopyStepDetailsDestinationFileLocation {
  const TransferWorkflowStepsCopyStepDetailsDestinationFileLocation({
    this.efsFileLocation,
    this.s3FileLocation,
  });

  final TransferWorkflowStepsCopyStepDetailsDestinationFileLocationEfsFileLocation?
  efsFileLocation;

  final TransferWorkflowStepsCopyStepDetailsDestinationFileLocationS3FileLocation?
  s3FileLocation;

  Map<String, Object?> encode() => {
    if (efsFileLocation != null) 'efs_file_location': efsFileLocation!.encode(),
    if (s3FileLocation != null) 's3_file_location': s3FileLocation!.encode(),
  };
}

/// Typed helper for the `steps.copy_step_details.destination_file_location.efs_file_location` block of
/// `aws_transfer_workflow` (derived from provider schema).
@immutable
final class TransferWorkflowStepsCopyStepDetailsDestinationFileLocationEfsFileLocation {
  const TransferWorkflowStepsCopyStepDetailsDestinationFileLocationEfsFileLocation({
    this.fileSystemId,
    this.path,
  });

  final TfArg<String>? fileSystemId;

  final TfArg<String>? path;

  Map<String, Object?> encode() => {
    if (fileSystemId != null) 'file_system_id': fileSystemId!.toTfJson(),
    if (path != null) 'path': path!.toTfJson(),
  };
}

/// Typed helper for the `steps.copy_step_details.destination_file_location.s3_file_location` block of
/// `aws_transfer_workflow` (derived from provider schema).
@immutable
final class TransferWorkflowStepsCopyStepDetailsDestinationFileLocationS3FileLocation {
  const TransferWorkflowStepsCopyStepDetailsDestinationFileLocationS3FileLocation({
    this.bucket,
    this.key,
  });

  final TfArg<String>? bucket;

  final TfArg<String>? key;

  Map<String, Object?> encode() => {
    if (bucket != null) 'bucket': bucket!.toTfJson(),
    if (key != null) 'key': key!.toTfJson(),
  };
}

/// Typed helper for the `steps.custom_step_details` block of
/// `aws_transfer_workflow` (derived from provider schema).
@immutable
final class TransferWorkflowStepsCustomStepDetails {
  const TransferWorkflowStepsCustomStepDetails({
    this.name,
    this.sourceFileLocation,
    this.target,
    this.timeoutSeconds,
  });

  final TfArg<String>? name;

  final TfArg<String>? sourceFileLocation;

  final TfArg<String>? target;

  final TfArg<num>? timeoutSeconds;

  Map<String, Object?> encode() => {
    if (name != null) 'name': name!.toTfJson(),
    if (sourceFileLocation != null)
      'source_file_location': sourceFileLocation!.toTfJson(),
    if (target != null) 'target': target!.toTfJson(),
    if (timeoutSeconds != null) 'timeout_seconds': timeoutSeconds!.toTfJson(),
  };
}

/// Typed helper for the `steps.decrypt_step_details` block of
/// `aws_transfer_workflow` (derived from provider schema).
@immutable
final class TransferWorkflowStepsDecryptStepDetails {
  const TransferWorkflowStepsDecryptStepDetails({
    this.name,
    this.overwriteExisting,
    this.sourceFileLocation,
    required this.type,
    this.destinationFileLocation,
  });

  final TfArg<String>? name;

  final TfArg<String>? overwriteExisting;

  final TfArg<String>? sourceFileLocation;

  final TfArg<String> type;

  final TransferWorkflowStepsDecryptStepDetailsDestinationFileLocation?
  destinationFileLocation;

  Map<String, Object?> encode() => {
    if (name != null) 'name': name!.toTfJson(),
    if (overwriteExisting != null)
      'overwrite_existing': overwriteExisting!.toTfJson(),
    if (sourceFileLocation != null)
      'source_file_location': sourceFileLocation!.toTfJson(),
    'type': type.toTfJson(),
    if (destinationFileLocation != null)
      'destination_file_location': destinationFileLocation!.encode(),
  };
}

/// Typed helper for the `steps.decrypt_step_details.destination_file_location` block of
/// `aws_transfer_workflow` (derived from provider schema).
@immutable
final class TransferWorkflowStepsDecryptStepDetailsDestinationFileLocation {
  const TransferWorkflowStepsDecryptStepDetailsDestinationFileLocation({
    this.efsFileLocation,
    this.s3FileLocation,
  });

  final TransferWorkflowStepsDecryptStepDetailsDestinationFileLocationEfsFileLocation?
  efsFileLocation;

  final TransferWorkflowStepsDecryptStepDetailsDestinationFileLocationS3FileLocation?
  s3FileLocation;

  Map<String, Object?> encode() => {
    if (efsFileLocation != null) 'efs_file_location': efsFileLocation!.encode(),
    if (s3FileLocation != null) 's3_file_location': s3FileLocation!.encode(),
  };
}

/// Typed helper for the `steps.decrypt_step_details.destination_file_location.efs_file_location` block of
/// `aws_transfer_workflow` (derived from provider schema).
@immutable
final class TransferWorkflowStepsDecryptStepDetailsDestinationFileLocationEfsFileLocation {
  const TransferWorkflowStepsDecryptStepDetailsDestinationFileLocationEfsFileLocation({
    this.fileSystemId,
    this.path,
  });

  final TfArg<String>? fileSystemId;

  final TfArg<String>? path;

  Map<String, Object?> encode() => {
    if (fileSystemId != null) 'file_system_id': fileSystemId!.toTfJson(),
    if (path != null) 'path': path!.toTfJson(),
  };
}

/// Typed helper for the `steps.decrypt_step_details.destination_file_location.s3_file_location` block of
/// `aws_transfer_workflow` (derived from provider schema).
@immutable
final class TransferWorkflowStepsDecryptStepDetailsDestinationFileLocationS3FileLocation {
  const TransferWorkflowStepsDecryptStepDetailsDestinationFileLocationS3FileLocation({
    this.bucket,
    this.key,
  });

  final TfArg<String>? bucket;

  final TfArg<String>? key;

  Map<String, Object?> encode() => {
    if (bucket != null) 'bucket': bucket!.toTfJson(),
    if (key != null) 'key': key!.toTfJson(),
  };
}

/// Typed helper for the `steps.delete_step_details` block of
/// `aws_transfer_workflow` (derived from provider schema).
@immutable
final class TransferWorkflowStepsDeleteStepDetails {
  const TransferWorkflowStepsDeleteStepDetails({
    this.name,
    this.sourceFileLocation,
  });

  final TfArg<String>? name;

  final TfArg<String>? sourceFileLocation;

  Map<String, Object?> encode() => {
    if (name != null) 'name': name!.toTfJson(),
    if (sourceFileLocation != null)
      'source_file_location': sourceFileLocation!.toTfJson(),
  };
}

/// Typed helper for the `steps.tag_step_details` block of
/// `aws_transfer_workflow` (derived from provider schema).
@immutable
final class TransferWorkflowStepsTagStepDetails {
  const TransferWorkflowStepsTagStepDetails({
    this.name,
    this.sourceFileLocation,
    this.tags,
  });

  final TfArg<String>? name;

  final TfArg<String>? sourceFileLocation;

  final List<TransferWorkflowStepsTagStepDetailsTags>? tags;

  Map<String, Object?> encode() => {
    if (name != null) 'name': name!.toTfJson(),
    if (sourceFileLocation != null)
      'source_file_location': sourceFileLocation!.toTfJson(),
    if (tags != null) 'tags': [for (final e in tags!) e.encode()],
  };
}

/// Typed helper for the `steps.tag_step_details.tags` block of
/// `aws_transfer_workflow` (derived from provider schema).
@immutable
final class TransferWorkflowStepsTagStepDetailsTags {
  const TransferWorkflowStepsTagStepDetailsTags({
    required this.key,
    required this.value,
  });

  final TfArg<String> key;

  final TfArg<String> value;

  Map<String, Object?> encode() => {
    'key': key.toTfJson(),
    'value': value.toTfJson(),
  };
}

/// Factory wrapper for `aws_transfer_workflow`.
final class AwsTransferWorkflow extends Resource {
  static const String tfType = 'aws_transfer_workflow';

  AwsTransferWorkflow({
    required super.localName,
    TfArg<String>? description,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    List<TransferWorkflowOnExceptionSteps>? onExceptionSteps,
    required List<TransferWorkflowSteps> steps,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (description != null) 'description': description,
           if (region != null) 'region': region,
           if (tags != null) 'tags': tags,
           if (onExceptionSteps != null)
             'on_exception_steps': TfArg.literal([
               for (final e in onExceptionSteps) e.encode(),
             ]),
           'steps': TfArg.literal([for (final e in steps) e.encode()]),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsTransferWorkflowSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');
}
