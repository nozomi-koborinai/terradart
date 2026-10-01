// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_datasync_location_smb`.
const Set<String> _awsDatasyncLocationSmbSensitive = <String>{'password'};

/// Typed helper for the `mount_options` block of
/// `aws_datasync_location_smb` (derived from provider schema).
@immutable
final class DatasyncLocationSmbMountOptions {
  const DatasyncLocationSmbMountOptions({this.version});

  final DatasyncLocationSmbVersion? version;

  Map<String, Object?> encode() => {'version': ?version?.toTfJson()};
}

/// `version` — derived from the provider schema description.
extension type const DatasyncLocationSmbVersion._(TfArg<String> _)
    implements TfArg<String> {
  DatasyncLocationSmbVersion.variable(String name)
    : this._(TfArg.variable(name));
  DatasyncLocationSmbVersion.expression(String template)
    : this._(TfArg.expression(template));
  const DatasyncLocationSmbVersion.arg(TfArg<String> arg) : this._(arg);

  static const automatic = DatasyncLocationSmbVersion._(
    TfArgLiteral('AUTOMATIC'),
  );
  static const smb2 = DatasyncLocationSmbVersion._(TfArgLiteral('SMB2'));
  static const smb3 = DatasyncLocationSmbVersion._(TfArgLiteral('SMB3'));
  static const smb1 = DatasyncLocationSmbVersion._(TfArgLiteral('SMB1'));
  static const smb20 = DatasyncLocationSmbVersion._(TfArgLiteral('SMB2_0'));

  static const List<DatasyncLocationSmbVersion> values = [
    automatic,
    smb2,
    smb3,
    smb1,
    smb20,
  ];
}

/// Factory wrapper for `aws_datasync_location_smb`.
final class AwsDatasyncLocationSmb extends Resource {
  static const String tfType = 'aws_datasync_location_smb';

  AwsDatasyncLocationSmb(
    super.localName, {
    required TfArg<List<String>> agentArns,
    TfArg<String>? domain,
    required TfArg<String> password,
    TfArg<String>? region,
    required TfArg<String> serverHostname,
    required TfArg<String> subdirectory,
    TfArg<Map<String, String>>? tags,
    required TfArg<String> user,
    DatasyncLocationSmbMountOptions? mountOptions,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'agent_arns': agentArns,
           'domain': ?domain,
           'password': password,
           'region': ?region,
           'server_hostname': serverHostname,
           'subdirectory': subdirectory,
           'tags': ?tags,
           'user': user,
           if (mountOptions != null)
             'mount_options': TfArg.literal(mountOptions.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsDatasyncLocationSmbSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsDatasyncLocationSmb>`.
  RefTo<AwsDatasyncLocationSmb> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `uri` attribute.
  TfRef<String> get uri => TfRef.attribute<String>(this, 'uri');

  /// Reference to `agent_arns` attribute.
  TfRef<List<String>> get agentArns =>
      TfRef.attribute<List<String>>(this, 'agent_arns');

  /// Reference to `domain` attribute.
  TfRef<String> get domain => TfRef.attribute<String>(this, 'domain');

  /// Reference to `password` attribute.
  TfRef<String> get password => TfRef.attribute<String>(this, 'password');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `server_hostname` attribute.
  TfRef<String> get serverHostname =>
      TfRef.attribute<String>(this, 'server_hostname');

  /// Reference to `subdirectory` attribute.
  TfRef<String> get subdirectory =>
      TfRef.attribute<String>(this, 'subdirectory');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');

  /// Reference to `user` attribute.
  TfRef<String> get user => TfRef.attribute<String>(this, 'user');
}
