// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../iam/iam_principal.dart' show IamPrincipal;
import '../network/google_network_connectivity_hub.dart'
    show GoogleNetworkConnectivityHub;

/// Sensitive field paths for `google_network_connectivity_hub_iam_member`.
const Set<String> _googleNetworkConnectivityHubIamMemberSensitive = <String>{};

/// Typed helper for the `condition` block of
/// `google_network_connectivity_hub_iam_member` (derived from provider schema).
@immutable
final class NetworkConnectivityHubIamMemberCondition {
  const NetworkConnectivityHubIamMemberCondition({
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

/// Factory wrapper for `google_network_connectivity_hub_iam_member`.
final class GoogleNetworkConnectivityHubIamMember extends Resource {
  static const String tfType = 'google_network_connectivity_hub_iam_member';

  GoogleNetworkConnectivityHubIamMember({
    required super.localName,
    required RefTo<GoogleNetworkConnectivityHub> hub,
    required TfArg<String> role,
    required IamPrincipal member,
    TfArg<String>? project,
    NetworkConnectivityHubIamMemberCondition? condition,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'hub': hub.encodeAs('id'),
           'role': role,
           'member': member,
           'project': ?project,
           if (condition != null)
             'condition': TfArg.literal(condition.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleNetworkConnectivityHubIamMemberSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleNetworkConnectivityHubIamMember>`.
  RefTo<GoogleNetworkConnectivityHubIamMember> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');

  /// Reference to `hub` attribute.
  TfRef<String> get hub => TfRef.attribute<String>(this, 'hub');

  /// Reference to `member` attribute.
  TfRef<String> get member => TfRef.attribute<String>(this, 'member');

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');

  /// Reference to `role` attribute.
  TfRef<String> get role => TfRef.attribute<String>(this, 'role');
}
