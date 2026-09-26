// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_imagebuilder_lifecycle_policy`.
const Set<String> _awsImagebuilderLifecyclePolicySensitive = <String>{};

/// Typed helper for the `policy_detail` block of
/// `aws_imagebuilder_lifecycle_policy` (derived from provider schema).
@immutable
final class ImagebuilderLifecyclePolicyPolicyDetail {
  const ImagebuilderLifecyclePolicyPolicyDetail({
    this.action,
    this.exclusionRules,
    this.filter,
  });

  final List<ImagebuilderLifecyclePolicyPolicyDetailAction>? action;

  final List<ImagebuilderLifecyclePolicyPolicyDetailExclusionRules>?
  exclusionRules;

  final List<ImagebuilderLifecyclePolicyPolicyDetailFilter>? filter;

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
final class ImagebuilderLifecyclePolicyPolicyDetailAction {
  const ImagebuilderLifecyclePolicyPolicyDetailAction({
    required this.type,
    this.includeResources,
  });

  final TfArg<String> type;

  final List<ImagebuilderLifecyclePolicyPolicyDetailActionIncludeResources>?
  includeResources;

  Map<String, Object?> encode() => {
    'type': type.toTfJson(),
    if (includeResources != null)
      'include_resources': [for (final e in includeResources!) e.encode()],
  };
}

/// Typed helper for the `policy_detail.action.include_resources` block of
/// `aws_imagebuilder_lifecycle_policy` (derived from provider schema).
@immutable
final class ImagebuilderLifecyclePolicyPolicyDetailActionIncludeResources {
  const ImagebuilderLifecyclePolicyPolicyDetailActionIncludeResources({
    this.amis,
    this.containers,
    this.snapshots,
  });

  final TfArg<bool>? amis;

  final TfArg<bool>? containers;

  final TfArg<bool>? snapshots;

  Map<String, Object?> encode() => {
    if (amis != null) 'amis': amis!.toTfJson(),
    if (containers != null) 'containers': containers!.toTfJson(),
    if (snapshots != null) 'snapshots': snapshots!.toTfJson(),
  };
}

/// Typed helper for the `policy_detail.exclusion_rules` block of
/// `aws_imagebuilder_lifecycle_policy` (derived from provider schema).
@immutable
final class ImagebuilderLifecyclePolicyPolicyDetailExclusionRules {
  const ImagebuilderLifecyclePolicyPolicyDetailExclusionRules({
    this.tagMap,
    this.amis,
  });

  final TfArg<Map<String, String>>? tagMap;

  final List<ImagebuilderLifecyclePolicyPolicyDetailExclusionRulesAmis>? amis;

  Map<String, Object?> encode() => {
    if (tagMap != null) 'tag_map': tagMap!.toTfJson(),
    if (amis != null) 'amis': [for (final e in amis!) e.encode()],
  };
}

/// Typed helper for the `policy_detail.exclusion_rules.amis` block of
/// `aws_imagebuilder_lifecycle_policy` (derived from provider schema).
@immutable
final class ImagebuilderLifecyclePolicyPolicyDetailExclusionRulesAmis {
  const ImagebuilderLifecyclePolicyPolicyDetailExclusionRulesAmis({
    this.isPublic,
    this.regions,
    this.sharedAccounts,
    this.tagMap,
    this.lastLaunched,
  });

  final TfArg<bool>? isPublic;

  final TfArg<List<Object?>>? regions;

  final TfArg<List<Object?>>? sharedAccounts;

  final TfArg<Map<String, String>>? tagMap;

  final List<
    ImagebuilderLifecyclePolicyPolicyDetailExclusionRulesAmisLastLaunched
  >?
  lastLaunched;

  Map<String, Object?> encode() => {
    if (isPublic != null) 'is_public': isPublic!.toTfJson(),
    if (regions != null) 'regions': regions!.toTfJson(),
    if (sharedAccounts != null) 'shared_accounts': sharedAccounts!.toTfJson(),
    if (tagMap != null) 'tag_map': tagMap!.toTfJson(),
    if (lastLaunched != null)
      'last_launched': [for (final e in lastLaunched!) e.encode()],
  };
}

/// Typed helper for the `policy_detail.exclusion_rules.amis.last_launched` block of
/// `aws_imagebuilder_lifecycle_policy` (derived from provider schema).
@immutable
final class ImagebuilderLifecyclePolicyPolicyDetailExclusionRulesAmisLastLaunched {
  const ImagebuilderLifecyclePolicyPolicyDetailExclusionRulesAmisLastLaunched({
    required this.unit,
    required this.value,
  });

  final TfArg<String> unit;

  final TfArg<num> value;

  Map<String, Object?> encode() => {
    'unit': unit.toTfJson(),
    'value': value.toTfJson(),
  };
}

/// Typed helper for the `policy_detail.filter` block of
/// `aws_imagebuilder_lifecycle_policy` (derived from provider schema).
@immutable
final class ImagebuilderLifecyclePolicyPolicyDetailFilter {
  const ImagebuilderLifecyclePolicyPolicyDetailFilter({
    this.retainAtLeast,
    required this.type,
    this.unit,
    required this.value,
  });

  final TfArg<num>? retainAtLeast;

  final TfArg<String> type;

  final TfArg<String>? unit;

  final TfArg<num> value;

  Map<String, Object?> encode() => {
    if (retainAtLeast != null) 'retain_at_least': retainAtLeast!.toTfJson(),
    'type': type.toTfJson(),
    if (unit != null) 'unit': unit!.toTfJson(),
    'value': value.toTfJson(),
  };
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

  final List<ImagebuilderLifecyclePolicyResourceSelectionRecipe>? recipe;

  Map<String, Object?> encode() => {
    if (tagMap != null) 'tag_map': tagMap!.toTfJson(),
    if (recipe != null) 'recipe': [for (final e in recipe!) e.encode()],
  };
}

/// Typed helper for the `resource_selection.recipe` block of
/// `aws_imagebuilder_lifecycle_policy` (derived from provider schema).
@immutable
final class ImagebuilderLifecyclePolicyResourceSelectionRecipe {
  const ImagebuilderLifecyclePolicyResourceSelectionRecipe({
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

  AwsImagebuilderLifecyclePolicy({
    required super.localName,
    TfArg<String>? description,
    required TfArg<String> executionRole,
    required TfArg<String> name,
    TfArg<String>? region,
    required TfArg<String> resourceType,
    TfArg<String>? status,
    TfArg<Map<String, String>>? tags,
    List<ImagebuilderLifecyclePolicyPolicyDetail>? policyDetail,
    List<ImagebuilderLifecyclePolicyResourceSelection>? resourceSelection,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (description != null) 'description': description,
           'execution_role': executionRole,
           'name': name,
           if (region != null) 'region': region,
           'resource_type': resourceType,
           if (status != null) 'status': status,
           if (tags != null) 'tags': tags,
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

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `tags_all` attribute.
  TfRef<Map<String, String>> get tagsAll =>
      TfRef.attribute<Map<String, String>>(this, 'tags_all');
}
