// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_directory_service_ip_routes_exclusive`.
const Set<String> _awsDirectoryServiceIpRoutesExclusiveSensitive = <String>{};

/// Typed helper for the `ip_route` block of
/// `aws_directory_service_ip_routes_exclusive` (derived from provider schema).
@immutable
final class DirectoryServiceIpRoutesExclusiveIpRoute {
  const DirectoryServiceIpRoutesExclusiveIpRoute({
    this.cidrIp,
    this.cidrIpv6,
    this.description,
  });

  final TfArg<String>? cidrIp;

  final TfArg<String>? cidrIpv6;

  final TfArg<String>? description;

  @internal
  Map<String, Object?> encode() => {
    'cidr_ip': ?cidrIp?.toTfJson(),
    'cidr_ipv6': ?cidrIpv6?.toTfJson(),
    'description': ?description?.toTfJson(),
  };
}

/// Factory wrapper for `aws_directory_service_ip_routes_exclusive`.
final class AwsDirectoryServiceIpRoutesExclusive extends Resource {
  static const String tfType = 'aws_directory_service_ip_routes_exclusive';

  AwsDirectoryServiceIpRoutesExclusive(
    super.localName, {
    required TfArg<String> directoryId,
    TfArg<String>? region,
    TfArg<bool>? updateSecurityGroupForDirectoryControllers,
    List<DirectoryServiceIpRoutesExclusiveIpRoute>? ipRoute,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'directory_id': directoryId,
           'region': ?region,
           'update_security_group_for_directory_controllers':
               ?updateSecurityGroupForDirectoryControllers,
           if (ipRoute != null)
             'ip_route': TfArg.literal([for (final e in ipRoute) e.encode()]),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _awsDirectoryServiceIpRoutesExclusiveSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsDirectoryServiceIpRoutesExclusive>`.
  RefTo<AwsDirectoryServiceIpRoutesExclusive> get ref => RefTo.of(this);

  /// Reference to `directory_id` attribute.
  TfRef<String> get directoryId =>
      TfRef.attribute<String>(this, 'directory_id');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `update_security_group_for_directory_controllers` attribute.
  TfRef<bool> get updateSecurityGroupForDirectoryControllers =>
      TfRef.attribute<bool>(
        this,
        'update_security_group_for_directory_controllers',
      );
}
