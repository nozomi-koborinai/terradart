// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

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

  final TfArg<String>? snsTopicArn;

  Map<String, Object?> encode() => {
    if (snsTopicArn != null) 'sns_topic_arn': snsTopicArn!.toTfJson(),
  };
}

/// Typed helper for the `output` block of
/// `aws_rekognition_stream_processor` (derived from provider schema).
@immutable
final class RekognitionStreamProcessorOutput {
  const RekognitionStreamProcessorOutput({
    this.kinesisDataStream,
    this.s3Destination,
  });

  final List<RekognitionStreamProcessorOutputKinesisDataStream>?
  kinesisDataStream;

  final List<RekognitionStreamProcessorOutputS3Destination>? s3Destination;

  Map<String, Object?> encode() => {
    if (kinesisDataStream != null)
      'kinesis_data_stream': [for (final e in kinesisDataStream!) e.encode()],
    if (s3Destination != null)
      's3_destination': [for (final e in s3Destination!) e.encode()],
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

  final TfArg<String>? bucket;

  final TfArg<String>? keyPrefix;

  Map<String, Object?> encode() => {
    if (bucket != null) 'bucket': bucket!.toTfJson(),
    if (keyPrefix != null) 'key_prefix': keyPrefix!.toTfJson(),
  };
}

/// Typed helper for the `regions_of_interest` block of
/// `aws_rekognition_stream_processor` (derived from provider schema).
@immutable
final class RekognitionStreamProcessorRegionsOfInterest {
  const RekognitionStreamProcessorRegionsOfInterest({
    this.boundingBox,
    this.polygon,
  });

  final List<RekognitionStreamProcessorRegionsOfInterestBoundingBox>?
  boundingBox;

  final List<RekognitionStreamProcessorRegionsOfInterestPolygon>? polygon;

  Map<String, Object?> encode() => {
    if (boundingBox != null)
      'bounding_box': [for (final e in boundingBox!) e.encode()],
    if (polygon != null) 'polygon': [for (final e in polygon!) e.encode()],
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

/// Typed helper for the `settings` block of
/// `aws_rekognition_stream_processor` (derived from provider schema).
@immutable
final class RekognitionStreamProcessorSettings {
  const RekognitionStreamProcessorSettings({
    this.connectedHome,
    this.faceSearch,
  });

  final List<RekognitionStreamProcessorSettingsConnectedHome>? connectedHome;

  final List<RekognitionStreamProcessorSettingsFaceSearch>? faceSearch;

  Map<String, Object?> encode() => {
    if (connectedHome != null)
      'connected_home': [for (final e in connectedHome!) e.encode()],
    if (faceSearch != null)
      'face_search': [for (final e in faceSearch!) e.encode()],
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

  final TfArg<List<Object?>>? labels;

  final TfArg<num>? minConfidence;

  Map<String, Object?> encode() => {
    if (labels != null) 'labels': labels!.toTfJson(),
    if (minConfidence != null) 'min_confidence': minConfidence!.toTfJson(),
  };
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
    TfArg<String>? kmsKeyId,
    required TfArg<String> name,
    TfArg<String>? region,
    required TfArg<String> roleArn,
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
           if (kmsKeyId != null) 'kms_key_id': kmsKeyId,
           'name': name,
           if (region != null) 'region': region,
           'role_arn': roleArn,
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
