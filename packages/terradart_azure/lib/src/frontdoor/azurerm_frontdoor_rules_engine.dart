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

  final FrontdoorRulesEngineHeaderActionType? headerActionType;

  final TfArg<String>? headerName;

  final TfArg<String>? value;

  @internal
  Map<String, Object?> encode() => {
    'header_action_type': ?headerActionType?.toTfJson(),
    'header_name': ?headerName?.toTfJson(),
    'value': ?value?.toTfJson(),
  };
}

/// `header_action_type` — derived from the provider schema description.
extension type const FrontdoorRulesEngineHeaderActionType._(TfArg<String> _)
    implements TfArg<String> {
  FrontdoorRulesEngineHeaderActionType.variable(String name)
    : this._(TfArg.variable(name));
  FrontdoorRulesEngineHeaderActionType.expression(String template)
    : this._(TfArg.expression(template));
  const FrontdoorRulesEngineHeaderActionType.arg(TfArg<String> arg)
    : this._(arg);

  static const append = FrontdoorRulesEngineHeaderActionType._(
    TfArgLiteral('Append'),
  );
  static const delete = FrontdoorRulesEngineHeaderActionType._(
    TfArgLiteral('Delete'),
  );
  static const overwrite = FrontdoorRulesEngineHeaderActionType._(
    TfArgLiteral('Overwrite'),
  );

  static const List<FrontdoorRulesEngineHeaderActionType> values = [
    append,
    delete,
    overwrite,
  ];
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

  final FrontdoorRulesEngineHeaderActionType? headerActionType;

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

  final FrontdoorRulesEngineOperator operator;

  final TfArg<String>? selector;

  final List<FrontdoorRulesEngineTransform>? transform;

  final TfArg<List<String>>? value;

  final FrontdoorRulesEngineVariable? variable;

  @internal
  Map<String, Object?> encode() => {
    'negate_condition': ?negateCondition?.toTfJson(),
    'operator': operator.toTfJson(),
    'selector': ?selector?.toTfJson(),
    if (transform != null)
      'transform': [for (final e in transform!) e.toTfJson()],
    'value': ?value?.toTfJson(),
    'variable': ?variable?.toTfJson(),
  };
}

/// `operator` — derived from the provider schema description.
extension type const FrontdoorRulesEngineOperator._(TfArg<String> _)
    implements TfArg<String> {
  FrontdoorRulesEngineOperator.variable(String name)
    : this._(TfArg.variable(name));
  FrontdoorRulesEngineOperator.expression(String template)
    : this._(TfArg.expression(template));
  const FrontdoorRulesEngineOperator.arg(TfArg<String> arg) : this._(arg);

  static const any = FrontdoorRulesEngineOperator._(TfArgLiteral('Any'));
  static const ipmatch = FrontdoorRulesEngineOperator._(
    TfArgLiteral('IPMatch'),
  );
  static const geomatch = FrontdoorRulesEngineOperator._(
    TfArgLiteral('GeoMatch'),
  );
  static const equal = FrontdoorRulesEngineOperator._(TfArgLiteral('Equal'));
  static const contains = FrontdoorRulesEngineOperator._(
    TfArgLiteral('Contains'),
  );
  static const lessthan = FrontdoorRulesEngineOperator._(
    TfArgLiteral('LessThan'),
  );
  static const greaterthan = FrontdoorRulesEngineOperator._(
    TfArgLiteral('GreaterThan'),
  );
  static const lessthanorequal = FrontdoorRulesEngineOperator._(
    TfArgLiteral('LessThanOrEqual'),
  );
  static const greaterthanorequal = FrontdoorRulesEngineOperator._(
    TfArgLiteral('GreaterThanOrEqual'),
  );
  static const beginswith = FrontdoorRulesEngineOperator._(
    TfArgLiteral('BeginsWith'),
  );
  static const endswith = FrontdoorRulesEngineOperator._(
    TfArgLiteral('EndsWith'),
  );

  static const List<FrontdoorRulesEngineOperator> values = [
    any,
    ipmatch,
    geomatch,
    equal,
    contains,
    lessthan,
    greaterthan,
    lessthanorequal,
    greaterthanorequal,
    beginswith,
    endswith,
  ];
}

/// `transform` — derived from the provider schema description.
extension type const FrontdoorRulesEngineTransform._(TfArg<String> _)
    implements TfArg<String> {
  FrontdoorRulesEngineTransform.variable(String name)
    : this._(TfArg.variable(name));
  FrontdoorRulesEngineTransform.expression(String template)
    : this._(TfArg.expression(template));
  const FrontdoorRulesEngineTransform.arg(TfArg<String> arg) : this._(arg);

  static const lowercase = FrontdoorRulesEngineTransform._(
    TfArgLiteral('Lowercase'),
  );
  static const removenulls = FrontdoorRulesEngineTransform._(
    TfArgLiteral('RemoveNulls'),
  );
  static const trim = FrontdoorRulesEngineTransform._(TfArgLiteral('Trim'));
  static const uppercase = FrontdoorRulesEngineTransform._(
    TfArgLiteral('Uppercase'),
  );
  static const urldecode = FrontdoorRulesEngineTransform._(
    TfArgLiteral('UrlDecode'),
  );
  static const urlencode = FrontdoorRulesEngineTransform._(
    TfArgLiteral('UrlEncode'),
  );

  static const List<FrontdoorRulesEngineTransform> values = [
    lowercase,
    removenulls,
    trim,
    uppercase,
    urldecode,
    urlencode,
  ];
}

/// `variable` — derived from the provider schema description.
extension type const FrontdoorRulesEngineVariable._(TfArg<String> _)
    implements TfArg<String> {
  FrontdoorRulesEngineVariable.variable(String name)
    : this._(TfArg.variable(name));
  FrontdoorRulesEngineVariable.expression(String template)
    : this._(TfArg.expression(template));
  const FrontdoorRulesEngineVariable.arg(TfArg<String> arg) : this._(arg);

  static const ismobile = FrontdoorRulesEngineVariable._(
    TfArgLiteral('IsMobile'),
  );
  static const remoteaddr = FrontdoorRulesEngineVariable._(
    TfArgLiteral('RemoteAddr'),
  );
  static const requestmethod = FrontdoorRulesEngineVariable._(
    TfArgLiteral('RequestMethod'),
  );
  static const querystring = FrontdoorRulesEngineVariable._(
    TfArgLiteral('QueryString'),
  );
  static const postargs = FrontdoorRulesEngineVariable._(
    TfArgLiteral('PostArgs'),
  );
  static const requesturi = FrontdoorRulesEngineVariable._(
    TfArgLiteral('RequestUri'),
  );
  static const requestpath = FrontdoorRulesEngineVariable._(
    TfArgLiteral('RequestPath'),
  );
  static const requestfilename = FrontdoorRulesEngineVariable._(
    TfArgLiteral('RequestFilename'),
  );
  static const requestfilenameextension = FrontdoorRulesEngineVariable._(
    TfArgLiteral('RequestFilenameExtension'),
  );
  static const requestheader = FrontdoorRulesEngineVariable._(
    TfArgLiteral('RequestHeader'),
  );
  static const requestbody = FrontdoorRulesEngineVariable._(
    TfArgLiteral('RequestBody'),
  );
  static const requestscheme = FrontdoorRulesEngineVariable._(
    TfArgLiteral('RequestScheme'),
  );

  static const List<FrontdoorRulesEngineVariable> values = [
    ismobile,
    remoteaddr,
    requestmethod,
    querystring,
    postargs,
    requesturi,
    requestpath,
    requestfilename,
    requestfilenameextension,
    requestheader,
    requestbody,
    requestscheme,
  ];
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
