// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../s3/aws_s3_bucket.dart' show AwsS3Bucket;

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

  final TransferWorkflowType type;

  final TransferWorkflowCopyStepDetails? copyStepDetails;

  final TransferWorkflowCustomStepDetails? customStepDetails;

  final TransferWorkflowDecryptStepDetails? decryptStepDetails;

  final TransferWorkflowDeleteStepDetails? deleteStepDetails;

  final TransferWorkflowTagStepDetails? tagStepDetails;

  Map<String, Object?> encode() => {
    'type': type.toTfJson(),
    'copy_step_details': ?copyStepDetails?.encode(),
    'custom_step_details': ?customStepDetails?.encode(),
    'decrypt_step_details': ?decryptStepDetails?.encode(),
    'delete_step_details': ?deleteStepDetails?.encode(),
    'tag_step_details': ?tagStepDetails?.encode(),
  };
}

/// `type` — derived from the provider schema description.
extension type const TransferWorkflowType._(TfArg<String> _)
    implements TfArg<String> {
  TransferWorkflowType.variable(String name) : this._(TfArg.variable(name));
  TransferWorkflowType.expression(String template)
    : this._(TfArg.expression(template));
  const TransferWorkflowType.arg(TfArg<String> arg) : this._(arg);

  static const copy = TransferWorkflowType._(TfArgLiteral('COPY'));
  static const custom = TransferWorkflowType._(TfArgLiteral('CUSTOM'));
  static const tag = TransferWorkflowType._(TfArgLiteral('TAG'));
  static const delete = TransferWorkflowType._(TfArgLiteral('DELETE'));
  static const decrypt = TransferWorkflowType._(TfArgLiteral('DECRYPT'));

  static const List<TransferWorkflowType> values = [
    copy,
    custom,
    tag,
    delete,
    decrypt,
  ];
}

/// Typed helper for the `on_exception_steps.copy_step_details` block of
/// `aws_transfer_workflow` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class TransferWorkflowCopyStepDetails {
  const TransferWorkflowCopyStepDetails({
    this.name,
    this.overwriteExisting,
    this.sourceFileLocation,
    this.destinationFileLocation,
  });

  final TfArg<String>? name;

  final TransferWorkflowOverwriteExisting? overwriteExisting;

  final TfArg<String>? sourceFileLocation;

  final TransferWorkflowDestinationFileLocation? destinationFileLocation;

  Map<String, Object?> encode() => {
    'name': ?name?.toTfJson(),
    'overwrite_existing': ?overwriteExisting?.toTfJson(),
    'source_file_location': ?sourceFileLocation?.toTfJson(),
    'destination_file_location': ?destinationFileLocation?.encode(),
  };
}

/// `overwrite_existing` — derived from the provider schema description.
extension type const TransferWorkflowOverwriteExisting._(TfArg<String> _)
    implements TfArg<String> {
  TransferWorkflowOverwriteExisting.variable(String name)
    : this._(TfArg.variable(name));
  TransferWorkflowOverwriteExisting.expression(String template)
    : this._(TfArg.expression(template));
  const TransferWorkflowOverwriteExisting.arg(TfArg<String> arg) : this._(arg);

  static const trueCase = TransferWorkflowOverwriteExisting._(
    TfArgLiteral('TRUE'),
  );
  static const falseCase = TransferWorkflowOverwriteExisting._(
    TfArgLiteral('FALSE'),
  );

  static const List<TransferWorkflowOverwriteExisting> values = [
    trueCase,
    falseCase,
  ];
}

/// Typed helper for the `on_exception_steps.copy_step_details.destination_file_location` block of
/// `aws_transfer_workflow` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class TransferWorkflowDestinationFileLocation {
  const TransferWorkflowDestinationFileLocation({
    this.efsFileLocation,
    this.s3FileLocation,
  });

  final TransferWorkflowEfsFileLocation? efsFileLocation;

  final TransferWorkflowS3FileLocation? s3FileLocation;

  Map<String, Object?> encode() => {
    'efs_file_location': ?efsFileLocation?.encode(),
    's3_file_location': ?s3FileLocation?.encode(),
  };
}

/// Typed helper for the `on_exception_steps.copy_step_details.destination_file_location.efs_file_location` block of
/// `aws_transfer_workflow` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class TransferWorkflowEfsFileLocation {
  const TransferWorkflowEfsFileLocation({this.fileSystemId, this.path});

  final TfArg<String>? fileSystemId;

  final TfArg<String>? path;

  Map<String, Object?> encode() => {
    'file_system_id': ?fileSystemId?.toTfJson(),
    'path': ?path?.toTfJson(),
  };
}

/// Typed helper for the `on_exception_steps.copy_step_details.destination_file_location.s3_file_location` block of
/// `aws_transfer_workflow` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class TransferWorkflowS3FileLocation {
  const TransferWorkflowS3FileLocation({this.bucket, this.key});

  final RefTo<AwsS3Bucket>? bucket;

  final TfArg<String>? key;

  Map<String, Object?> encode() => {
    'bucket': ?bucket?.encodeAs('id').toTfJson(),
    'key': ?key?.toTfJson(),
  };
}

/// Typed helper for the `on_exception_steps.custom_step_details` block of
/// `aws_transfer_workflow` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class TransferWorkflowCustomStepDetails {
  const TransferWorkflowCustomStepDetails({
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
    'name': ?name?.toTfJson(),
    'source_file_location': ?sourceFileLocation?.toTfJson(),
    'target': ?target?.toTfJson(),
    'timeout_seconds': ?timeoutSeconds?.toTfJson(),
  };
}

/// Typed helper for the `on_exception_steps.decrypt_step_details` block of
/// `aws_transfer_workflow` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class TransferWorkflowDecryptStepDetails {
  const TransferWorkflowDecryptStepDetails({
    this.name,
    this.overwriteExisting,
    this.sourceFileLocation,
    required this.type,
    this.destinationFileLocation,
  });

  final TfArg<String>? name;

  final TransferWorkflowOverwriteExisting? overwriteExisting;

  final TfArg<String>? sourceFileLocation;

  final TransferWorkflowDecryptStepDetailsType type;

  final TransferWorkflowDestinationFileLocation? destinationFileLocation;

  Map<String, Object?> encode() => {
    'name': ?name?.toTfJson(),
    'overwrite_existing': ?overwriteExisting?.toTfJson(),
    'source_file_location': ?sourceFileLocation?.toTfJson(),
    'type': type.toTfJson(),
    'destination_file_location': ?destinationFileLocation?.encode(),
  };
}

/// `type` — derived from the provider schema description.
extension type const TransferWorkflowDecryptStepDetailsType._(TfArg<String> _)
    implements TfArg<String> {
  TransferWorkflowDecryptStepDetailsType.variable(String name)
    : this._(TfArg.variable(name));
  TransferWorkflowDecryptStepDetailsType.expression(String template)
    : this._(TfArg.expression(template));
  const TransferWorkflowDecryptStepDetailsType.arg(TfArg<String> arg)
    : this._(arg);

  static const pgp = TransferWorkflowDecryptStepDetailsType._(
    TfArgLiteral('PGP'),
  );

  static const List<TransferWorkflowDecryptStepDetailsType> values = [pgp];
}

/// Typed helper for the `on_exception_steps.delete_step_details` block of
/// `aws_transfer_workflow` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class TransferWorkflowDeleteStepDetails {
  const TransferWorkflowDeleteStepDetails({this.name, this.sourceFileLocation});

  final TfArg<String>? name;

  final TfArg<String>? sourceFileLocation;

  Map<String, Object?> encode() => {
    'name': ?name?.toTfJson(),
    'source_file_location': ?sourceFileLocation?.toTfJson(),
  };
}

/// Typed helper for the `on_exception_steps.tag_step_details` block of
/// `aws_transfer_workflow` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class TransferWorkflowTagStepDetails {
  const TransferWorkflowTagStepDetails({
    this.name,
    this.sourceFileLocation,
    this.tags,
  });

  final TfArg<String>? name;

  final TfArg<String>? sourceFileLocation;

  final List<TransferWorkflowTagStepDetailsTags>? tags;

  Map<String, Object?> encode() => {
    'name': ?name?.toTfJson(),
    'source_file_location': ?sourceFileLocation?.toTfJson(),
    if (tags != null) 'tags': [for (final e in tags!) e.encode()],
  };
}

/// Typed helper for the `on_exception_steps.tag_step_details.tags` block of
/// `aws_transfer_workflow` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class TransferWorkflowTagStepDetailsTags {
  const TransferWorkflowTagStepDetailsTags({
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

  final TransferWorkflowType type;

  final TransferWorkflowCopyStepDetails? copyStepDetails;

  final TransferWorkflowCustomStepDetails? customStepDetails;

  final TransferWorkflowDecryptStepDetails? decryptStepDetails;

  final TransferWorkflowDeleteStepDetails? deleteStepDetails;

  final TransferWorkflowTagStepDetails? tagStepDetails;

  Map<String, Object?> encode() => {
    'type': type.toTfJson(),
    'copy_step_details': ?copyStepDetails?.encode(),
    'custom_step_details': ?customStepDetails?.encode(),
    'decrypt_step_details': ?decryptStepDetails?.encode(),
    'delete_step_details': ?deleteStepDetails?.encode(),
    'tag_step_details': ?tagStepDetails?.encode(),
  };
}

/// Factory wrapper for `aws_transfer_workflow`.
final class AwsTransferWorkflow extends Resource {
  static const String tfType = 'aws_transfer_workflow';

  AwsTransferWorkflow(
    super.localName, {
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
           'description': ?description,
           'region': ?region,
           'tags': ?tags,
           if (onExceptionSteps != null)
             'on_exception_steps': TfArg.literal([
               for (final e in onExceptionSteps) e.encode(),
             ]),
           'steps': TfArg.literal([for (final e in steps) e.encode()]),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsTransferWorkflowSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsTransferWorkflow>`.
  RefTo<AwsTransferWorkflow> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}
