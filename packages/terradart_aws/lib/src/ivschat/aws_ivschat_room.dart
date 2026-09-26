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

  Map<String, Object?> encode() => {
    if (fallbackResult != null) 'fallback_result': fallbackResult!.toTfJson(),
    if (uri != null) 'uri': uri!.toTfJson(),
  };
}

/// Factory wrapper for `aws_ivschat_room`.
final class AwsIvschatRoom extends Resource {
  static const String tfType = 'aws_ivschat_room';

  AwsIvschatRoom({
    required super.localName,
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
           if (loggingConfigurationIdentifiers != null)
             'logging_configuration_identifiers':
                 loggingConfigurationIdentifiers,
           if (maximumMessageLength != null)
             'maximum_message_length': maximumMessageLength,
           if (maximumMessageRatePerSecond != null)
             'maximum_message_rate_per_second': maximumMessageRatePerSecond,
           if (name != null) 'name': name,
           if (region != null) 'region': region,
           if (tags != null) 'tags': tags,
           if (messageReviewHandler != null)
             'message_review_handler': TfArg.literal(
               messageReviewHandler.encode(),
             ),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsIvschatRoomSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');
}
