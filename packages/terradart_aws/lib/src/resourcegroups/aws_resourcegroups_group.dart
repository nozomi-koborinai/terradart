// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_resourcegroups_group`.
const Set<String> _awsResourcegroupsGroupSensitive = <String>{};

/// Typed helper for the `configuration` block of
/// `aws_resourcegroups_group` (derived from provider schema).
@immutable
final class ResourcegroupsGroupConfiguration {
  const ResourcegroupsGroupConfiguration({required this.type, this.parameters});

  final TfArg<String> type;

  final List<ResourcegroupsGroupParameters>? parameters;

  Map<String, Object?> encode() => {
    'type': type.toTfJson(),
    if (parameters != null)
      'parameters': [for (final e in parameters!) e.encode()],
  };
}

/// Typed helper for the `configuration.parameters` block of
/// `aws_resourcegroups_group` (derived from provider schema).
@immutable
final class ResourcegroupsGroupParameters {
  const ResourcegroupsGroupParameters({
    required this.name,
    required this.values,
  });

  final TfArg<String> name;

  final TfArg<List<String>> values;

  Map<String, Object?> encode() => {
    'name': name.toTfJson(),
    'values': values.toTfJson(),
  };
}

/// Typed helper for the `resource_query` block of
/// `aws_resourcegroups_group` (derived from provider schema).
@immutable
final class ResourcegroupsGroupResourceQuery {
  const ResourcegroupsGroupResourceQuery({required this.query, this.type});

  final TfArg<String> query;

  final TfArg<ResourcegroupsGroupType>? type;

  Map<String, Object?> encode() => {
    'query': query.toTfJson(),
    'type': ?type?.toTfJson(),
  };
}

/// `type` — derived from the provider schema description.
enum ResourcegroupsGroupType implements TerraformEnum {
  tagFilters10('TAG_FILTERS_1_0');

  const ResourcegroupsGroupType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Factory wrapper for `aws_resourcegroups_group`.
final class AwsResourcegroupsGroup extends Resource {
  static const String tfType = 'aws_resourcegroups_group';

  AwsResourcegroupsGroup({
    required super.localName,
    TfArg<String>? description,
    required TfArg<String> name,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    List<ResourcegroupsGroupConfiguration>? configuration,
    ResourcegroupsGroupResourceQuery? resourceQuery,
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
           if (configuration != null)
             'configuration': TfArg.literal([
               for (final e in configuration) e.encode(),
             ]),
           if (resourceQuery != null)
             'resource_query': TfArg.literal(resourceQuery.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsResourcegroupsGroupSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsResourcegroupsGroup>`.
  RefTo<AwsResourcegroupsGroup> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}
