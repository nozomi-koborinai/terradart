// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../iam/iam_principal.dart' show IamPrincipal;
import '../network/google_network_connectivity_hub.dart'
    show GoogleNetworkConnectivityHub;

/// Sensitive field paths for `google_network_connectivity_hub_iam_binding`.
const Set<String> _googleNetworkConnectivityHubIamBindingSensitive = <String>{};

/// Typed helper for the `condition` block of
/// `google_network_connectivity_hub_iam_binding` (derived from provider schema).
@immutable
final class NetworkConnectivityHubIamBindingCondition {
  const NetworkConnectivityHubIamBindingCondition({
    this.description,
    required this.expression,
    required this.title,
  });

  final TfArg<String>? description;

  final TfArg<String> expression;

  final TfArg<String> title;

  @internal
  Map<String, Object?> encode() => {
    'description': ?description?.toTfJson(),
    'expression': expression.toTfJson(),
    'title': title.toTfJson(),
  };
}

/// Factory wrapper for `google_network_connectivity_hub_iam_binding`.
///
/// Authoritative IAM binding for a single `role` on a Network Connectivity
/// Center hub.
///
/// Replaces the entire member list for that role. Prefer
/// [GoogleNetworkConnectivityHubIamMember] for additive grants.
final class GoogleNetworkConnectivityHubIamBinding extends Resource {
  static const String tfType = 'google_network_connectivity_hub_iam_binding';

  GoogleNetworkConnectivityHubIamBinding(
    super.localName, {
    required RefTo<GoogleNetworkConnectivityHub> hub,
    required TfArg<String> role,
    required TfArg<List<IamPrincipal>> members,
    TfArg<String>? project,
    NetworkConnectivityHubIamBindingCondition? condition,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'hub': hub.encodeAs('id'),
           'role': role,
           'members': members,
           'project': ?project,
           if (condition != null)
             'condition': TfArg.literal(condition.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleNetworkConnectivityHubIamBindingSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleNetworkConnectivityHubIamBinding>`.
  RefTo<GoogleNetworkConnectivityHubIamBinding> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');

  /// Reference to `hub` attribute.
  TfRef<String> get hub => TfRef.attribute<String>(this, 'hub');

  /// Reference to `members` attribute.
  TfRef<List<String>> get members =>
      TfRef.attribute<List<String>>(this, 'members');

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');

  /// Reference to `role` attribute.
  TfRef<String> get role => TfRef.attribute<String>(this, 'role');
}
