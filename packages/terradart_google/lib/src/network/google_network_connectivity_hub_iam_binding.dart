// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

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

  GoogleNetworkConnectivityHubIamBinding({
    required super.localName,
    required TfArg<String> hub,
    required TfArg<String> role,
    required TfArg<List<String>> members,
    TfArg<String>? project,
    NetworkConnectivityHubIamBindingCondition? condition,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'hub': hub,
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
  TfRef<String> get hubRef => TfRef.attribute<String>(this, 'hub');

  /// Reference to `members` attribute.
  TfRef<List<String>> get membersRef =>
      TfRef.attribute<List<String>>(this, 'members');

  /// Reference to `project` attribute.
  TfRef<String> get projectRef => TfRef.attribute<String>(this, 'project');

  /// Reference to `role` attribute.
  TfRef<String> get roleRef => TfRef.attribute<String>(this, 'role');
}
