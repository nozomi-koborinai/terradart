// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../network/google_network_connectivity_hub.dart'
    show GoogleNetworkConnectivityHub;

/// Sensitive field paths for `google_network_connectivity_group`.
const Set<String> _googleNetworkConnectivityGroupSensitive = <String>{};

/// Network Connectivity Group enum for `name`.
enum NetworkConnectivityGroupName implements TerraformEnum {
  defaultCase('default'),
  center('center'),
  edge('edge');

  const NetworkConnectivityGroupName(this.terraformValue);
  @override
  final String terraformValue;
}

/// Optional `auto_accept` block on [GoogleNetworkConnectivityGroup].
@immutable
final class NetworkConnectivityGroupAutoAccept {
  const NetworkConnectivityGroupAutoAccept({required this.autoAcceptProjects});

  final TfArg<List<String>> autoAcceptProjects;

  Map<String, Object?> encode() => {
    'auto_accept_projects': autoAcceptProjects.toTfJson(),
  };
}

/// Factory wrapper for `google_network_connectivity_group`.
///
/// The NetworkConnectivity Group resource
///
/// Network Connectivity Center **group** under a
/// [GoogleNetworkConnectivityHub] (STAR topology center/edge, or `default`).
///
/// Example:
/// ```dart
/// GoogleNetworkConnectivityGroup(
///   localName: 'center',
///   hub: hub.ref,
///   name: TfArg.literal(NetworkConnectivityGroupName.center),
/// );
/// ```
final class GoogleNetworkConnectivityGroup extends Resource {
  static const String tfType = 'google_network_connectivity_group';

  GoogleNetworkConnectivityGroup({
    required super.localName,
    required RefTo<GoogleNetworkConnectivityHub> hub,
    required TfArg<NetworkConnectivityGroupName> name,
    TfArg<String>? description,
    NetworkConnectivityGroupAutoAccept? autoAccept,
    TfArg<Map<String, String>>? labels,
    TfArg<String>? deletionPolicy,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'hub': hub.encodeAs('id'),
           'name': name,
           'description': ?description,
           if (autoAccept != null)
             'auto_accept': TfArg.literal([autoAccept.encode()]),
           'labels': ?labels,
           'deletion_policy': ?deletionPolicy,
           'project': ?project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleNetworkConnectivityGroupSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleNetworkConnectivityGroup>`.
  RefTo<GoogleNetworkConnectivityGroup> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `create_time` attribute.
  TfRef<String> get createTime => TfRef.attribute<String>(this, 'create_time');

  /// Reference to `effective_labels` attribute.
  TfRef<Map<String, String>> get effectiveLabels =>
      TfRef.attribute<Map<String, String>>(this, 'effective_labels');

  /// Reference to `route_table` attribute.
  TfRef<String> get routeTable => TfRef.attribute<String>(this, 'route_table');

  /// Reference to `state` attribute.
  TfRef<String> get state => TfRef.attribute<String>(this, 'state');

  /// Reference to `terraform_labels` attribute.
  TfRef<Map<String, String>> get terraformLabels =>
      TfRef.attribute<Map<String, String>>(this, 'terraform_labels');

  /// Reference to `uid` attribute.
  TfRef<String> get uid => TfRef.attribute<String>(this, 'uid');

  /// Reference to `update_time` attribute.
  TfRef<String> get updateTime => TfRef.attribute<String>(this, 'update_time');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicyRef =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `description` attribute.
  TfRef<String> get descriptionRef =>
      TfRef.attribute<String>(this, 'description');

  /// Reference to `hub` attribute.
  TfRef<String> get hubRef => TfRef.attribute<String>(this, 'hub');

  /// Reference to `labels` attribute.
  TfRef<Map<String, String>> get labelsRef =>
      TfRef.attribute<Map<String, String>>(this, 'labels');

  /// Reference to `project` attribute.
  TfRef<String> get projectRef => TfRef.attribute<String>(this, 'project');
}
