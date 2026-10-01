// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_network_security_address_group`.
const Set<String> _googleNetworkSecurityAddressGroupSensitive = <String>{};

/// Network Security Address Group enum for `type`.
extension type const NetworkSecurityAddressGroupType._(TfArg<String> _)
    implements TfArg<String> {
  NetworkSecurityAddressGroupType.variable(String name)
    : this._(TfArg.variable(name));
  NetworkSecurityAddressGroupType.expression(String template)
    : this._(TfArg.expression(template));
  const NetworkSecurityAddressGroupType.arg(TfArg<String> arg) : this._(arg);

  static const ipv4 = NetworkSecurityAddressGroupType._(TfArgLiteral('IPV4'));
  static const ipv6 = NetworkSecurityAddressGroupType._(TfArgLiteral('IPV6'));

  static const List<NetworkSecurityAddressGroupType> values = [ipv4, ipv6];
}

/// Factory wrapper for `google_network_security_address_group`.
///
/// AddressGroup is a resource that specifies how a collection of IP/DNS used in
/// Firewall Policy.
final class GoogleNetworkSecurityAddressGroup extends Resource {
  static const String tfType = 'google_network_security_address_group';

  GoogleNetworkSecurityAddressGroup(
    super.localName, {
    required TfArg<String> name,
    TfArg<String>? parent,
    required TfArg<String> location,
    required NetworkSecurityAddressGroupType type,
    required TfArg<num> capacity,
    TfArg<List<String>>? items,
    TfArg<String>? description,
    TfArg<Map<String, String>>? labels,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           'parent': ?parent,
           'location': location,
           'type': type,
           'capacity': capacity,
           'items': ?items,
           'description': ?description,
           'labels': ?labels,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleNetworkSecurityAddressGroupSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleNetworkSecurityAddressGroup>`.
  RefTo<GoogleNetworkSecurityAddressGroup> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

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

  /// Reference to `capacity` attribute.
  TfRef<num> get capacity => TfRef.attribute<num>(this, 'capacity');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicy =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `items` attribute.
  TfRef<List<String>> get items => TfRef.attribute<List<String>>(this, 'items');

  /// Reference to `labels` attribute.
  TfRef<Map<String, String>> get labels =>
      TfRef.attribute<Map<String, String>>(this, 'labels');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `parent` attribute.
  TfRef<String> get parent => TfRef.attribute<String>(this, 'parent');

  /// Reference to `type` attribute.
  TfRef<String> get type => TfRef.attribute<String>(this, 'type');
}
