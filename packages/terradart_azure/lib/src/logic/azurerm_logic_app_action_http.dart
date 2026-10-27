// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `azurerm_logic_app_action_http`.
const Set<String> _azurermLogicAppActionHttpSensitive = <String>{};

/// Typed helper for the `run_after` block of
/// `azurerm_logic_app_action_http` (derived from provider schema).
@immutable
final class LogicAppActionHttpRunAfter {
  const LogicAppActionHttpRunAfter({
    required this.actionName,
    required this.actionResult,
  });

  final TfArg<String> actionName;

  final TfArg<String> actionResult;

  @internal
  Map<String, Object?> encode() => {
    'action_name': actionName.toTfJson(),
    'action_result': actionResult.toTfJson(),
  };
}

/// Factory wrapper for `azurerm_logic_app_action_http`.
final class AzurermLogicAppActionHttp extends Resource {
  static const String tfType = 'azurerm_logic_app_action_http';

  AzurermLogicAppActionHttp(
    super.localName, {
    TfArg<String>? body,
    TfArg<Map<String, String>>? headers,
    required TfArg<String> logicAppId,
    required TfArg<String> method,
    required TfArg<String> name,
    TfArg<Map<String, String>>? queries,
    required TfArg<String> uri,
    List<LogicAppActionHttpRunAfter>? runAfter,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'body': ?body,
           'headers': ?headers,
           'logic_app_id': logicAppId,
           'method': method,
           'name': name,
           'queries': ?queries,
           'uri': uri,
           if (runAfter != null)
             'run_after': TfArg.literal([for (final e in runAfter) e.encode()]),
         },
       );

  @override
  Set<String> get sensitiveFields => _azurermLogicAppActionHttpSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermLogicAppActionHttp>`.
  RefTo<AzurermLogicAppActionHttp> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `body` attribute.
  TfRef<String> get body => TfRef.attribute<String>(this, 'body');

  /// Reference to `headers` attribute.
  TfRef<Map<String, String>> get headers =>
      TfRef.attribute<Map<String, String>>(this, 'headers');

  /// Reference to `logic_app_id` attribute.
  TfRef<String> get logicAppId => TfRef.attribute<String>(this, 'logic_app_id');

  /// Reference to `method` attribute.
  TfRef<String> get method => TfRef.attribute<String>(this, 'method');

  /// Reference to `queries` attribute.
  TfRef<Map<String, String>> get queries =>
      TfRef.attribute<Map<String, String>>(this, 'queries');

  /// Reference to `uri` attribute.
  TfRef<String> get uri => TfRef.attribute<String>(this, 'uri');
}
