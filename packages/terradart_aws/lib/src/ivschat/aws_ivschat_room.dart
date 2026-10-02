// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_ivschat_room`.
const Set<String> _awsIvschatRoomSensitive = <String>{};

/// Typed helper for the `message_review_handler` block of
/// `aws_ivschat_room` (derived from provider schema).
@immutable
final class IvschatRoomMessageReviewHandler {
  const IvschatRoomMessageReviewHandler({this.fallbackResult, this.uri});

  final TfArg<String>? fallbackResult;

  final TfArg<String>? uri;

  @internal
  Map<String, Object?> encode() => {
    'fallback_result': ?fallbackResult?.toTfJson(),
    'uri': ?uri?.toTfJson(),
  };
}

/// Factory wrapper for `aws_ivschat_room`.
final class AwsIvschatRoom extends Resource {
  static const String tfType = 'aws_ivschat_room';

  AwsIvschatRoom(
    super.localName, {
    TfArg<List<String>>? loggingConfigurationIdentifiers,
    TfArg<num>? maximumMessageLength,
    TfArg<num>? maximumMessageRatePerSecond,
    TfArg<String>? name,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    IvschatRoomMessageReviewHandler? messageReviewHandler,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'logging_configuration_identifiers':
               ?loggingConfigurationIdentifiers,
           'maximum_message_length': ?maximumMessageLength,
           'maximum_message_rate_per_second': ?maximumMessageRatePerSecond,
           'name': ?name,
           'region': ?region,
           'tags': ?tags,
           if (messageReviewHandler != null)
             'message_review_handler': TfArg.literal(
               messageReviewHandler.encode(),
             ),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsIvschatRoomSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsIvschatRoom>`.
  RefTo<AwsIvschatRoom> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `logging_configuration_identifiers` attribute.
  TfRef<List<String>> get loggingConfigurationIdentifiers =>
      TfRef.attribute<List<String>>(this, 'logging_configuration_identifiers');

  /// Reference to `maximum_message_length` attribute.
  TfRef<num> get maximumMessageLength =>
      TfRef.attribute<num>(this, 'maximum_message_length');

  /// Reference to `maximum_message_rate_per_second` attribute.
  TfRef<num> get maximumMessageRatePerSecond =>
      TfRef.attribute<num>(this, 'maximum_message_rate_per_second');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}
