// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_chime_voice_connector`.
const Set<String> _awsChimeVoiceConnectorSensitive = <String>{};

/// Factory wrapper for `aws_chime_voice_connector`.
final class AwsChimeVoiceConnector extends Resource {
  static const String tfType = 'aws_chime_voice_connector';

  AwsChimeVoiceConnector({
    required super.localName,
    TfArg<String>? awsRegion,
    required TfArg<String> name,
    TfArg<String>? region,
    required TfArg<bool> requireEncryption,
    TfArg<Map<String, String>>? tags,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (awsRegion != null) 'aws_region': awsRegion,
           'name': name,
           if (region != null) 'region': region,
           'require_encryption': requireEncryption,
           if (tags != null) 'tags': tags,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsChimeVoiceConnectorSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `outbound_host_name` attribute.
  TfRef<String> get outboundHostName =>
      TfRef.attribute<String>(this, 'outbound_host_name');
}
