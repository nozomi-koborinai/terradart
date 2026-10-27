// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `azurerm_kusto_script`.
const Set<String> _azurermKustoScriptSensitive = <String>{
  'sas_token',
  'script_content',
};

/// Kusto Script Principal Permissions enum for `principal_permissions_action`.
extension type const KustoScriptPrincipalPermissionsAction._(TfArg<String> _)
    implements TfArg<String> {
  KustoScriptPrincipalPermissionsAction.variable(String name)
    : this._(TfArg.variable(name));
  KustoScriptPrincipalPermissionsAction.expression(String template)
    : this._(TfArg.expression(template));
  const KustoScriptPrincipalPermissionsAction.arg(TfArg<String> arg)
    : this._(arg);

  static const removepermissiononscriptcompletion =
      KustoScriptPrincipalPermissionsAction._(
        TfArgLiteral('RemovePermissionOnScriptCompletion'),
      );
  static const retainpermissiononscriptcompletion =
      KustoScriptPrincipalPermissionsAction._(
        TfArgLiteral('RetainPermissionOnScriptCompletion'),
      );

  static const List<KustoScriptPrincipalPermissionsAction> values = [
    removepermissiononscriptcompletion,
    retainpermissiononscriptcompletion,
  ];
}

/// Kusto Script enum for `script_level`.
extension type const KustoScriptLevel._(TfArg<String> _)
    implements TfArg<String> {
  KustoScriptLevel.variable(String name) : this._(TfArg.variable(name));
  KustoScriptLevel.expression(String template)
    : this._(TfArg.expression(template));
  const KustoScriptLevel.arg(TfArg<String> arg) : this._(arg);

  static const cluster = KustoScriptLevel._(TfArgLiteral('Cluster'));
  static const database = KustoScriptLevel._(TfArgLiteral('Database'));

  static const List<KustoScriptLevel> values = [cluster, database];
}

/// Exactly one of `script_content`, `url` on `azurerm_kusto_script`: the provider rejects
/// none and more than one, so each variant sets one of them.
///
/// Pick one with a dot shorthand: `.scriptContent(...)`.
sealed class KustoScriptContent {
  const KustoScriptContent();

  /// Sets `script_content`.
  const factory KustoScriptContent.scriptContent(
    Sensitive<String> scriptContent,
  ) = KustoScriptContentChoice;

  /// Sets `url`.
  const factory KustoScriptContent.url(TfArg<String> url) =
      KustoScriptContentUrl;

  /// The Terraform argument this choice sets.
  @internal
  String get blockKey;

  @internal
  Map<String, Object?> encode();

  /// The resource arguments behind [encode], as the caller's
  /// [TfArg]s.
  @internal
  Map<String, TfArg<Object?>> get argMap;
}

/// The [KustoScriptContent.scriptContent] choice: sets `script_content`.
final class KustoScriptContentChoice extends KustoScriptContent {
  const KustoScriptContentChoice(this.scriptContent);

  final Sensitive<String> scriptContent;

  @internal
  @override
  String get blockKey => 'script_content';

  @internal
  @override
  Map<String, Object?> encode() => {'script_content': scriptContent.toTfJson()};

  @internal
  @override
  Map<String, TfArg<Object?>> get argMap => {'script_content': scriptContent};
}

/// The [KustoScriptContent.url] choice: sets `url`.
final class KustoScriptContentUrl extends KustoScriptContent {
  const KustoScriptContentUrl(this.url);

  final TfArg<String> url;

  @internal
  @override
  String get blockKey => 'url';

  @internal
  @override
  Map<String, Object?> encode() => {'url': url.toTfJson()};

  @internal
  @override
  Map<String, TfArg<Object?>> get argMap => {'url': url};
}

/// Factory wrapper for `azurerm_kusto_script`.
final class AzurermKustoScript extends Resource {
  static const String tfType = 'azurerm_kusto_script';

  AzurermKustoScript(
    super.localName, {
    TfArg<bool>? continueOnErrorsEnabled,
    required TfArg<String> databaseId,
    TfArg<String>? forceAnUpdateWhenValueChanged,
    required TfArg<String> name,
    KustoScriptPrincipalPermissionsAction? principalPermissionsAction,
    Sensitive<String>? sasToken,
    required KustoScriptContent content,
    KustoScriptLevel? scriptLevel,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'continue_on_errors_enabled': ?continueOnErrorsEnabled,
           'database_id': databaseId,
           'force_an_update_when_value_changed': ?forceAnUpdateWhenValueChanged,
           'name': name,
           'principal_permissions_action': ?principalPermissionsAction,
           'sas_token': ?sasToken,
           ...content.argMap,
           'script_level': ?scriptLevel,
         },
       );

  @override
  Set<String> get sensitiveFields => _azurermKustoScriptSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermKustoScript>`.
  RefTo<AzurermKustoScript> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `continue_on_errors_enabled` attribute.
  TfRef<bool> get continueOnErrorsEnabled =>
      TfRef.attribute<bool>(this, 'continue_on_errors_enabled');

  /// Reference to `database_id` attribute.
  TfRef<String> get databaseId => TfRef.attribute<String>(this, 'database_id');

  /// Reference to `force_an_update_when_value_changed` attribute.
  TfRef<String> get forceAnUpdateWhenValueChanged =>
      TfRef.attribute<String>(this, 'force_an_update_when_value_changed');

  /// Reference to `principal_permissions_action` attribute.
  TfRef<String> get principalPermissionsAction =>
      TfRef.attribute<String>(this, 'principal_permissions_action');

  /// Reference to `sas_token` attribute.
  TfRef<String> get sasToken => TfRef.attribute<String>(this, 'sas_token');

  /// Reference to `script_content` attribute.
  TfRef<String> get scriptContent =>
      TfRef.attribute<String>(this, 'script_content');

  /// Reference to `script_level` attribute.
  TfRef<String> get scriptLevel =>
      TfRef.attribute<String>(this, 'script_level');

  /// Reference to `url` attribute.
  TfRef<String> get url => TfRef.attribute<String>(this, 'url');
}
