// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `azurerm_cognitive_account_project_connection_entra_id`.
const Set<String> _azurermCognitiveAccountProjectConnectionEntraIdSensitive =
    <String>{};

/// Cognitive Account Project Connection Entra Id enum for `category`.
extension type const CognitiveAccountProjectConnectionEntraIdCategory._(
  TfArg<String> _
)
    implements TfArg<String> {
  CognitiveAccountProjectConnectionEntraIdCategory.variable(String name)
    : this._(TfArg.variable(name));
  CognitiveAccountProjectConnectionEntraIdCategory.expression(String template)
    : this._(TfArg.expression(template));
  const CognitiveAccountProjectConnectionEntraIdCategory.arg(TfArg<String> arg)
    : this._(arg);

  static const aiservices = CognitiveAccountProjectConnectionEntraIdCategory._(
    TfArgLiteral('AIServices'),
  );
  static const apimanagement =
      CognitiveAccountProjectConnectionEntraIdCategory._(
        TfArgLiteral('ApiManagement'),
      );
  static const appconfig = CognitiveAccountProjectConnectionEntraIdCategory._(
    TfArgLiteral('AppConfig'),
  );
  static const azureopenai = CognitiveAccountProjectConnectionEntraIdCategory._(
    TfArgLiteral('AzureOpenAI'),
  );
  static const azurestorageaccount =
      CognitiveAccountProjectConnectionEntraIdCategory._(
        TfArgLiteral('AzureStorageAccount'),
      );
  static const cognitiveservice =
      CognitiveAccountProjectConnectionEntraIdCategory._(
        TfArgLiteral('CognitiveService'),
      );
  static const cognitivesearch =
      CognitiveAccountProjectConnectionEntraIdCategory._(
        TfArgLiteral('CognitiveSearch'),
      );
  static const cosmosdb = CognitiveAccountProjectConnectionEntraIdCategory._(
    TfArgLiteral('CosmosDb'),
  );
  static const databricks = CognitiveAccountProjectConnectionEntraIdCategory._(
    TfArgLiteral('Databricks'),
  );
  static const managedonlineendpoint =
      CognitiveAccountProjectConnectionEntraIdCategory._(
        TfArgLiteral('ManagedOnlineEndpoint'),
      );
  static const microsoftfabric =
      CognitiveAccountProjectConnectionEntraIdCategory._(
        TfArgLiteral('MicrosoftFabric'),
      );
  static const sharepoint = CognitiveAccountProjectConnectionEntraIdCategory._(
    TfArgLiteral('Sharepoint'),
  );

  static const List<CognitiveAccountProjectConnectionEntraIdCategory> values = [
    aiservices,
    apimanagement,
    appconfig,
    azureopenai,
    azurestorageaccount,
    cognitiveservice,
    cognitivesearch,
    cosmosdb,
    databricks,
    managedonlineendpoint,
    microsoftfabric,
    sharepoint,
  ];
}

/// Factory wrapper for `azurerm_cognitive_account_project_connection_entra_id`.
final class AzurermCognitiveAccountProjectConnectionEntraId extends Resource {
  static const String tfType =
      'azurerm_cognitive_account_project_connection_entra_id';

  AzurermCognitiveAccountProjectConnectionEntraId(
    super.localName, {
    required CognitiveAccountProjectConnectionEntraIdCategory category,
    required TfArg<String> cognitiveAccountProjectId,
    TfArg<Map<String, String>>? metadata,
    required TfArg<String> name,
    required TfArg<String> target,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'category': category,
           'cognitive_account_project_id': cognitiveAccountProjectId,
           'metadata': ?metadata,
           'name': name,
           'target': target,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _azurermCognitiveAccountProjectConnectionEntraIdSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermCognitiveAccountProjectConnectionEntraId>`.
  RefTo<AzurermCognitiveAccountProjectConnectionEntraId> get ref =>
      RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `authentication_type` attribute.
  TfRef<String> get authenticationType =>
      TfRef.attribute<String>(this, 'authentication_type');

  /// Reference to `category` attribute.
  TfRef<String> get category => TfRef.attribute<String>(this, 'category');

  /// Reference to `cognitive_account_project_id` attribute.
  TfRef<String> get cognitiveAccountProjectId =>
      TfRef.attribute<String>(this, 'cognitive_account_project_id');

  /// Reference to `metadata` attribute.
  TfRef<Map<String, String>> get metadata =>
      TfRef.attribute<Map<String, String>>(this, 'metadata');

  /// Reference to `target` attribute.
  TfRef<String> get target => TfRef.attribute<String>(this, 'target');
}
