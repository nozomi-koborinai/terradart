// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `azurerm_cognitive_account_connection_entra_id`.
const Set<String> _azurermCognitiveAccountConnectionEntraIdSensitive =
    <String>{};

/// Cognitive Account Connection Entra Id enum for `category`.
extension type const CognitiveAccountConnectionEntraIdCategory._(
  TfArg<String> _
) implements TfArg<String> {
  CognitiveAccountConnectionEntraIdCategory.variable(String name)
    : this._(TfArg.variable(name));
  CognitiveAccountConnectionEntraIdCategory.expression(String template)
    : this._(TfArg.expression(template));
  const CognitiveAccountConnectionEntraIdCategory.arg(TfArg<String> arg)
    : this._(arg);

  static const aiservices = CognitiveAccountConnectionEntraIdCategory._(
    TfArgLiteral('AIServices'),
  );
  static const apimanagement = CognitiveAccountConnectionEntraIdCategory._(
    TfArgLiteral('ApiManagement'),
  );
  static const appconfig = CognitiveAccountConnectionEntraIdCategory._(
    TfArgLiteral('AppConfig'),
  );
  static const azureopenai = CognitiveAccountConnectionEntraIdCategory._(
    TfArgLiteral('AzureOpenAI'),
  );
  static const azurestorageaccount =
      CognitiveAccountConnectionEntraIdCategory._(
        TfArgLiteral('AzureStorageAccount'),
      );
  static const cognitiveservice = CognitiveAccountConnectionEntraIdCategory._(
    TfArgLiteral('CognitiveService'),
  );
  static const cognitivesearch = CognitiveAccountConnectionEntraIdCategory._(
    TfArgLiteral('CognitiveSearch'),
  );
  static const cosmosdb = CognitiveAccountConnectionEntraIdCategory._(
    TfArgLiteral('CosmosDb'),
  );
  static const databricks = CognitiveAccountConnectionEntraIdCategory._(
    TfArgLiteral('Databricks'),
  );
  static const managedonlineendpoint =
      CognitiveAccountConnectionEntraIdCategory._(
        TfArgLiteral('ManagedOnlineEndpoint'),
      );
  static const microsoftfabric = CognitiveAccountConnectionEntraIdCategory._(
    TfArgLiteral('MicrosoftFabric'),
  );
  static const sharepoint = CognitiveAccountConnectionEntraIdCategory._(
    TfArgLiteral('Sharepoint'),
  );

  static const List<CognitiveAccountConnectionEntraIdCategory> values = [
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

/// Factory wrapper for `azurerm_cognitive_account_connection_entra_id`.
final class AzurermCognitiveAccountConnectionEntraId extends Resource {
  static const String tfType = 'azurerm_cognitive_account_connection_entra_id';

  AzurermCognitiveAccountConnectionEntraId(
    super.localName, {
    required CognitiveAccountConnectionEntraIdCategory category,
    required TfArg<String> cognitiveAccountId,
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
           'cognitive_account_id': cognitiveAccountId,
           'metadata': ?metadata,
           'name': name,
           'target': target,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _azurermCognitiveAccountConnectionEntraIdSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermCognitiveAccountConnectionEntraId>`.
  RefTo<AzurermCognitiveAccountConnectionEntraId> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `category` attribute.
  TfRef<String> get category => TfRef.attribute<String>(this, 'category');

  /// Reference to `cognitive_account_id` attribute.
  TfRef<String> get cognitiveAccountId =>
      TfRef.attribute<String>(this, 'cognitive_account_id');

  /// Reference to `metadata` attribute.
  TfRef<Map<String, String>> get metadata =>
      TfRef.attribute<Map<String, String>>(this, 'metadata');

  /// Reference to `target` attribute.
  TfRef<String> get target => TfRef.attribute<String>(this, 'target');
}
