// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_directory_service_ip_route`.
const Set<String> _awsDirectoryServiceIpRouteSensitive = <String>{};

/// Exactly one of `cidr_ip`, `cidr_ipv6` on `aws_directory_service_ip_route`: the provider rejects
/// none and more than one, so each variant sets one of them.
///
/// Pick one with a dot shorthand: `.cidrIp(...)`.
sealed class DirectoryServiceIpRouteCidr {
  const DirectoryServiceIpRouteCidr();

  /// Sets `cidr_ip`.
  const factory DirectoryServiceIpRouteCidr.cidrIp(TfArg<String> cidrIp) =
      DirectoryServiceIpRouteCidrIp;

  /// Sets `cidr_ipv6`.
  const factory DirectoryServiceIpRouteCidr.cidrIpv6(TfArg<String> cidrIpv6) =
      DirectoryServiceIpRouteCidrIpv6;

  /// The Terraform argument this choice sets.
  @internal
  String get blockKey;

  @internal
  Map<String, Object?> encode();

  /// The resource arguments behind [encode], as the caller's
  /// [TfArg]s.
  @internal
  Map<String, TfArg<Object?>> get argMap;
}

/// The [DirectoryServiceIpRouteCidr.cidrIp] choice: sets `cidr_ip`.
final class DirectoryServiceIpRouteCidrIp extends DirectoryServiceIpRouteCidr {
  const DirectoryServiceIpRouteCidrIp(this.cidrIp);

  final TfArg<String> cidrIp;

  @internal
  @override
  String get blockKey => 'cidr_ip';

  @internal
  @override
  Map<String, Object?> encode() => {'cidr_ip': cidrIp.toTfJson()};

  @internal
  @override
  Map<String, TfArg<Object?>> get argMap => {'cidr_ip': cidrIp};
}

/// The [DirectoryServiceIpRouteCidr.cidrIpv6] choice: sets `cidr_ipv6`.
final class DirectoryServiceIpRouteCidrIpv6
    extends DirectoryServiceIpRouteCidr {
  const DirectoryServiceIpRouteCidrIpv6(this.cidrIpv6);

  final TfArg<String> cidrIpv6;

  @internal
  @override
  String get blockKey => 'cidr_ipv6';

  @internal
  @override
  Map<String, Object?> encode() => {'cidr_ipv6': cidrIpv6.toTfJson()};

  @internal
  @override
  Map<String, TfArg<Object?>> get argMap => {'cidr_ipv6': cidrIpv6};
}

/// Factory wrapper for `aws_directory_service_ip_route`.
final class AwsDirectoryServiceIpRoute extends Resource {
  static const String tfType = 'aws_directory_service_ip_route';

  AwsDirectoryServiceIpRoute(
    super.localName, {
    required DirectoryServiceIpRouteCidr cidr,
    TfArg<String>? description,
    required TfArg<String> directoryId,
    TfArg<String>? region,
    TfArg<bool>? updateSecurityGroupForDirectoryControllers,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           ...cidr.argMap,
           'description': ?description,
           'directory_id': directoryId,
           'region': ?region,
           'update_security_group_for_directory_controllers':
               ?updateSecurityGroupForDirectoryControllers,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsDirectoryServiceIpRouteSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsDirectoryServiceIpRoute>`.
  RefTo<AwsDirectoryServiceIpRoute> get ref => RefTo.of(this);

  /// Reference to `cidr_ip` attribute.
  TfRef<String> get cidrIp => TfRef.attribute<String>(this, 'cidr_ip');

  /// Reference to `cidr_ipv6` attribute.
  TfRef<String> get cidrIpv6 => TfRef.attribute<String>(this, 'cidr_ipv6');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

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
