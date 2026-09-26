// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_pinpoint_app`.
const Set<String> _awsPinpointAppSensitive = <String>{};

/// Typed helper for the `campaign_hook` block of
/// `aws_pinpoint_app` (derived from provider schema).
@immutable
final class PinpointAppCampaignHook {
  const PinpointAppCampaignHook({
    this.lambdaFunctionName,
    this.mode,
    this.webUrl,
  });

  final TfArg<String>? lambdaFunctionName;

  final TfArg<String>? mode;

  final TfArg<String>? webUrl;

  Map<String, Object?> encode() => {
    if (lambdaFunctionName != null)
      'lambda_function_name': lambdaFunctionName!.toTfJson(),
    if (mode != null) 'mode': mode!.toTfJson(),
    if (webUrl != null) 'web_url': webUrl!.toTfJson(),
  };
}

/// Typed helper for the `limits` block of
/// `aws_pinpoint_app` (derived from provider schema).
@immutable
final class PinpointAppLimits {
  const PinpointAppLimits({
    this.daily,
    this.maximumDuration,
    this.messagesPerSecond,
    this.total,
  });

  final TfArg<num>? daily;

  final TfArg<num>? maximumDuration;

  final TfArg<num>? messagesPerSecond;

  final TfArg<num>? total;

  Map<String, Object?> encode() => {
    if (daily != null) 'daily': daily!.toTfJson(),
    if (maximumDuration != null)
      'maximum_duration': maximumDuration!.toTfJson(),
    if (messagesPerSecond != null)
      'messages_per_second': messagesPerSecond!.toTfJson(),
    if (total != null) 'total': total!.toTfJson(),
  };
}

/// Typed helper for the `quiet_time` block of
/// `aws_pinpoint_app` (derived from provider schema).
@immutable
final class PinpointAppQuietTime {
  const PinpointAppQuietTime({this.end, this.start});

  final TfArg<String>? end;

  final TfArg<String>? start;

  Map<String, Object?> encode() => {
    if (end != null) 'end': end!.toTfJson(),
    if (start != null) 'start': start!.toTfJson(),
  };
}

/// Factory wrapper for `aws_pinpoint_app`.
final class AwsPinpointApp extends Resource {
  static const String tfType = 'aws_pinpoint_app';

  AwsPinpointApp({
    required super.localName,
    TfArg<String>? name,
    TfArg<String>? namePrefix,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    PinpointAppCampaignHook? campaignHook,
    PinpointAppLimits? limits,
    PinpointAppQuietTime? quietTime,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (name != null) 'name': name,
           if (namePrefix != null) 'name_prefix': namePrefix,
           if (region != null) 'region': region,
           if (tags != null) 'tags': tags,
           if (campaignHook != null)
             'campaign_hook': TfArg.literal(campaignHook.encode()),
           if (limits != null) 'limits': TfArg.literal(limits.encode()),
           if (quietTime != null)
             'quiet_time': TfArg.literal(quietTime.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsPinpointAppSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `application_id` attribute.
  TfRef<String> get applicationId =>
      TfRef.attribute<String>(this, 'application_id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');
}
