// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_imagebuilder_lifecycle_policy`.
const Set<String> _awsImagebuilderLifecyclePolicySensitive = <String>{};

/// Imagebuilder Lifecycle Policy Resource enum for `resource_type`.
enum ImagebuilderLifecyclePolicyResourceType implements TerraformEnum {
  amiImage('AMI_IMAGE'),
  containerImage('CONTAINER_IMAGE');

  const ImagebuilderLifecyclePolicyResourceType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `policy_detail` block of
/// `aws_imagebuilder_lifecycle_policy` (derived from provider schema).
@immutable
final class ImagebuilderLifecyclePolicyDetail {
  const ImagebuilderLifecyclePolicyDetail({
    this.action,
    this.exclusionRules,
    this.filter,
  });

  final List<ImagebuilderLifecyclePolicyAction>? action;

  final List<ImagebuilderLifecyclePolicyExclusionRules>? exclusionRules;

  final List<ImagebuilderLifecyclePolicyFilter>? filter;

  Map<String, Object?> encode() => {
    if (action != null) 'action': [for (final e in action!) e.encode()],
    if (exclusionRules != null)
      'exclusion_rules': [for (final e in exclusionRules!) e.encode()],
    if (filter != null) 'filter': [for (final e in filter!) e.encode()],
  };
}

/// Typed helper for the `policy_detail.action` block of
/// `aws_imagebuilder_lifecycle_policy` (derived from provider schema).
@immutable
final class ImagebuilderLifecyclePolicyAction {
  const ImagebuilderLifecyclePolicyAction({
    required this.type,
    this.includeResources,
  });

  final TfArg<ImagebuilderLifecyclePolicyActionType> type;

  final List<ImagebuilderLifecyclePolicyIncludeResources>? includeResources;

  Map<String, Object?> encode() => {
    'type': type.toTfJson(),
    if (includeResources != null)
      'include_resources': [for (final e in includeResources!) e.encode()],
  };
}

/// `type` — derived from the provider schema description.
enum ImagebuilderLifecyclePolicyActionType implements TerraformEnum {
  delete('DELETE'),
  deprecate('DEPRECATE'),
  disable('DISABLE');

  const ImagebuilderLifecyclePolicyActionType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `policy_detail.action.include_resources` block of
/// `aws_imagebuilder_lifecycle_policy` (derived from provider schema).
@immutable
final class ImagebuilderLifecyclePolicyIncludeResources {
  const ImagebuilderLifecyclePolicyIncludeResources({
    this.amis,
    this.containers,
    this.snapshots,
  });

  final TfArg<bool>? amis;

  final TfArg<bool>? containers;

  final TfArg<bool>? snapshots;

  Map<String, Object?> encode() => {
    'amis': ?amis?.toTfJson(),
    'containers': ?containers?.toTfJson(),
    'snapshots': ?snapshots?.toTfJson(),
  };
}

/// Typed helper for the `policy_detail.exclusion_rules` block of
/// `aws_imagebuilder_lifecycle_policy` (derived from provider schema).
@immutable
final class ImagebuilderLifecyclePolicyExclusionRules {
  const ImagebuilderLifecyclePolicyExclusionRules({this.tagMap, this.amis});

  final TfArg<Map<String, String>>? tagMap;

  final List<ImagebuilderLifecyclePolicyAmis>? amis;

  Map<String, Object?> encode() => {
    'tag_map': ?tagMap?.toTfJson(),
    if (amis != null) 'amis': [for (final e in amis!) e.encode()],
  };
}

/// Typed helper for the `policy_detail.exclusion_rules.amis` block of
/// `aws_imagebuilder_lifecycle_policy` (derived from provider schema).
@immutable
final class ImagebuilderLifecyclePolicyAmis {
  const ImagebuilderLifecyclePolicyAmis({
    this.isPublic,
    this.regions,
    this.sharedAccounts,
    this.tagMap,
    this.lastLaunched,
  });

  final TfArg<bool>? isPublic;

  final TfArg<List<String>>? regions;

  final TfArg<List<String>>? sharedAccounts;

  final TfArg<Map<String, String>>? tagMap;

  final List<ImagebuilderLifecyclePolicyLastLaunched>? lastLaunched;

  Map<String, Object?> encode() => {
    'is_public': ?isPublic?.toTfJson(),
    'regions': ?regions?.toTfJson(),
    'shared_accounts': ?sharedAccounts?.toTfJson(),
    'tag_map': ?tagMap?.toTfJson(),
    if (lastLaunched != null)
      'last_launched': [for (final e in lastLaunched!) e.encode()],
  };
}

/// Typed helper for the `policy_detail.exclusion_rules.amis.last_launched` block of
/// `aws_imagebuilder_lifecycle_policy` (derived from provider schema).
@immutable
final class ImagebuilderLifecyclePolicyLastLaunched {
  const ImagebuilderLifecyclePolicyLastLaunched({
    required this.unit,
    required this.value,
  });

  final TfArg<ImagebuilderLifecyclePolicyUnit> unit;

  final TfArg<num> value;

  Map<String, Object?> encode() => {
    'unit': unit.toTfJson(),
    'value': value.toTfJson(),
  };
}

/// `unit` — derived from the provider schema description.
enum ImagebuilderLifecyclePolicyUnit implements TerraformEnum {
  days('DAYS'),
  weeks('WEEKS'),
  months('MONTHS'),
  years('YEARS');

  const ImagebuilderLifecyclePolicyUnit(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `policy_detail.filter` block of
/// `aws_imagebuilder_lifecycle_policy` (derived from provider schema).
@immutable
final class ImagebuilderLifecyclePolicyFilter {
  const ImagebuilderLifecyclePolicyFilter({
    this.retainAtLeast,
    required this.type,
    this.unit,
    required this.value,
  });

  final TfArg<num>? retainAtLeast;

  final TfArg<ImagebuilderLifecyclePolicyFilterType> type;

  final TfArg<ImagebuilderLifecyclePolicyUnit>? unit;

  final TfArg<num> value;

  Map<String, Object?> encode() => {
    'retain_at_least': ?retainAtLeast?.toTfJson(),
    'type': type.toTfJson(),
    'unit': ?unit?.toTfJson(),
    'value': value.toTfJson(),
  };
}

/// `type` — derived from the provider schema description.
enum ImagebuilderLifecyclePolicyFilterType implements TerraformEnum {
  age('AGE'),
  count('COUNT');

  const ImagebuilderLifecyclePolicyFilterType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `resource_selection` block of
/// `aws_imagebuilder_lifecycle_policy` (derived from provider schema).
@immutable
final class ImagebuilderLifecyclePolicyResourceSelection {
  const ImagebuilderLifecyclePolicyResourceSelection({
    this.tagMap,
    this.recipe,
  });

  final TfArg<Map<String, String>>? tagMap;

  final List<ImagebuilderLifecyclePolicyRecipe>? recipe;

  Map<String, Object?> encode() => {
    'tag_map': ?tagMap?.toTfJson(),
    if (recipe != null) 'recipe': [for (final e in recipe!) e.encode()],
  };
}

/// Typed helper for the `resource_selection.recipe` block of
/// `aws_imagebuilder_lifecycle_policy` (derived from provider schema).
@immutable
final class ImagebuilderLifecyclePolicyRecipe {
  const ImagebuilderLifecyclePolicyRecipe({
    required this.name,
    required this.semanticVersion,
  });

  final TfArg<String> name;

  final TfArg<String> semanticVersion;

  Map<String, Object?> encode() => {
    'name': name.toTfJson(),
    'semantic_version': semanticVersion.toTfJson(),
  };
}

/// Factory wrapper for `aws_imagebuilder_lifecycle_policy`.
final class AwsImagebuilderLifecyclePolicy extends Resource {
  static const String tfType = 'aws_imagebuilder_lifecycle_policy';

  AwsImagebuilderLifecyclePolicy(
    super.localName, {
    TfArg<String>? description,
    required TfArg<String> executionRole,
    required TfArg<String> name,
    TfArg<String>? region,
    required TfArg<ImagebuilderLifecyclePolicyResourceType> resourceType,
    TfArg<String>? status,
    TfArg<Map<String, String>>? tags,
    List<ImagebuilderLifecyclePolicyDetail>? policyDetail,
    List<ImagebuilderLifecyclePolicyResourceSelection>? resourceSelection,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'description': ?description,
           'execution_role': executionRole,
           'name': name,
           'region': ?region,
           'resource_type': resourceType,
           'status': ?status,
           'tags': ?tags,
           if (policyDetail != null)
             'policy_detail': TfArg.literal([
               for (final e in policyDetail) e.encode(),
             ]),
           if (resourceSelection != null)
             'resource_selection': TfArg.literal([
               for (final e in resourceSelection) e.encode(),
             ]),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsImagebuilderLifecyclePolicySensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsImagebuilderLifecyclePolicy>`.
  RefTo<AwsImagebuilderLifecyclePolicy> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `tags_all` attribute.
  TfRef<Map<String, String>> get tagsAll =>
      TfRef.attribute<Map<String, String>>(this, 'tags_all');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `execution_role` attribute.
  TfRef<String> get executionRole =>
      TfRef.attribute<String>(this, 'execution_role');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `resource_type` attribute.
  TfRef<String> get resourceType =>
      TfRef.attribute<String>(this, 'resource_type');

  /// Reference to `status` attribute.
  TfRef<String> get status => TfRef.attribute<String>(this, 'status');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}
