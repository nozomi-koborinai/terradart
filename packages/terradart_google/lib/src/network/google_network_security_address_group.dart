// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_network_security_address_group`.
const Set<String> _googleNetworkSecurityAddressGroupSensitive = <String>{};

/// IP-version a [GoogleNetworkSecurityAddressGroup] holds.
enum NetworkSecurityAddressGroupType implements TerraformEnum {
  /// IPv4 addresses / CIDR ranges.
  ipv4('IPV4'),

  /// IPv6 addresses / CIDR ranges.
  ipv6('IPV6');

  const NetworkSecurityAddressGroupType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Factory wrapper for `google_network_security_address_group`.
///
/// AddressGroup is a resource that specifies how a collection of IP/DNS used in
/// Firewall Policy.
final class GoogleNetworkSecurityAddressGroup extends Resource {
  static const String tfType = 'google_network_security_address_group';

  GoogleNetworkSecurityAddressGroup({
    required super.localName,
    required TfArg<String> name,
    TfArg<String>? parent,
    required TfArg<String> location,
    required TfArg<NetworkSecurityAddressGroupType> type,
    required TfArg<num> capacity,
    TfArg<List<String>>? items,
    TfArg<String>? description,
    TfArg<Map<String, String>>? labels,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           if (parent != null) 'parent': parent,
           'location': location,
           'type': type,
           'capacity': capacity,
           if (items != null) 'items': items,
           if (description != null) 'description': description,
           if (labels != null) 'labels': labels,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleNetworkSecurityAddressGroupSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `create_time` attribute.
  TfRef<String> get createTime => TfRef.attribute<String>(this, 'create_time');

  /// Reference to `effective_labels` attribute.
  TfRef<Map<String, String>> get effectiveLabels =>
      TfRef.attribute<Map<String, String>>(this, 'effective_labels');

  /// Reference to `terraform_labels` attribute.
  TfRef<Map<String, String>> get terraformLabels =>
      TfRef.attribute<Map<String, String>>(this, 'terraform_labels');

  /// Reference to `update_time` attribute.
  TfRef<String> get updateTime => TfRef.attribute<String>(this, 'update_time');
}
