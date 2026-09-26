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

  final TfArg<String>? version;

  Map<String, Object?> encode() => {
    if (version != null) 'version': version!.toTfJson(),
  };
}

/// Typed helper for the `on_prem_config` block of
/// `aws_datasync_location_nfs` (derived from provider schema).
@immutable
final class DatasyncLocationNfsOnPremConfig {
  const DatasyncLocationNfsOnPremConfig({required this.agentArns});

  final TfArg<List<Object?>> agentArns;

  Map<String, Object?> encode() => {'agent_arns': agentArns.toTfJson()};
}

/// Factory wrapper for `aws_datasync_location_nfs`.
final class AwsDatasyncLocationNfs extends Resource {
  static const String tfType = 'aws_datasync_location_nfs';

  AwsDatasyncLocationNfs({
    required super.localName,
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
           if (region != null) 'region': region,
           'server_hostname': serverHostname,
           'subdirectory': subdirectory,
           if (tags != null) 'tags': tags,
           if (mountOptions != null)
             'mount_options': TfArg.literal(mountOptions.encode()),
           'on_prem_config': TfArg.literal(onPremConfig.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsDatasyncLocationNfsSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `uri` attribute.
  TfRef<String> get uri => TfRef.attribute<String>(this, 'uri');
}
