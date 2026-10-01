// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../network/google_network_security_address_group.dart'
    show GoogleNetworkSecurityAddressGroup;

/// Sensitive field paths for `google_network_security_address_group_iam_binding`.
const Set<String> _googleNetworkSecurityAddressGroupIamBindingSensitive =
    <String>{};

/// Typed helper for the `condition` block of
/// `google_network_security_address_group_iam_binding` (derived from provider schema).
@immutable
final class NetworkSecurityAddressGroupIamBindingCondition {
  const NetworkSecurityAddressGroupIamBindingCondition({
    this.description,
    required this.expression,
    required this.title,
  });

  final TfArg<String>? description;

  final TfArg<String> expression;

  final TfArg<String> title;

  Map<String, Object?> encode() => {
    'description': ?description?.toTfJson(),
    'expression': expression.toTfJson(),
    'title': title.toTfJson(),
  };
}

/// Factory wrapper for `google_network_security_address_group_iam_binding`.
///
/// Authoritative IAM binding for a single `role` on a Network Security address group.
///
/// Replaces the entire member list for that role, overwriting grants made
/// outside Terraform. Prefer [GoogleNetworkSecurityAddressGroupIamMember] for additive grants.
final class GoogleNetworkSecurityAddressGroupIamBinding extends Resource {
  static const String tfType =
      'google_network_security_address_group_iam_binding';

  GoogleNetworkSecurityAddressGroupIamBinding({
    required super.localName,
    required RefTo<GoogleNetworkSecurityAddressGroup> addressGroup,
    TfArg<String>? location,
    required TfArg<String> role,
    required TfArg<List<String>> members,
    TfArg<String>? project,
    NetworkSecurityAddressGroupIamBindingCondition? condition,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': addressGroup.encodeAs('name'),
           'location': ?(location ?? addressGroup.alsoAs('location')),
           'role': role,
           'members': members,
           'project': ?project,
           if (condition != null)
             'condition': TfArg.literal(condition.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleNetworkSecurityAddressGroupIamBindingSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleNetworkSecurityAddressGroupIamBinding>`.
  RefTo<GoogleNetworkSecurityAddressGroupIamBinding> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');

  /// Reference to `location` attribute.
  TfRef<String> get locationRef => TfRef.attribute<String>(this, 'location');

  /// Reference to `members` attribute.
  TfRef<List<String>> get membersRef =>
      TfRef.attribute<List<String>>(this, 'members');

  /// Reference to `project` attribute.
  TfRef<String> get projectRef => TfRef.attribute<String>(this, 'project');

  /// Reference to `role` attribute.
  TfRef<String> get roleRef => TfRef.attribute<String>(this, 'role');
}
