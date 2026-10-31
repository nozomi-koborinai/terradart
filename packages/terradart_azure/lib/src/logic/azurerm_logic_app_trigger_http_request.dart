// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `azurerm_logic_app_trigger_http_request`.
const Set<String> _azurermLogicAppTriggerHttpRequestSensitive = <String>{};

/// Logic App Trigger Http Request enum for `method`.
extension type const LogicAppTriggerHttpRequestMethod._(TfArg<String> _)
    implements TfArg<String> {
  LogicAppTriggerHttpRequestMethod.variable(String name)
    : this._(TfArg.variable(name));
  LogicAppTriggerHttpRequestMethod.expression(String template)
    : this._(TfArg.expression(template));
  const LogicAppTriggerHttpRequestMethod.arg(TfArg<String> arg) : this._(arg);

  static const delete = LogicAppTriggerHttpRequestMethod._(
    TfArgLiteral('DELETE'),
  );
  static const get = LogicAppTriggerHttpRequestMethod._(TfArgLiteral('GET'));
  static const patch = LogicAppTriggerHttpRequestMethod._(
    TfArgLiteral('PATCH'),
  );
  static const post = LogicAppTriggerHttpRequestMethod._(TfArgLiteral('POST'));
  static const put = LogicAppTriggerHttpRequestMethod._(TfArgLiteral('PUT'));

  static const List<LogicAppTriggerHttpRequestMethod> values = [
    delete,
    get,
    patch,
    post,
    put,
  ];
}

/// Factory wrapper for `azurerm_logic_app_trigger_http_request`.
final class AzurermLogicAppTriggerHttpRequest extends Resource {
  static const String tfType = 'azurerm_logic_app_trigger_http_request';

  AzurermLogicAppTriggerHttpRequest(
    super.localName, {
    required TfArg<String> logicAppId,
    LogicAppTriggerHttpRequestMethod? method,
    required TfArg<String> name,
    TfArg<String>? relativePath,
    required TfArg<String> schema,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'logic_app_id': logicAppId,
           'method': ?method,
           'name': name,
           'relative_path': ?relativePath,
           'schema': schema,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _azurermLogicAppTriggerHttpRequestSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermLogicAppTriggerHttpRequest>`.
  RefTo<AzurermLogicAppTriggerHttpRequest> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `callback_url` attribute.
  TfRef<String> get callbackUrl =>
      TfRef.attribute<String>(this, 'callback_url');

  /// Reference to `logic_app_id` attribute.
  TfRef<String> get logicAppId => TfRef.attribute<String>(this, 'logic_app_id');

  /// Reference to `method` attribute.
  TfRef<String> get method => TfRef.attribute<String>(this, 'method');

  /// Reference to `relative_path` attribute.
  TfRef<String> get relativePath =>
      TfRef.attribute<String>(this, 'relative_path');

  /// Reference to `schema` attribute.
  TfRef<String> get schema => TfRef.attribute<String>(this, 'schema');
}
