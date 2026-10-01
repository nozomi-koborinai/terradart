// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_chime_voice_connector`.
const Set<String> _awsChimeVoiceConnectorSensitive = <String>{};

/// Chime Voice Connector Aws enum for `aws_region`.
extension type const ChimeVoiceConnectorAwsRegion._(TfArg<String> _)
    implements TfArg<String> {
  ChimeVoiceConnectorAwsRegion.variable(String name)
    : this._(TfArg.variable(name));
  ChimeVoiceConnectorAwsRegion.expression(String template)
    : this._(TfArg.expression(template));
  const ChimeVoiceConnectorAwsRegion.arg(TfArg<String> arg) : this._(arg);

  static const usEast1 = ChimeVoiceConnectorAwsRegion._(
    TfArgLiteral('us-east-1'),
  );
  static const usWest2 = ChimeVoiceConnectorAwsRegion._(
    TfArgLiteral('us-west-2'),
  );
  static const caCentral1 = ChimeVoiceConnectorAwsRegion._(
    TfArgLiteral('ca-central-1'),
  );
  static const euCentral1 = ChimeVoiceConnectorAwsRegion._(
    TfArgLiteral('eu-central-1'),
  );
  static const euWest1 = ChimeVoiceConnectorAwsRegion._(
    TfArgLiteral('eu-west-1'),
  );
  static const euWest2 = ChimeVoiceConnectorAwsRegion._(
    TfArgLiteral('eu-west-2'),
  );
  static const apNortheast2 = ChimeVoiceConnectorAwsRegion._(
    TfArgLiteral('ap-northeast-2'),
  );
  static const apNortheast1 = ChimeVoiceConnectorAwsRegion._(
    TfArgLiteral('ap-northeast-1'),
  );
  static const apSoutheast1 = ChimeVoiceConnectorAwsRegion._(
    TfArgLiteral('ap-southeast-1'),
  );
  static const apSoutheast2 = ChimeVoiceConnectorAwsRegion._(
    TfArgLiteral('ap-southeast-2'),
  );

  static const List<ChimeVoiceConnectorAwsRegion> values = [
    usEast1,
    usWest2,
    caCentral1,
    euCentral1,
    euWest1,
    euWest2,
    apNortheast2,
    apNortheast1,
    apSoutheast1,
    apSoutheast2,
  ];
}

/// Factory wrapper for `aws_chime_voice_connector`.
final class AwsChimeVoiceConnector extends Resource {
  static const String tfType = 'aws_chime_voice_connector';

  AwsChimeVoiceConnector(
    super.localName, {
    ChimeVoiceConnectorAwsRegion? awsRegion,
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
           'aws_region': ?awsRegion,
           'name': name,
           'region': ?region,
           'require_encryption': requireEncryption,
           'tags': ?tags,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsChimeVoiceConnectorSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsChimeVoiceConnector>`.
  RefTo<AwsChimeVoiceConnector> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `outbound_host_name` attribute.
  TfRef<String> get outboundHostName =>
      TfRef.attribute<String>(this, 'outbound_host_name');

  /// Reference to `aws_region` attribute.
  TfRef<String> get awsRegion => TfRef.attribute<String>(this, 'aws_region');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `require_encryption` attribute.
  TfRef<bool> get requireEncryption =>
      TfRef.attribute<bool>(this, 'require_encryption');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}
