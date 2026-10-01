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
    'description': ?description?.toTfJson(),
    'source': source.toTfJson(),
  };
}

/// Factory wrapper for `aws_workspaces_ip_group`.
final class AwsWorkspacesIpGroup extends Resource {
  static const String tfType = 'aws_workspaces_ip_group';

  AwsWorkspacesIpGroup(
    super.localName, {
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
           'description': ?description,
           'name': name,
           'region': ?region,
           'tags': ?tags,
           if (rules != null)
             'rules': TfArg.literal([for (final e in rules) e.encode()]),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsWorkspacesIpGroupSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsWorkspacesIpGroup>`.
  RefTo<AwsWorkspacesIpGroup> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}
