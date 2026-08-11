// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

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
///   hub: TfArg.ref(hub.id),
///   name: TfArg.literal(NetworkConnectivityGroupName.center),
/// );
/// ```
final class GoogleNetworkConnectivityGroup extends Resource {
  static const String tfType = 'google_network_connectivity_group';

  GoogleNetworkConnectivityGroup({
    required super.localName,
    required TfArg<String> hub,
    required TfArg<NetworkConnectivityGroupName> name,
    TfArg<String>? description,
    NetworkConnectivityGroupAutoAccept? autoAccept,
    TfArg<Map<String, String>>? labels,
    TfArg<String>? deletionPolicy,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'hub': hub,
           'name': name,
           if (description != null) 'description': description,
           if (autoAccept != null)
             'auto_accept': TfArg.literal([autoAccept.encode()]),
           if (labels != null) 'labels': labels,
           if (deletionPolicy != null) 'deletion_policy': deletionPolicy,
           if (project != null) 'project': project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleNetworkConnectivityGroupSensitive;

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
}
