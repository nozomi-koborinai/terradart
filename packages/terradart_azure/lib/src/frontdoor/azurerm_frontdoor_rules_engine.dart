// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../resource/azurerm_resource_group.dart' show AzurermResourceGroup;

/// Sensitive field paths for `azurerm_frontdoor_rules_engine`.
const Set<String> _azurermFrontdoorRulesEngineSensitive = <String>{};

/// Typed helper for the `rule` block of
/// `azurerm_frontdoor_rules_engine` (derived from provider schema).
@immutable
final class FrontdoorRulesEngineRule {
  const FrontdoorRulesEngineRule({
    required this.name,
    required this.priority,
    this.action,
    this.matchCondition,
  });

  final TfArg<String> name;

  final TfArg<num> priority;

  final FrontdoorRulesEngineAction? action;

  final List<FrontdoorRulesEngineMatchCondition>? matchCondition;

  @internal
  Map<String, Object?> encode() => {
    'name': name.toTfJson(),
    'priority': priority.toTfJson(),
    'action': ?action?.encode(),
    if (matchCondition != null)
      'match_condition': [for (final e in matchCondition!) e.encode()],
  };
}

/// Typed helper for the `rule.action` block of
/// `azurerm_frontdoor_rules_engine` (derived from provider schema).
@immutable
final class FrontdoorRulesEngineAction {
  const FrontdoorRulesEngineAction({this.requestHeader, this.responseHeader});

  final List<FrontdoorRulesEngineRequestHeader>? requestHeader;

  final List<FrontdoorRulesEngineResponseHeader>? responseHeader;

  @internal
  Map<String, Object?> encode() => {
    if (requestHeader != null)
      'request_header': [for (final e in requestHeader!) e.encode()],
    if (responseHeader != null)
      'response_header': [for (final e in responseHeader!) e.encode()],
  };
}

/// Typed helper for the `rule.action.request_header` block of
/// `azurerm_frontdoor_rules_engine` (derived from provider schema).
@immutable
final class FrontdoorRulesEngineRequestHeader {
  const FrontdoorRulesEngineRequestHeader({
    this.headerActionType,
    this.headerName,
    this.value,
  });

  final TfArg<String>? headerActionType;

  final TfArg<String>? headerName;

  final TfArg<String>? value;

  @internal
  Map<String, Object?> encode() => {
    'header_action_type': ?headerActionType?.toTfJson(),
    'header_name': ?headerName?.toTfJson(),
    'value': ?value?.toTfJson(),
  };
}

/// Typed helper for the `rule.action.response_header` block of
/// `azurerm_frontdoor_rules_engine` (derived from provider schema).
@immutable
final class FrontdoorRulesEngineResponseHeader {
  const FrontdoorRulesEngineResponseHeader({
    this.headerActionType,
    this.headerName,
    this.value,
  });

  final TfArg<String>? headerActionType;

  final TfArg<String>? headerName;

  final TfArg<String>? value;

  @internal
  Map<String, Object?> encode() => {
    'header_action_type': ?headerActionType?.toTfJson(),
    'header_name': ?headerName?.toTfJson(),
    'value': ?value?.toTfJson(),
  };
}

/// Typed helper for the `rule.match_condition` block of
/// `azurerm_frontdoor_rules_engine` (derived from provider schema).
@immutable
final class FrontdoorRulesEngineMatchCondition {
  const FrontdoorRulesEngineMatchCondition({
    this.negateCondition,
    required this.operator,
    this.selector,
    this.transform,
    this.value,
    this.variable,
  });

  final TfArg<bool>? negateCondition;

  final TfArg<String> operator;

  final TfArg<String>? selector;

  final TfArg<List<String>>? transform;

  final TfArg<List<String>>? value;

  final TfArg<String>? variable;

  @internal
  Map<String, Object?> encode() => {
    'negate_condition': ?negateCondition?.toTfJson(),
    'operator': operator.toTfJson(),
    'selector': ?selector?.toTfJson(),
    'transform': ?transform?.toTfJson(),
    'value': ?value?.toTfJson(),
    'variable': ?variable?.toTfJson(),
  };
}

/// Factory wrapper for `azurerm_frontdoor_rules_engine`.
final class AzurermFrontdoorRulesEngine extends Resource {
  static const String tfType = 'azurerm_frontdoor_rules_engine';

  AzurermFrontdoorRulesEngine(
    super.localName, {
    TfArg<bool>? enabled,
    required TfArg<String> frontdoorName,
    required TfArg<String> name,
    required RefTo<AzurermResourceGroup> resourceGroupName,
    List<FrontdoorRulesEngineRule>? rule,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'enabled': ?enabled,
           'frontdoor_name': frontdoorName,
           'name': name,
           'resource_group_name': resourceGroupName.encodeAs('name'),
           if (rule != null)
             'rule': TfArg.literal([for (final e in rule) e.encode()]),
         },
       );

  @override
  Set<String> get sensitiveFields => _azurermFrontdoorRulesEngineSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermFrontdoorRulesEngine>`.
  RefTo<AzurermFrontdoorRulesEngine> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `enabled` attribute.
  TfRef<bool> get enabled => TfRef.attribute<bool>(this, 'enabled');

  /// Reference to `frontdoor_name` attribute.
  TfRef<String> get frontdoorName =>
      TfRef.attribute<String>(this, 'frontdoor_name');

  /// Reference to `resource_group_name` attribute.
  TfRef<String> get resourceGroupName =>
      TfRef.attribute<String>(this, 'resource_group_name');
}
