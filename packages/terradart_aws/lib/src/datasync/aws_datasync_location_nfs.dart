// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_datasync_location_nfs`.
const Set<String> _awsDatasyncLocationNfsSensitive = <String>{};

/// Typed helper for the `mount_options` block of
/// `aws_datasync_location_nfs` (derived from provider schema).
@immutable
final class DatasyncLocationNfsMountOptions {
  const DatasyncLocationNfsMountOptions({this.version});

  final DatasyncLocationNfsVersion? version;

  @internal
  Map<String, Object?> encode() => {'version': ?version?.toTfJson()};
}

/// `version` — derived from the provider schema description.
extension type const DatasyncLocationNfsVersion._(TfArg<String> _)
    implements TfArg<String> {
  DatasyncLocationNfsVersion.variable(String name)
    : this._(TfArg.variable(name));
  DatasyncLocationNfsVersion.expression(String template)
    : this._(TfArg.expression(template));
  const DatasyncLocationNfsVersion.arg(TfArg<String> arg) : this._(arg);

  static const automatic = DatasyncLocationNfsVersion._(
    TfArgLiteral('AUTOMATIC'),
  );
  static const nfs3 = DatasyncLocationNfsVersion._(TfArgLiteral('NFS3'));
  static const nfs40 = DatasyncLocationNfsVersion._(TfArgLiteral('NFS4_0'));
  static const nfs41 = DatasyncLocationNfsVersion._(TfArgLiteral('NFS4_1'));

  static const List<DatasyncLocationNfsVersion> values = [
    automatic,
    nfs3,
    nfs40,
    nfs41,
  ];
}

/// Typed helper for the `on_prem_config` block of
/// `aws_datasync_location_nfs` (derived from provider schema).
@immutable
final class DatasyncLocationNfsOnPremConfig {
  const DatasyncLocationNfsOnPremConfig({required this.agentArns});

  final TfArg<List<String>> agentArns;

  @internal
  Map<String, Object?> encode() => {'agent_arns': agentArns.toTfJson()};
}

/// Factory wrapper for `aws_datasync_location_nfs`.
final class AwsDatasyncLocationNfs extends Resource {
  static const String tfType = 'aws_datasync_location_nfs';

  AwsDatasyncLocationNfs(
    super.localName, {
    TfArg<String>? region,
    required TfArg<String> serverHostname,
    required TfArg<String> subdirectory,
    TfArg<Map<String, String>>? tags,
    DatasyncLocationNfsMountOptions? mountOptions,
    required DatasyncLocationNfsOnPremConfig onPremConfig,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'region': ?region,
           'server_hostname': serverHostname,
           'subdirectory': subdirectory,
           'tags': ?tags,
           if (mountOptions != null)
             'mount_options': TfArg.literal(mountOptions.encode()),
           'on_prem_config': TfArg.literal(onPremConfig.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsDatasyncLocationNfsSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsDatasyncLocationNfs>`.
  RefTo<AwsDatasyncLocationNfs> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `uri` attribute.
  TfRef<String> get uri => TfRef.attribute<String>(this, 'uri');

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
}
