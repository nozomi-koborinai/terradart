// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `azurerm_application_insights_api_key`.
const Set<String> _azurermApplicationInsightsApiKeySensitive = <String>{
  'api_key',
};

/// Application Insights Api Key Read enum for `read_permissions`.
extension type const ApplicationInsightsApiKeyReadPermissions._(TfArg<String> _)
    implements TfArg<String> {
  ApplicationInsightsApiKeyReadPermissions.variable(String name)
    : this._(TfArg.variable(name));
  ApplicationInsightsApiKeyReadPermissions.expression(String template)
    : this._(TfArg.expression(template));
  const ApplicationInsightsApiKeyReadPermissions.arg(TfArg<String> arg)
    : this._(arg);

  static const agentconfig = ApplicationInsightsApiKeyReadPermissions._(
    TfArgLiteral('agentconfig'),
  );
  static const aggregate = ApplicationInsightsApiKeyReadPermissions._(
    TfArgLiteral('aggregate'),
  );
  static const api = ApplicationInsightsApiKeyReadPermissions._(
    TfArgLiteral('api'),
  );
  static const draft = ApplicationInsightsApiKeyReadPermissions._(
    TfArgLiteral('draft'),
  );
  static const extendqueries = ApplicationInsightsApiKeyReadPermissions._(
    TfArgLiteral('extendqueries'),
  );
  static const search = ApplicationInsightsApiKeyReadPermissions._(
    TfArgLiteral('search'),
  );

  static const List<ApplicationInsightsApiKeyReadPermissions> values = [
    agentconfig,
    aggregate,
    api,
    draft,
    extendqueries,
    search,
  ];
}

/// Application Insights Api Key Write enum for `write_permissions`.
extension type const ApplicationInsightsApiKeyWritePermissions._(
  TfArg<String> _
) implements TfArg<String> {
  ApplicationInsightsApiKeyWritePermissions.variable(String name)
    : this._(TfArg.variable(name));
  ApplicationInsightsApiKeyWritePermissions.expression(String template)
    : this._(TfArg.expression(template));
  const ApplicationInsightsApiKeyWritePermissions.arg(TfArg<String> arg)
    : this._(arg);

  static const annotations = ApplicationInsightsApiKeyWritePermissions._(
    TfArgLiteral('annotations'),
  );

  static const List<ApplicationInsightsApiKeyWritePermissions> values = [
    annotations,
  ];
}

/// Factory wrapper for `azurerm_application_insights_api_key`.
final class AzurermApplicationInsightsApiKey extends Resource {
  static const String tfType = 'azurerm_application_insights_api_key';

  AzurermApplicationInsightsApiKey(
    super.localName, {
    required TfArg<String> applicationInsightsId,
    required TfArg<String> name,
    List<ApplicationInsightsApiKeyReadPermissions>? readPermissions,
    List<ApplicationInsightsApiKeyWritePermissions>? writePermissions,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'application_insights_id': applicationInsightsId,
           'name': name,
           if (readPermissions != null)
             'read_permissions': TfArg.literal([
               for (final e in readPermissions) e.toTfJson(),
             ]),
           if (writePermissions != null)
             'write_permissions': TfArg.literal([
               for (final e in writePermissions) e.toTfJson(),
             ]),
         },
       );

  @override
  Set<String> get sensitiveFields => _azurermApplicationInsightsApiKeySensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermApplicationInsightsApiKey>`.
  RefTo<AzurermApplicationInsightsApiKey> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `api_key` attribute.
  TfRef<String> get apiKey => TfRef.attribute<String>(this, 'api_key');

  /// Reference to `application_insights_id` attribute.
  TfRef<String> get applicationInsightsId =>
      TfRef.attribute<String>(this, 'application_insights_id');

  /// Reference to `read_permissions` attribute.
  TfRef<List<String>> get readPermissions =>
      TfRef.attribute<List<String>>(this, 'read_permissions');

  /// Reference to `write_permissions` attribute.
  TfRef<List<String>> get writePermissions =>
      TfRef.attribute<List<String>>(this, 'write_permissions');
}
