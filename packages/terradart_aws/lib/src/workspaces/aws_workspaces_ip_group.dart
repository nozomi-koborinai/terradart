// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_workspaces_ip_group`.
const Set<String> _awsWorkspacesIpGroupSensitive = <String>{};

/// Typed helper for the `rules` block of
/// `aws_workspaces_ip_group` (derived from provider schema).
@immutable
final class WorkspacesIpGroupRules {
  const WorkspacesIpGroupRules({this.description, required this.source});

  final TfArg<String>? description;

  final TfArg<String> source;

  Map<String, Object?> encode() => {
    if (description != null) 'description': description!.toTfJson(),
    'source': source.toTfJson(),
  };
}

/// Factory wrapper for `aws_workspaces_ip_group`.
final class AwsWorkspacesIpGroup extends Resource {
  static const String tfType = 'aws_workspaces_ip_group';

  AwsWorkspacesIpGroup({
    required super.localName,
    TfArg<String>? description,
    required TfArg<String> name,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    List<WorkspacesIpGroupRules>? rules,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (description != null) 'description': description,
           'name': name,
           if (region != null) 'region': region,
           if (tags != null) 'tags': tags,
           if (rules != null)
             'rules': TfArg.literal([for (final e in rules) e.encode()]),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsWorkspacesIpGroupSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}
