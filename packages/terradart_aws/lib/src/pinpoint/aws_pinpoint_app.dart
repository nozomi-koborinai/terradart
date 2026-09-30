// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_pinpoint_app`.
const Set<String> _awsPinpointAppSensitive = <String>{};

/// At most one of `name`, `name_prefix` on `aws_pinpoint_app`: the provider rejects
/// more than one, so each variant sets one of them and a
/// null choice sets none.
///
/// Pick one with a dot shorthand: `.name(...)`.
sealed class PinpointAppName {
  const PinpointAppName();

  /// Sets `name`.
  const factory PinpointAppName.name(TfArg<String> name) =
      PinpointAppNameChoice;

  /// Sets `name_prefix`.
  const factory PinpointAppName.namePrefix(TfArg<String> namePrefix) =
      PinpointAppNamePrefix;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();

  /// The resource arguments behind [encode], as the caller's
  /// [TfArg]s.
  Map<String, TfArg<Object?>> get argMap;
}

/// The [PinpointAppName.name] choice: sets `name`.
final class PinpointAppNameChoice extends PinpointAppName {
  const PinpointAppNameChoice(this.name);

  final TfArg<String> name;

  @override
  String get blockKey => 'name';

  @override
  Map<String, Object?> encode() => {'name': name.toTfJson()};

  @override
  Map<String, TfArg<Object?>> get argMap => {'name': name};
}

/// The [PinpointAppName.namePrefix] choice: sets `name_prefix`.
final class PinpointAppNamePrefix extends PinpointAppName {
  const PinpointAppNamePrefix(this.namePrefix);

  final TfArg<String> namePrefix;

  @override
  String get blockKey => 'name_prefix';

  @override
  Map<String, Object?> encode() => {'name_prefix': namePrefix.toTfJson()};

  @override
  Map<String, TfArg<Object?>> get argMap => {'name_prefix': namePrefix};
}

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

  final TfArg<PinpointAppCampaignHookMode>? mode;

  final TfArg<String>? webUrl;

  Map<String, Object?> encode() => {
    'lambda_function_name': ?lambdaFunctionName?.toTfJson(),
    'mode': ?mode?.toTfJson(),
    'web_url': ?webUrl?.toTfJson(),
  };
}

/// `mode` — derived from the provider schema description.
enum PinpointAppCampaignHookMode implements TerraformEnum {
  delivery('DELIVERY'),
  filter('FILTER');

  const PinpointAppCampaignHookMode(this.terraformValue);
  @override
  final String terraformValue;
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
    'daily': ?daily?.toTfJson(),
    'maximum_duration': ?maximumDuration?.toTfJson(),
    'messages_per_second': ?messagesPerSecond?.toTfJson(),
    'total': ?total?.toTfJson(),
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
    'end': ?end?.toTfJson(),
    'start': ?start?.toTfJson(),
  };
}

/// Factory wrapper for `aws_pinpoint_app`.
final class AwsPinpointApp extends Resource {
  static const String tfType = 'aws_pinpoint_app';

  AwsPinpointApp({
    required super.localName,
    PinpointAppName? name,
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
           ...?name?.argMap,
           'region': ?region,
           'tags': ?tags,
           if (campaignHook != null)
             'campaign_hook': TfArg.literal(campaignHook.encode()),
           if (limits != null) 'limits': TfArg.literal(limits.encode()),
           if (quietTime != null)
             'quiet_time': TfArg.literal(quietTime.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsPinpointAppSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsPinpointApp>`.
  RefTo<AwsPinpointApp> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `application_id` attribute.
  TfRef<String> get applicationId =>
      TfRef.attribute<String>(this, 'application_id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `name_prefix` attribute.
  TfRef<String> get namePrefixRef =>
      TfRef.attribute<String>(this, 'name_prefix');

  /// Reference to `region` attribute.
  TfRef<String> get regionRef => TfRef.attribute<String>(this, 'region');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tagsRef =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}
