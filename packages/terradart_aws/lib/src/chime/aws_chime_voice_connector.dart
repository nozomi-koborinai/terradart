// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_chime_voice_connector`.
const Set<String> _awsChimeVoiceConnectorSensitive = <String>{};

/// Chime Voice Connector Aws enum for `aws_region`.
enum ChimeVoiceConnectorAwsRegion implements TerraformEnum {
  usEast1('us-east-1'),
  usWest2('us-west-2'),
  caCentral1('ca-central-1'),
  euCentral1('eu-central-1'),
  euWest1('eu-west-1'),
  euWest2('eu-west-2'),
  apNortheast2('ap-northeast-2'),
  apNortheast1('ap-northeast-1'),
  apSoutheast1('ap-southeast-1'),
  apSoutheast2('ap-southeast-2');

  const ChimeVoiceConnectorAwsRegion(this.terraformValue);
  @override
  final String terraformValue;
}

/// Factory wrapper for `aws_chime_voice_connector`.
final class AwsChimeVoiceConnector extends Resource {
  static const String tfType = 'aws_chime_voice_connector';

  AwsChimeVoiceConnector({
    required super.localName,
    TfArg<ChimeVoiceConnectorAwsRegion>? awsRegion,
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

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsChimeVoiceConnector>`.
  RefTo<AwsChimeVoiceConnector> get ref => RefTo.of(this);

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
