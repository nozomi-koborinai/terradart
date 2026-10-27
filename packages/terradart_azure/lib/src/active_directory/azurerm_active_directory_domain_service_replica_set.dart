// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../subnet/azurerm_subnet.dart' show AzurermSubnet;

/// Sensitive field paths for `azurerm_active_directory_domain_service_replica_set`.
const Set<String> _azurermActiveDirectoryDomainServiceReplicaSetSensitive =
    <String>{};

/// Factory wrapper for `azurerm_active_directory_domain_service_replica_set`.
final class AzurermActiveDirectoryDomainServiceReplicaSet extends Resource {
  static const String tfType =
      'azurerm_active_directory_domain_service_replica_set';

  AzurermActiveDirectoryDomainServiceReplicaSet(
    super.localName, {
    required TfArg<String> domainServiceId,
    required TfArg<String> location,
    required RefTo<AzurermSubnet> subnetId,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'domain_service_id': domainServiceId,
           'location': location,
           'subnet_id': subnetId.encodeAs('id'),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _azurermActiveDirectoryDomainServiceReplicaSetSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermActiveDirectoryDomainServiceReplicaSet>`.
  RefTo<AzurermActiveDirectoryDomainServiceReplicaSet> get ref =>
      RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `domain_controller_ip_addresses` attribute.
  TfRef<List<String>> get domainControllerIpAddresses =>
      TfRef.attribute<List<String>>(this, 'domain_controller_ip_addresses');

  /// Reference to `external_access_ip_address` attribute.
  TfRef<String> get externalAccessIpAddress =>
      TfRef.attribute<String>(this, 'external_access_ip_address');

  /// Reference to `service_status` attribute.
  TfRef<String> get serviceStatus =>
      TfRef.attribute<String>(this, 'service_status');

  /// Reference to `domain_service_id` attribute.
  TfRef<String> get domainServiceId =>
      TfRef.attribute<String>(this, 'domain_service_id');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `subnet_id` attribute.
  TfRef<String> get subnetId => TfRef.attribute<String>(this, 'subnet_id');
}
