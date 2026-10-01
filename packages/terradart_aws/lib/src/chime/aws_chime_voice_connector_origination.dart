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

  final TfArg<ChimeVoiceConnectorOriginationProtocol> protocol;

  final TfArg<num> weight;

  Map<String, Object?> encode() => {
    'host': host.toTfJson(),
    'port': ?port?.toTfJson(),
    'priority': priority.toTfJson(),
    'protocol': protocol.toTfJson(),
    'weight': weight.toTfJson(),
  };
}

/// `protocol` — derived from the provider schema description.
enum ChimeVoiceConnectorOriginationProtocol implements TerraformEnum {
  tcp('TCP'),
  udp('UDP');

  const ChimeVoiceConnectorOriginationProtocol(this.terraformValue);
  @override
  final String terraformValue;
}

/// Factory wrapper for `aws_chime_voice_connector_origination`.
final class AwsChimeVoiceConnectorOrigination extends Resource {
  static const String tfType = 'aws_chime_voice_connector_origination';

  AwsChimeVoiceConnectorOrigination(
    super.localName, {
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
           'disabled': ?disabled,
           'region': ?region,
           'voice_connector_id': voiceConnectorId,
           'route': TfArg.literal([for (final e in route) e.encode()]),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _awsChimeVoiceConnectorOriginationSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsChimeVoiceConnectorOrigination>`.
  RefTo<AwsChimeVoiceConnectorOrigination> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `disabled` attribute.
  TfRef<bool> get disabled => TfRef.attribute<bool>(this, 'disabled');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `voice_connector_id` attribute.
  TfRef<String> get voiceConnectorId =>
      TfRef.attribute<String>(this, 'voice_connector_id');
}
