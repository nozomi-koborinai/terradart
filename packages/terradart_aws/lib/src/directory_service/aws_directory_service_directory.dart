// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../ec2/aws_subnet.dart' show AwsSubnet;
import '../ec2/aws_vpc.dart' show AwsVpc;

/// Sensitive field paths for `aws_directory_service_directory`.
const Set<String> _awsDirectoryServiceDirectorySensitive = <String>{'password'};

/// Directory Service Directory enum for `edition`.
enum DirectoryServiceDirectoryEdition implements TerraformEnum {
  enterprise('Enterprise'),
  standard('Standard'),
  hybrid('Hybrid');

  const DirectoryServiceDirectoryEdition(this.terraformValue);
  @override
  final String terraformValue;
}

/// Directory Service Directory enum for `size`.
enum DirectoryServiceDirectorySize implements TerraformEnum {
  small('Small'),
  large('Large');

  const DirectoryServiceDirectorySize(this.terraformValue);
  @override
  final String terraformValue;
}

/// Directory Service Directory enum for `type`.
enum DirectoryServiceDirectoryType implements TerraformEnum {
  simplead('SimpleAD'),
  adconnector('ADConnector'),
  microsoftad('MicrosoftAD'),
  sharedmicrosoftad('SharedMicrosoftAD');

  const DirectoryServiceDirectoryType(this.terraformValue);
  @override
  final String terraformValue;
}

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

  final TfArg<List<RefTo<AwsSubnet>>> subnetIds;

  final RefTo<AwsVpc> vpcId;

  Map<String, Object?> encode() => {
    'customer_dns_ips': customerDnsIps.toTfJson(),
    'customer_username': customerUsername.toTfJson(),
    'subnet_ids': subnetIds.encodeAs('id').toTfJson(),
    'vpc_id': vpcId.encodeAs('id').toTfJson(),
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

  final TfArg<List<RefTo<AwsSubnet>>> subnetIds;

  final RefTo<AwsVpc> vpcId;

  Map<String, Object?> encode() => {
    'subnet_ids': subnetIds.encodeAs('id').toTfJson(),
    'vpc_id': vpcId.encodeAs('id').toTfJson(),
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
    TfArg<DirectoryServiceDirectoryEdition>? edition,
    TfArg<bool>? enableDirectoryDataAccess,
    TfArg<bool>? enableSso,
    required TfArg<String> name,
    required TfArg<String> password,
    TfArg<String>? region,
    TfArg<String>? shortName,
    TfArg<DirectoryServiceDirectorySize>? size,
    TfArg<Map<String, String>>? tags,
    TfArg<DirectoryServiceDirectoryType>? type,
    DirectoryServiceDirectoryConnectSettings? connectSettings,
    DirectoryServiceDirectoryVpcSettings? vpcSettings,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'alias': ?alias,
           'description': ?description,
           'desired_number_of_domain_controllers':
               ?desiredNumberOfDomainControllers,
           'edition': ?edition,
           'enable_directory_data_access': ?enableDirectoryDataAccess,
           'enable_sso': ?enableSso,
           'name': name,
           'password': password,
           'region': ?region,
           'short_name': ?shortName,
           'size': ?size,
           'tags': ?tags,
           'type': ?type,
           if (connectSettings != null)
             'connect_settings': TfArg.literal(connectSettings.encode()),
           if (vpcSettings != null)
             'vpc_settings': TfArg.literal(vpcSettings.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsDirectoryServiceDirectorySensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsDirectoryServiceDirectory>`.
  RefTo<AwsDirectoryServiceDirectory> get ref => RefTo.of(this);

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
