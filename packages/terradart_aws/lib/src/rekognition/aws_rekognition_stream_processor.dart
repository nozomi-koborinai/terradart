// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../iam/aws_iam_role.dart' show AwsIamRole;
import '../kms/aws_kms_key.dart' show AwsKmsKey;
import '../s3/aws_s3_bucket.dart' show AwsS3Bucket;
import '../sns/aws_sns_topic.dart' show AwsSnsTopic;

/// Sensitive field paths for `aws_rekognition_stream_processor`.
const Set<String> _awsRekognitionStreamProcessorSensitive = <String>{};

/// Typed helper for the `data_sharing_preference` block of
/// `aws_rekognition_stream_processor` (derived from provider schema).
@immutable
final class RekognitionStreamProcessorDataSharingPreference {
  const RekognitionStreamProcessorDataSharingPreference({required this.optIn});

  final TfArg<bool> optIn;

  Map<String, Object?> encode() => {'opt_in': optIn.toTfJson()};
}

/// Typed helper for the `input` block of
/// `aws_rekognition_stream_processor` (derived from provider schema).
@immutable
final class RekognitionStreamProcessorInput {
  const RekognitionStreamProcessorInput({this.kinesisVideoStream});

  final List<RekognitionStreamProcessorInputKinesisVideoStream>?
  kinesisVideoStream;

  Map<String, Object?> encode() => {
    if (kinesisVideoStream != null)
      'kinesis_video_stream': [for (final e in kinesisVideoStream!) e.encode()],
  };
}

/// Typed helper for the `input.kinesis_video_stream` block of
/// `aws_rekognition_stream_processor` (derived from provider schema).
@immutable
final class RekognitionStreamProcessorInputKinesisVideoStream {
  const RekognitionStreamProcessorInputKinesisVideoStream({required this.arn});

  final TfArg<String> arn;

  Map<String, Object?> encode() => {'arn': arn.toTfJson()};
}

/// Typed helper for the `notification_channel` block of
/// `aws_rekognition_stream_processor` (derived from provider schema).
@immutable
final class RekognitionStreamProcessorNotificationChannel {
  const RekognitionStreamProcessorNotificationChannel({this.snsTopicArn});

  final RefTo<AwsSnsTopic>? snsTopicArn;

  Map<String, Object?> encode() => {
    if (snsTopicArn != null)
      'sns_topic_arn': snsTopicArn!.encodeAs('arn').toTfJson(),
  };
}

/// At most one of `kinesis_data_stream`, `s3_destination` on the `output` block of `aws_rekognition_stream_processor`: the provider rejects
/// more than one, so each variant sets one of them and a
/// null choice sets none.
///
/// Pick one with a dot shorthand: `.kinesisDataStream(...)`.
sealed class RekognitionStreamProcessorOutput {
  const RekognitionStreamProcessorOutput();

  /// Sets `kinesis_data_stream`.
  const factory RekognitionStreamProcessorOutput.kinesisDataStream(
    List<RekognitionStreamProcessorOutputKinesisDataStream> kinesisDataStream,
  ) = RekognitionStreamProcessorOutputKinesisDataStreamChoice;

  /// Sets `s3_destination`.
  const factory RekognitionStreamProcessorOutput.s3Destination(
    List<RekognitionStreamProcessorOutputS3Destination> s3Destination,
  ) = RekognitionStreamProcessorOutputS3DestinationChoice;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();
}

/// The [RekognitionStreamProcessorOutput.kinesisDataStream] choice: sets `kinesis_data_stream`.
final class RekognitionStreamProcessorOutputKinesisDataStreamChoice
    extends RekognitionStreamProcessorOutput {
  const RekognitionStreamProcessorOutputKinesisDataStreamChoice(
    this.kinesisDataStream,
  );

  final List<RekognitionStreamProcessorOutputKinesisDataStream>
  kinesisDataStream;

  @override
  String get blockKey => 'kinesis_data_stream';

  @override
  Map<String, Object?> encode() => {
    'kinesis_data_stream': [for (final e in kinesisDataStream) e.encode()],
  };
}

/// The [RekognitionStreamProcessorOutput.s3Destination] choice: sets `s3_destination`.
final class RekognitionStreamProcessorOutputS3DestinationChoice
    extends RekognitionStreamProcessorOutput {
  const RekognitionStreamProcessorOutputS3DestinationChoice(this.s3Destination);

  final List<RekognitionStreamProcessorOutputS3Destination> s3Destination;

  @override
  String get blockKey => 's3_destination';

  @override
  Map<String, Object?> encode() => {
    's3_destination': [for (final e in s3Destination) e.encode()],
  };
}

/// Typed helper for the `output.kinesis_data_stream` block of
/// `aws_rekognition_stream_processor` (derived from provider schema).
@immutable
final class RekognitionStreamProcessorOutputKinesisDataStream {
  const RekognitionStreamProcessorOutputKinesisDataStream({this.arn});

  final TfArg<String>? arn;

  Map<String, Object?> encode() => {if (arn != null) 'arn': arn!.toTfJson()};
}

/// Typed helper for the `output.s3_destination` block of
/// `aws_rekognition_stream_processor` (derived from provider schema).
@immutable
final class RekognitionStreamProcessorOutputS3Destination {
  const RekognitionStreamProcessorOutputS3Destination({
    this.bucket,
    this.keyPrefix,
  });

  final RefTo<AwsS3Bucket>? bucket;

  final TfArg<String>? keyPrefix;

  Map<String, Object?> encode() => {
    if (bucket != null) 'bucket': bucket!.encodeAs('id').toTfJson(),
    if (keyPrefix != null) 'key_prefix': keyPrefix!.toTfJson(),
  };
}

/// At most one of `bounding_box`, `polygon` on the `regions_of_interest` block of `aws_rekognition_stream_processor`: the provider rejects
/// more than one, so each variant sets one of them and a
/// null choice sets none.
///
/// Pick one with a dot shorthand: `.boundingBox(...)`.
sealed class RekognitionStreamProcessorRegionsOfInterest {
  const RekognitionStreamProcessorRegionsOfInterest();

  /// Sets `bounding_box`.
  const factory RekognitionStreamProcessorRegionsOfInterest.boundingBox(
    List<RekognitionStreamProcessorRegionsOfInterestBoundingBox> boundingBox,
  ) = RekognitionStreamProcessorRegionsOfInterestBoundingBoxChoice;

  /// Sets `polygon`.
  const factory RekognitionStreamProcessorRegionsOfInterest.polygon(
    List<RekognitionStreamProcessorRegionsOfInterestPolygon> polygon,
  ) = RekognitionStreamProcessorRegionsOfInterestPolygonChoice;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();
}

/// The [RekognitionStreamProcessorRegionsOfInterest.boundingBox] choice: sets `bounding_box`.
final class RekognitionStreamProcessorRegionsOfInterestBoundingBoxChoice
    extends RekognitionStreamProcessorRegionsOfInterest {
  const RekognitionStreamProcessorRegionsOfInterestBoundingBoxChoice(
    this.boundingBox,
  );

  final List<RekognitionStreamProcessorRegionsOfInterestBoundingBox>
  boundingBox;

  @override
  String get blockKey => 'bounding_box';

  @override
  Map<String, Object?> encode() => {
    'bounding_box': [for (final e in boundingBox) e.encode()],
  };
}

/// The [RekognitionStreamProcessorRegionsOfInterest.polygon] choice: sets `polygon`.
final class RekognitionStreamProcessorRegionsOfInterestPolygonChoice
    extends RekognitionStreamProcessorRegionsOfInterest {
  const RekognitionStreamProcessorRegionsOfInterestPolygonChoice(this.polygon);

  final List<RekognitionStreamProcessorRegionsOfInterestPolygon> polygon;

  @override
  String get blockKey => 'polygon';

  @override
  Map<String, Object?> encode() => {
    'polygon': [for (final e in polygon) e.encode()],
  };
}

/// Typed helper for the `regions_of_interest.bounding_box` block of
/// `aws_rekognition_stream_processor` (derived from provider schema).
@immutable
final class RekognitionStreamProcessorRegionsOfInterestBoundingBox {
  const RekognitionStreamProcessorRegionsOfInterestBoundingBox({
    this.height,
    this.left,
    this.top,
    this.width,
  });

  final TfArg<num>? height;

  final TfArg<num>? left;

  final TfArg<num>? top;

  final TfArg<num>? width;

  Map<String, Object?> encode() => {
    if (height != null) 'height': height!.toTfJson(),
    if (left != null) 'left': left!.toTfJson(),
    if (top != null) 'top': top!.toTfJson(),
    if (width != null) 'width': width!.toTfJson(),
  };
}

/// Typed helper for the `regions_of_interest.polygon` block of
/// `aws_rekognition_stream_processor` (derived from provider schema).
@immutable
final class RekognitionStreamProcessorRegionsOfInterestPolygon {
  const RekognitionStreamProcessorRegionsOfInterestPolygon({this.x, this.y});

  final TfArg<num>? x;

  final TfArg<num>? y;

  Map<String, Object?> encode() => {
    if (x != null) 'x': x!.toTfJson(),
    if (y != null) 'y': y!.toTfJson(),
  };
}

/// At most one of `connected_home`, `face_search` on the `settings` block of `aws_rekognition_stream_processor`: the provider rejects
/// more than one, so each variant sets one of them and a
/// null choice sets none.
///
/// Pick one with a dot shorthand: `.connectedHome(...)`.
sealed class RekognitionStreamProcessorSettings {
  const RekognitionStreamProcessorSettings();

  /// Sets `connected_home`.
  const factory RekognitionStreamProcessorSettings.connectedHome(
    List<RekognitionStreamProcessorSettingsConnectedHome> connectedHome,
  ) = RekognitionStreamProcessorSettingsConnectedHomeChoice;

  /// Sets `face_search`.
  const factory RekognitionStreamProcessorSettings.faceSearch(
    List<RekognitionStreamProcessorSettingsFaceSearch> faceSearch,
  ) = RekognitionStreamProcessorSettingsFaceSearchChoice;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();
}

/// The [RekognitionStreamProcessorSettings.connectedHome] choice: sets `connected_home`.
final class RekognitionStreamProcessorSettingsConnectedHomeChoice
    extends RekognitionStreamProcessorSettings {
  const RekognitionStreamProcessorSettingsConnectedHomeChoice(
    this.connectedHome,
  );

  final List<RekognitionStreamProcessorSettingsConnectedHome> connectedHome;

  @override
  String get blockKey => 'connected_home';

  @override
  Map<String, Object?> encode() => {
    'connected_home': [for (final e in connectedHome) e.encode()],
  };
}

/// The [RekognitionStreamProcessorSettings.faceSearch] choice: sets `face_search`.
final class RekognitionStreamProcessorSettingsFaceSearchChoice
    extends RekognitionStreamProcessorSettings {
  const RekognitionStreamProcessorSettingsFaceSearchChoice(this.faceSearch);

  final List<RekognitionStreamProcessorSettingsFaceSearch> faceSearch;

  @override
  String get blockKey => 'face_search';

  @override
  Map<String, Object?> encode() => {
    'face_search': [for (final e in faceSearch) e.encode()],
  };
}

/// Typed helper for the `settings.connected_home` block of
/// `aws_rekognition_stream_processor` (derived from provider schema).
@immutable
final class RekognitionStreamProcessorSettingsConnectedHome {
  const RekognitionStreamProcessorSettingsConnectedHome({
    this.labels,
    this.minConfidence,
  });

  final List<TfArg<RekognitionStreamProcessorSettingsConnectedHomeLabels>>?
  labels;

  final TfArg<num>? minConfidence;

  Map<String, Object?> encode() => {
    if (labels != null) 'labels': [for (final e in labels!) e.toTfJson()],
    if (minConfidence != null) 'min_confidence': minConfidence!.toTfJson(),
  };
}

/// `labels` — derived from the provider schema description.
enum RekognitionStreamProcessorSettingsConnectedHomeLabels
    implements TerraformEnum {
  person('PERSON'),
  pet('PET'),
  package('PACKAGE'),
  all('ALL');

  const RekognitionStreamProcessorSettingsConnectedHomeLabels(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `settings.face_search` block of
/// `aws_rekognition_stream_processor` (derived from provider schema).
@immutable
final class RekognitionStreamProcessorSettingsFaceSearch {
  const RekognitionStreamProcessorSettingsFaceSearch({
    required this.collectionId,
    this.faceMatchThreshold,
  });

  final TfArg<String> collectionId;

  final TfArg<num>? faceMatchThreshold;

  Map<String, Object?> encode() => {
    'collection_id': collectionId.toTfJson(),
    if (faceMatchThreshold != null)
      'face_match_threshold': faceMatchThreshold!.toTfJson(),
  };
}

/// Factory wrapper for `aws_rekognition_stream_processor`.
final class AwsRekognitionStreamProcessor extends Resource {
  static const String tfType = 'aws_rekognition_stream_processor';

  AwsRekognitionStreamProcessor({
    required super.localName,
    RefTo<AwsKmsKey>? kmsKeyId,
    required TfArg<String> name,
    TfArg<String>? region,
    required RefTo<AwsIamRole> roleArn,
    TfArg<Map<String, String>>? tags,
    List<RekognitionStreamProcessorDataSharingPreference>?
    dataSharingPreference,
    List<RekognitionStreamProcessorInput>? input,
    List<RekognitionStreamProcessorNotificationChannel>? notificationChannel,
    List<RekognitionStreamProcessorOutput>? output,
    List<RekognitionStreamProcessorRegionsOfInterest>? regionsOfInterest,
    List<RekognitionStreamProcessorSettings>? settings,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (kmsKeyId != null) 'kms_key_id': kmsKeyId.encodeAs('arn'),
           'name': name,
           if (region != null) 'region': region,
           'role_arn': roleArn.encodeAs('arn'),
           if (tags != null) 'tags': tags,
           if (dataSharingPreference != null)
             'data_sharing_preference': TfArg.literal([
               for (final e in dataSharingPreference) e.encode(),
             ]),
           if (input != null)
             'input': TfArg.literal([for (final e in input) e.encode()]),
           if (notificationChannel != null)
             'notification_channel': TfArg.literal([
               for (final e in notificationChannel) e.encode(),
             ]),
           if (output != null)
             'output': TfArg.literal([for (final e in output) e.encode()]),
           if (regionsOfInterest != null)
             'regions_of_interest': TfArg.literal([
               for (final e in regionsOfInterest) e.encode(),
             ]),
           if (settings != null)
             'settings': TfArg.literal([for (final e in settings) e.encode()]),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsRekognitionStreamProcessorSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsRekognitionStreamProcessor>`.
  RefTo<AwsRekognitionStreamProcessor> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `stream_processor_arn` attribute.
  TfRef<String> get streamProcessorArn =>
      TfRef.attribute<String>(this, 'stream_processor_arn');

  /// Reference to `tags_all` attribute.
  TfRef<Map<String, String>> get tagsAll =>
      TfRef.attribute<Map<String, String>>(this, 'tags_all');
}
