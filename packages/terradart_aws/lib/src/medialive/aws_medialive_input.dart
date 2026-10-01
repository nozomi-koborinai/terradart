// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../ec2/aws_security_group.dart' show AwsSecurityGroup;
import '../ec2/aws_subnet.dart' show AwsSubnet;
import '../iam/aws_iam_role.dart' show AwsIamRole;

/// Sensitive field paths for `aws_medialive_input`.
const Set<String> _awsMedialiveInputSensitive = <String>{};

/// Medialive Input enum for `type`.
extension type const MedialiveInputType._(TfArg<String> _)
    implements TfArg<String> {
  MedialiveInputType.variable(String name) : this._(TfArg.variable(name));
  MedialiveInputType.expression(String template)
    : this._(TfArg.expression(template));
  const MedialiveInputType.arg(TfArg<String> arg) : this._(arg);

  static const udpPush = MedialiveInputType._(TfArgLiteral('UDP_PUSH'));
  static const rtpPush = MedialiveInputType._(TfArgLiteral('RTP_PUSH'));
  static const rtmpPush = MedialiveInputType._(TfArgLiteral('RTMP_PUSH'));
  static const rtmpPull = MedialiveInputType._(TfArgLiteral('RTMP_PULL'));
  static const urlPull = MedialiveInputType._(TfArgLiteral('URL_PULL'));
  static const mp4File = MedialiveInputType._(TfArgLiteral('MP4_FILE'));
  static const mediaconnect = MedialiveInputType._(
    TfArgLiteral('MEDIACONNECT'),
  );
  static const inputDevice = MedialiveInputType._(TfArgLiteral('INPUT_DEVICE'));
  static const awsCdi = MedialiveInputType._(TfArgLiteral('AWS_CDI'));
  static const tsFile = MedialiveInputType._(TfArgLiteral('TS_FILE'));
  static const srtCaller = MedialiveInputType._(TfArgLiteral('SRT_CALLER'));
  static const multicast = MedialiveInputType._(TfArgLiteral('MULTICAST'));
  static const smpte2110ReceiverGroup = MedialiveInputType._(
    TfArgLiteral('SMPTE_2110_RECEIVER_GROUP'),
  );
  static const sdi = MedialiveInputType._(TfArgLiteral('SDI'));
  static const mediaconnectRouter = MedialiveInputType._(
    TfArgLiteral('MEDIACONNECT_ROUTER'),
  );
  static const srtListener = MedialiveInputType._(TfArgLiteral('SRT_LISTENER'));

  static const List<MedialiveInputType> values = [
    udpPush,
    rtpPush,
    rtmpPush,
    rtmpPull,
    urlPull,
    mp4File,
    mediaconnect,
    inputDevice,
    awsCdi,
    tsFile,
    srtCaller,
    multicast,
    smpte2110ReceiverGroup,
    sdi,
    mediaconnectRouter,
    srtListener,
  ];
}

/// Typed helper for the `destinations` block of
/// `aws_medialive_input` (derived from provider schema).
@immutable
final class MedialiveInputDestinations {
  const MedialiveInputDestinations({required this.streamName});

  final TfArg<String> streamName;

  Map<String, Object?> encode() => {'stream_name': streamName.toTfJson()};
}

/// Typed helper for the `input_devices` block of
/// `aws_medialive_input` (derived from provider schema).
@immutable
final class MedialiveInputDevices {
  const MedialiveInputDevices({required this.id});

  final TfArg<String> id;

  Map<String, Object?> encode() => {'id': id.toTfJson()};
}

/// Typed helper for the `media_connect_flows` block of
/// `aws_medialive_input` (derived from provider schema).
@immutable
final class MedialiveInputMediaConnectFlows {
  const MedialiveInputMediaConnectFlows({required this.flowArn});

  final TfArg<String> flowArn;

  Map<String, Object?> encode() => {'flow_arn': flowArn.toTfJson()};
}

/// Typed helper for the `sources` block of
/// `aws_medialive_input` (derived from provider schema).
@immutable
final class MedialiveInputSources {
  const MedialiveInputSources({
    required this.passwordParam,
    required this.url,
    required this.username,
  });

  final TfArg<String> passwordParam;

  final TfArg<String> url;

  final TfArg<String> username;

  Map<String, Object?> encode() => {
    'password_param': passwordParam.toTfJson(),
    'url': url.toTfJson(),
    'username': username.toTfJson(),
  };
}

/// Typed helper for the `vpc` block of
/// `aws_medialive_input` (derived from provider schema).
@immutable
final class MedialiveInputVpc {
  const MedialiveInputVpc({this.securityGroupIds, required this.subnetIds});

  final TfArg<List<RefTo<AwsSecurityGroup>>>? securityGroupIds;

  final TfArg<List<RefTo<AwsSubnet>>> subnetIds;

  Map<String, Object?> encode() => {
    'security_group_ids': ?securityGroupIds?.encodeAs('id').toTfJson(),
    'subnet_ids': subnetIds.encodeAs('id').toTfJson(),
  };
}

/// Factory wrapper for `aws_medialive_input`.
final class AwsMedialiveInput extends Resource {
  static const String tfType = 'aws_medialive_input';

  AwsMedialiveInput(
    super.localName, {
    TfArg<List<String>>? inputSecurityGroups,
    required TfArg<String> name,
    TfArg<String>? region,
    RefTo<AwsIamRole>? roleArn,
    TfArg<Map<String, String>>? tags,
    required MedialiveInputType type,
    List<MedialiveInputDestinations>? destinations,
    List<MedialiveInputDevices>? inputDevices,
    List<MedialiveInputMediaConnectFlows>? mediaConnectFlows,
    List<MedialiveInputSources>? sources,
    MedialiveInputVpc? vpc,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'input_security_groups': ?inputSecurityGroups,
           'name': name,
           'region': ?region,
           'role_arn': ?roleArn?.encodeAs('arn'),
           'tags': ?tags,
           'type': type,
           if (destinations != null)
             'destinations': TfArg.literal([
               for (final e in destinations) e.encode(),
             ]),
           if (inputDevices != null)
             'input_devices': TfArg.literal([
               for (final e in inputDevices) e.encode(),
             ]),
           if (mediaConnectFlows != null)
             'media_connect_flows': TfArg.literal([
               for (final e in mediaConnectFlows) e.encode(),
             ]),
           if (sources != null)
             'sources': TfArg.literal([for (final e in sources) e.encode()]),
           if (vpc != null) 'vpc': TfArg.literal(vpc.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsMedialiveInputSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsMedialiveInput>`.
  RefTo<AwsMedialiveInput> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `attached_channels` attribute.
  TfRef<List<String>> get attachedChannels =>
      TfRef.attribute<List<String>>(this, 'attached_channels');

  /// Reference to `input_class` attribute.
  TfRef<String> get inputClass => TfRef.attribute<String>(this, 'input_class');

  /// Reference to `input_partner_ids` attribute.
  TfRef<List<String>> get inputPartnerIds =>
      TfRef.attribute<List<String>>(this, 'input_partner_ids');

  /// Reference to `input_source_type` attribute.
  TfRef<String> get inputSourceType =>
      TfRef.attribute<String>(this, 'input_source_type');

  /// Reference to `input_security_groups` attribute.
  TfRef<List<String>> get inputSecurityGroups =>
      TfRef.attribute<List<String>>(this, 'input_security_groups');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `role_arn` attribute.
  TfRef<String> get roleArn => TfRef.attribute<String>(this, 'role_arn');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');

  /// Reference to `type` attribute.
  TfRef<String> get type => TfRef.attribute<String>(this, 'type');
}
