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

  final TfArg<String>? version;

  Map<String, Object?> encode() => {
    if (version != null) 'version': version!.toTfJson(),
  };
}

/// Factory wrapper for `aws_datasync_location_smb`.
final class AwsDatasyncLocationSmb extends Resource {
  static const String tfType = 'aws_datasync_location_smb';

  AwsDatasyncLocationSmb({
    required super.localName,
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
           if (domain != null) 'domain': domain,
           'password': password,
           if (region != null) 'region': region,
           'server_hostname': serverHostname,
           'subdirectory': subdirectory,
           if (tags != null) 'tags': tags,
           'user': user,
           if (mountOptions != null)
             'mount_options': TfArg.literal(mountOptions.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsDatasyncLocationSmbSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `uri` attribute.
  TfRef<String> get uri => TfRef.attribute<String>(this, 'uri');
}
