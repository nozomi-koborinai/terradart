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
enum MedialiveInputType implements TerraformEnum {
  udpPush('UDP_PUSH'),
  rtpPush('RTP_PUSH'),
  rtmpPush('RTMP_PUSH'),
  rtmpPull('RTMP_PULL'),
  urlPull('URL_PULL'),
  mp4File('MP4_FILE'),
  mediaconnect('MEDIACONNECT'),
  inputDevice('INPUT_DEVICE'),
  awsCdi('AWS_CDI'),
  tsFile('TS_FILE'),
  srtCaller('SRT_CALLER'),
  multicast('MULTICAST'),
  smpte2110ReceiverGroup('SMPTE_2110_RECEIVER_GROUP'),
  sdi('SDI'),
  mediaconnectRouter('MEDIACONNECT_ROUTER'),
  srtListener('SRT_LISTENER');

  const MedialiveInputType(this.terraformValue);
  @override
  final String terraformValue;
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

  AwsMedialiveInput({
    required super.localName,
    TfArg<List<String>>? inputSecurityGroups,
    required TfArg<String> name,
    TfArg<String>? region,
    RefTo<AwsIamRole>? roleArn,
    TfArg<Map<String, String>>? tags,
    required TfArg<MedialiveInputType> type,
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
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

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
  TfRef<List<String>> get inputSecurityGroupsRef =>
      TfRef.attribute<List<String>>(this, 'input_security_groups');

  /// Reference to `region` attribute.
  TfRef<String> get regionRef => TfRef.attribute<String>(this, 'region');

  /// Reference to `role_arn` attribute.
  TfRef<String> get roleArnRef => TfRef.attribute<String>(this, 'role_arn');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tagsRef =>
      TfRef.attribute<Map<String, String>>(this, 'tags');

  /// Reference to `type` attribute.
  TfRef<String> get typeRef => TfRef.attribute<String>(this, 'type');
}
