// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_directory_service_directory`.
const Set<String> _awsDirectoryServiceDirectorySensitive = <String>{'password'};

/// Typed helper for the `connect_settings` block of
/// `aws_directory_service_directory` (derived from provider schema).
@immutable
final class DirectoryServiceDirectoryConnectSettings {
  const DirectoryServiceDirectoryConnectSettings({
    required this.customerDnsIps,
    required this.customerUsername,
    required this.subnetIds,
    required this.vpcId,
  });

  final TfArg<List<Object?>> customerDnsIps;

  final TfArg<String> customerUsername;

  final TfArg<List<Object?>> subnetIds;

  final TfArg<String> vpcId;

  Map<String, Object?> encode() => {
    'customer_dns_ips': customerDnsIps.toTfJson(),
    'customer_username': customerUsername.toTfJson(),
    'subnet_ids': subnetIds.toTfJson(),
    'vpc_id': vpcId.toTfJson(),
  };
}

/// Typed helper for the `vpc_settings` block of
/// `aws_directory_service_directory` (derived from provider schema).
@immutable
final class DirectoryServiceDirectoryVpcSettings {
  const DirectoryServiceDirectoryVpcSettings({
    required this.subnetIds,
    required this.vpcId,
  });

  final TfArg<List<Object?>> subnetIds;

  final TfArg<String> vpcId;

  Map<String, Object?> encode() => {
    'subnet_ids': subnetIds.toTfJson(),
    'vpc_id': vpcId.toTfJson(),
  };
}

/// Factory wrapper for `aws_directory_service_directory`.
final class AwsDirectoryServiceDirectory extends Resource {
  static const String tfType = 'aws_directory_service_directory';

  AwsDirectoryServiceDirectory({
    required super.localName,
    TfArg<String>? alias,
    TfArg<String>? description,
    TfArg<num>? desiredNumberOfDomainControllers,
    TfArg<String>? edition,
    TfArg<bool>? enableDirectoryDataAccess,
    TfArg<bool>? enableSso,
    required TfArg<String> name,
    required TfArg<String> password,
    TfArg<String>? region,
    TfArg<String>? shortName,
    TfArg<String>? size,
    TfArg<Map<String, String>>? tags,
    TfArg<String>? type,
    DirectoryServiceDirectoryConnectSettings? connectSettings,
    DirectoryServiceDirectoryVpcSettings? vpcSettings,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (alias != null) 'alias': alias,
           if (description != null) 'description': description,
           if (desiredNumberOfDomainControllers != null)
             'desired_number_of_domain_controllers':
                 desiredNumberOfDomainControllers,
           if (edition != null) 'edition': edition,
           if (enableDirectoryDataAccess != null)
             'enable_directory_data_access': enableDirectoryDataAccess,
           if (enableSso != null) 'enable_sso': enableSso,
           'name': name,
           'password': password,
           if (region != null) 'region': region,
           if (shortName != null) 'short_name': shortName,
           if (size != null) 'size': size,
           if (tags != null) 'tags': tags,
           if (type != null) 'type': type,
           if (connectSettings != null)
             'connect_settings': TfArg.literal(connectSettings.encode()),
           if (vpcSettings != null)
             'vpc_settings': TfArg.literal(vpcSettings.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsDirectoryServiceDirectorySensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `access_url` attribute.
  TfRef<String> get accessUrl => TfRef.attribute<String>(this, 'access_url');

  /// Reference to `dns_ip_addresses` attribute.
  TfRef<List<String>> get dnsIpAddresses =>
      TfRef.attribute<List<String>>(this, 'dns_ip_addresses');

  /// Reference to `security_group_id` attribute.
  TfRef<String> get securityGroupId =>
      TfRef.attribute<String>(this, 'security_group_id');
}
