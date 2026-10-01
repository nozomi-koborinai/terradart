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

  final List<RekognitionStreamProcessorKinesisVideoStream>? kinesisVideoStream;

  Map<String, Object?> encode() => {
    if (kinesisVideoStream != null)
      'kinesis_video_stream': [for (final e in kinesisVideoStream!) e.encode()],
  };
}

/// Typed helper for the `input.kinesis_video_stream` block of
/// `aws_rekognition_stream_processor` (derived from provider schema).
@immutable
final class RekognitionStreamProcessorKinesisVideoStream {
  const RekognitionStreamProcessorKinesisVideoStream({required this.arn});

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
    'sns_topic_arn': ?snsTopicArn?.encodeAs('arn').toTfJson(),
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
    List<RekognitionStreamProcessorKinesisDataStream> kinesisDataStream,
  ) = RekognitionStreamProcessorOutputKinesisDataStream;

  /// Sets `s3_destination`.
  const factory RekognitionStreamProcessorOutput.s3Destination(
    List<RekognitionStreamProcessorS3Destination> s3Destination,
  ) = RekognitionStreamProcessorOutputS3Destination;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();
}

/// The [RekognitionStreamProcessorOutput.kinesisDataStream] choice: sets `kinesis_data_stream`.
final class RekognitionStreamProcessorOutputKinesisDataStream
    extends RekognitionStreamProcessorOutput {
  const RekognitionStreamProcessorOutputKinesisDataStream(
    this.kinesisDataStream,
  );

  final List<RekognitionStreamProcessorKinesisDataStream> kinesisDataStream;

  @override
  String get blockKey => 'kinesis_data_stream';

  @override
  Map<String, Object?> encode() => {
    'kinesis_data_stream': [for (final e in kinesisDataStream) e.encode()],
  };
}

/// The [RekognitionStreamProcessorOutput.s3Destination] choice: sets `s3_destination`.
final class RekognitionStreamProcessorOutputS3Destination
    extends RekognitionStreamProcessorOutput {
  const RekognitionStreamProcessorOutputS3Destination(this.s3Destination);

  final List<RekognitionStreamProcessorS3Destination> s3Destination;

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
final class RekognitionStreamProcessorKinesisDataStream {
  const RekognitionStreamProcessorKinesisDataStream({this.arn});

  final TfArg<String>? arn;

  Map<String, Object?> encode() => {'arn': ?arn?.toTfJson()};
}

/// Typed helper for the `output.s3_destination` block of
/// `aws_rekognition_stream_processor` (derived from provider schema).
@immutable
final class RekognitionStreamProcessorS3Destination {
  const RekognitionStreamProcessorS3Destination({this.bucket, this.keyPrefix});

  final RefTo<AwsS3Bucket>? bucket;

  final TfArg<String>? keyPrefix;

  Map<String, Object?> encode() => {
    'bucket': ?bucket?.encodeAs('id').toTfJson(),
    'key_prefix': ?keyPrefix?.toTfJson(),
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
    List<RekognitionStreamProcessorBoundingBox> boundingBox,
  ) = RekognitionStreamProcessorRegionsOfInterestBoundingBox;

  /// Sets `polygon`.
  const factory RekognitionStreamProcessorRegionsOfInterest.polygon(
    List<RekognitionStreamProcessorPolygon> polygon,
  ) = RekognitionStreamProcessorRegionsOfInterestPolygon;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();
}

/// The [RekognitionStreamProcessorRegionsOfInterest.boundingBox] choice: sets `bounding_box`.
final class RekognitionStreamProcessorRegionsOfInterestBoundingBox
    extends RekognitionStreamProcessorRegionsOfInterest {
  const RekognitionStreamProcessorRegionsOfInterestBoundingBox(
    this.boundingBox,
  );

  final List<RekognitionStreamProcessorBoundingBox> boundingBox;

  @override
  String get blockKey => 'bounding_box';

  @override
  Map<String, Object?> encode() => {
    'bounding_box': [for (final e in boundingBox) e.encode()],
  };
}

/// The [RekognitionStreamProcessorRegionsOfInterest.polygon] choice: sets `polygon`.
final class RekognitionStreamProcessorRegionsOfInterestPolygon
    extends RekognitionStreamProcessorRegionsOfInterest {
  const RekognitionStreamProcessorRegionsOfInterestPolygon(this.polygon);

  final List<RekognitionStreamProcessorPolygon> polygon;

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
final class RekognitionStreamProcessorBoundingBox {
  const RekognitionStreamProcessorBoundingBox({
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
    'height': ?height?.toTfJson(),
    'left': ?left?.toTfJson(),
    'top': ?top?.toTfJson(),
    'width': ?width?.toTfJson(),
  };
}

/// Typed helper for the `regions_of_interest.polygon` block of
/// `aws_rekognition_stream_processor` (derived from provider schema).
@immutable
final class RekognitionStreamProcessorPolygon {
  const RekognitionStreamProcessorPolygon({this.x, this.y});

  final TfArg<num>? x;

  final TfArg<num>? y;

  Map<String, Object?> encode() => {'x': ?x?.toTfJson(), 'y': ?y?.toTfJson()};
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
    List<RekognitionStreamProcessorConnectedHome> connectedHome,
  ) = RekognitionStreamProcessorSettingsConnectedHome;

  /// Sets `face_search`.
  const factory RekognitionStreamProcessorSettings.faceSearch(
    List<RekognitionStreamProcessorFaceSearch> faceSearch,
  ) = RekognitionStreamProcessorSettingsFaceSearch;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();
}

/// The [RekognitionStreamProcessorSettings.connectedHome] choice: sets `connected_home`.
final class RekognitionStreamProcessorSettingsConnectedHome
    extends RekognitionStreamProcessorSettings {
  const RekognitionStreamProcessorSettingsConnectedHome(this.connectedHome);

  final List<RekognitionStreamProcessorConnectedHome> connectedHome;

  @override
  String get blockKey => 'connected_home';

  @override
  Map<String, Object?> encode() => {
    'connected_home': [for (final e in connectedHome) e.encode()],
  };
}

/// The [RekognitionStreamProcessorSettings.faceSearch] choice: sets `face_search`.
final class RekognitionStreamProcessorSettingsFaceSearch
    extends RekognitionStreamProcessorSettings {
  const RekognitionStreamProcessorSettingsFaceSearch(this.faceSearch);

  final List<RekognitionStreamProcessorFaceSearch> faceSearch;

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
final class RekognitionStreamProcessorConnectedHome {
  const RekognitionStreamProcessorConnectedHome({
    this.labels,
    this.minConfidence,
  });

  final List<TfArg<RekognitionStreamProcessorLabels>>? labels;

  final TfArg<num>? minConfidence;

  Map<String, Object?> encode() => {
    if (labels != null) 'labels': [for (final e in labels!) e.toTfJson()],
    'min_confidence': ?minConfidence?.toTfJson(),
  };
}

/// `labels` — derived from the provider schema description.
enum RekognitionStreamProcessorLabels implements TerraformEnum {
  person('PERSON'),
  pet('PET'),
  package('PACKAGE'),
  all('ALL');

  const RekognitionStreamProcessorLabels(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `settings.face_search` block of
/// `aws_rekognition_stream_processor` (derived from provider schema).
@immutable
final class RekognitionStreamProcessorFaceSearch {
  const RekognitionStreamProcessorFaceSearch({
    required this.collectionId,
    this.faceMatchThreshold,
  });

  final TfArg<String> collectionId;

  final TfArg<num>? faceMatchThreshold;

  Map<String, Object?> encode() => {
    'collection_id': collectionId.toTfJson(),
    'face_match_threshold': ?faceMatchThreshold?.toTfJson(),
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
           'kms_key_id': ?kmsKeyId?.encodeAs('arn'),
           'name': name,
           'region': ?region,
           'role_arn': roleArn.encodeAs('arn'),
           'tags': ?tags,
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
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `stream_processor_arn` attribute.
  TfRef<String> get streamProcessorArn =>
      TfRef.attribute<String>(this, 'stream_processor_arn');

  /// Reference to `tags_all` attribute.
  TfRef<Map<String, String>> get tagsAll =>
      TfRef.attribute<Map<String, String>>(this, 'tags_all');

  /// Reference to `kms_key_id` attribute.
  TfRef<String> get kmsKeyId => TfRef.attribute<String>(this, 'kms_key_id');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `role_arn` attribute.
  TfRef<String> get roleArn => TfRef.attribute<String>(this, 'role_arn');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}
