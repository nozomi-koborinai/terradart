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
extension type const DirectoryServiceDirectoryEdition._(TfArg<String> _)
    implements TfArg<String> {
  DirectoryServiceDirectoryEdition.variable(String name)
    : this._(TfArg.variable(name));
  DirectoryServiceDirectoryEdition.expression(String template)
    : this._(TfArg.expression(template));
  const DirectoryServiceDirectoryEdition.arg(TfArg<String> arg) : this._(arg);

  static const enterprise = DirectoryServiceDirectoryEdition._(
    TfArgLiteral('Enterprise'),
  );
  static const standard = DirectoryServiceDirectoryEdition._(
    TfArgLiteral('Standard'),
  );
  static const hybrid = DirectoryServiceDirectoryEdition._(
    TfArgLiteral('Hybrid'),
  );

  static const List<DirectoryServiceDirectoryEdition> values = [
    enterprise,
    standard,
    hybrid,
  ];
}

/// Directory Service Directory enum for `size`.
extension type const DirectoryServiceDirectorySize._(TfArg<String> _)
    implements TfArg<String> {
  DirectoryServiceDirectorySize.variable(String name)
    : this._(TfArg.variable(name));
  DirectoryServiceDirectorySize.expression(String template)
    : this._(TfArg.expression(template));
  const DirectoryServiceDirectorySize.arg(TfArg<String> arg) : this._(arg);

  static const small = DirectoryServiceDirectorySize._(TfArgLiteral('Small'));
  static const large = DirectoryServiceDirectorySize._(TfArgLiteral('Large'));

  static const List<DirectoryServiceDirectorySize> values = [small, large];
}

/// Directory Service Directory enum for `type`.
extension type const DirectoryServiceDirectoryType._(TfArg<String> _)
    implements TfArg<String> {
  DirectoryServiceDirectoryType.variable(String name)
    : this._(TfArg.variable(name));
  DirectoryServiceDirectoryType.expression(String template)
    : this._(TfArg.expression(template));
  const DirectoryServiceDirectoryType.arg(TfArg<String> arg) : this._(arg);

  static const simplead = DirectoryServiceDirectoryType._(
    TfArgLiteral('SimpleAD'),
  );
  static const adconnector = DirectoryServiceDirectoryType._(
    TfArgLiteral('ADConnector'),
  );
  static const microsoftad = DirectoryServiceDirectoryType._(
    TfArgLiteral('MicrosoftAD'),
  );
  static const sharedmicrosoftad = DirectoryServiceDirectoryType._(
    TfArgLiteral('SharedMicrosoftAD'),
  );

  static const List<DirectoryServiceDirectoryType> values = [
    simplead,
    adconnector,
    microsoftad,
    sharedmicrosoftad,
  ];
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

  final TfArg<List<String>> customerDnsIps;

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

  AwsDirectoryServiceDirectory(
    super.localName, {
    TfArg<String>? alias,
    TfArg<String>? description,
    TfArg<num>? desiredNumberOfDomainControllers,
    DirectoryServiceDirectoryEdition? edition,
    TfArg<bool>? enableDirectoryDataAccess,
    TfArg<bool>? enableSso,
    required TfArg<String> name,
    required TfArg<String> password,
    TfArg<String>? region,
    TfArg<String>? shortName,
    DirectoryServiceDirectorySize? size,
    TfArg<Map<String, String>>? tags,
    DirectoryServiceDirectoryType? type,
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
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

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

  /// Reference to `alias` attribute.
  TfRef<String> get alias => TfRef.attribute<String>(this, 'alias');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `desired_number_of_domain_controllers` attribute.
  TfRef<num> get desiredNumberOfDomainControllers =>
      TfRef.attribute<num>(this, 'desired_number_of_domain_controllers');

  /// Reference to `edition` attribute.
  TfRef<String> get edition => TfRef.attribute<String>(this, 'edition');

  /// Reference to `enable_directory_data_access` attribute.
  TfRef<bool> get enableDirectoryDataAccess =>
      TfRef.attribute<bool>(this, 'enable_directory_data_access');

  /// Reference to `enable_sso` attribute.
  TfRef<bool> get enableSso => TfRef.attribute<bool>(this, 'enable_sso');

  /// Reference to `password` attribute.
  TfRef<String> get password => TfRef.attribute<String>(this, 'password');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `short_name` attribute.
  TfRef<String> get shortName => TfRef.attribute<String>(this, 'short_name');

  /// Reference to `size` attribute.
  TfRef<String> get size => TfRef.attribute<String>(this, 'size');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');

  /// Reference to `type` attribute.
  TfRef<String> get type => TfRef.attribute<String>(this, 'type');
}
