// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_chime_voice_connector_origination`.
const Set<String> _awsChimeVoiceConnectorOriginationSensitive = <String>{};

/// Typed helper for the `route` block of
/// `aws_chime_voice_connector_origination` (derived from provider schema).
@immutable
final class ChimeVoiceConnectorOriginationRoute {
  const ChimeVoiceConnectorOriginationRoute({
    required this.host,
    this.port,
    required this.priority,
    required this.protocol,
    required this.weight,
  });

  final TfArg<String> host;

  final TfArg<num>? port;

  final TfArg<num> priority;

  final TfArg<String> protocol;

  final TfArg<num> weight;

  Map<String, Object?> encode() => {
    'host': host.toTfJson(),
    if (port != null) 'port': port!.toTfJson(),
    'priority': priority.toTfJson(),
    'protocol': protocol.toTfJson(),
    'weight': weight.toTfJson(),
  };
}

/// Factory wrapper for `aws_chime_voice_connector_origination`.
final class AwsChimeVoiceConnectorOrigination extends Resource {
  static const String tfType = 'aws_chime_voice_connector_origination';

  AwsChimeVoiceConnectorOrigination({
    required super.localName,
    TfArg<bool>? disabled,
    TfArg<String>? region,
    required TfArg<String> voiceConnectorId,
    required List<ChimeVoiceConnectorOriginationRoute> route,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (disabled != null) 'disabled': disabled,
           if (region != null) 'region': region,
           'voice_connector_id': voiceConnectorId,
           'route': TfArg.literal([for (final e in route) e.encode()]),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _awsChimeVoiceConnectorOriginationSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}
