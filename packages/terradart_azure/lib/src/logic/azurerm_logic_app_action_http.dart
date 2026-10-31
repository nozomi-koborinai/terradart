// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `azurerm_logic_app_action_http`.
const Set<String> _azurermLogicAppActionHttpSensitive = <String>{};

/// Logic App Action Http enum for `method`.
extension type const LogicAppActionHttpMethod._(TfArg<String> _)
    implements TfArg<String> {
  LogicAppActionHttpMethod.variable(String name) : this._(TfArg.variable(name));
  LogicAppActionHttpMethod.expression(String template)
    : this._(TfArg.expression(template));
  const LogicAppActionHttpMethod.arg(TfArg<String> arg) : this._(arg);

  static const delete = LogicAppActionHttpMethod._(TfArgLiteral('DELETE'));
  static const get = LogicAppActionHttpMethod._(TfArgLiteral('GET'));
  static const patch = LogicAppActionHttpMethod._(TfArgLiteral('PATCH'));
  static const post = LogicAppActionHttpMethod._(TfArgLiteral('POST'));
  static const put = LogicAppActionHttpMethod._(TfArgLiteral('PUT'));

  static const List<LogicAppActionHttpMethod> values = [
    delete,
    get,
    patch,
    post,
    put,
  ];
}

/// Typed helper for the `run_after` block of
/// `azurerm_logic_app_action_http` (derived from provider schema).
@immutable
final class LogicAppActionHttpRunAfter {
  const LogicAppActionHttpRunAfter({
    required this.actionName,
    required this.actionResult,
  });

  final TfArg<String> actionName;

  final LogicAppActionHttpActionResult actionResult;

  @internal
  Map<String, Object?> encode() => {
    'action_name': actionName.toTfJson(),
    'action_result': actionResult.toTfJson(),
  };
}

/// `action_result` — derived from the provider schema description.
extension type const LogicAppActionHttpActionResult._(TfArg<String> _)
    implements TfArg<String> {
  LogicAppActionHttpActionResult.variable(String name)
    : this._(TfArg.variable(name));
  LogicAppActionHttpActionResult.expression(String template)
    : this._(TfArg.expression(template));
  const LogicAppActionHttpActionResult.arg(TfArg<String> arg) : this._(arg);

  static const succeeded = LogicAppActionHttpActionResult._(
    TfArgLiteral('Succeeded'),
  );
  static const failed = LogicAppActionHttpActionResult._(
    TfArgLiteral('Failed'),
  );
  static const skipped = LogicAppActionHttpActionResult._(
    TfArgLiteral('Skipped'),
  );
  static const timedout = LogicAppActionHttpActionResult._(
    TfArgLiteral('TimedOut'),
  );

  static const List<LogicAppActionHttpActionResult> values = [
    succeeded,
    failed,
    skipped,
    timedout,
  ];
}

/// Factory wrapper for `azurerm_logic_app_action_http`.
final class AzurermLogicAppActionHttp extends Resource {
  static const String tfType = 'azurerm_logic_app_action_http';

  AzurermLogicAppActionHttp(
    super.localName, {
    TfArg<String>? body,
    TfArg<Map<String, String>>? headers,
    required TfArg<String> logicAppId,
    required LogicAppActionHttpMethod method,
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
