// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `azurerm_cognitive_account_connection_api_key`.
const Set<String> _azurermCognitiveAccountConnectionApiKeySensitive = <String>{
  'api_key',
};

/// Cognitive Account Connection Api Key enum for `category`.
extension type const CognitiveAccountConnectionApiKeyCategory._(TfArg<String> _)
    implements TfArg<String> {
  CognitiveAccountConnectionApiKeyCategory.variable(String name)
    : this._(TfArg.variable(name));
  CognitiveAccountConnectionApiKeyCategory.expression(String template)
    : this._(TfArg.expression(template));
  const CognitiveAccountConnectionApiKeyCategory.arg(TfArg<String> arg)
    : this._(arg);

  static const aiservices = CognitiveAccountConnectionApiKeyCategory._(
    TfArgLiteral('AIServices'),
  );
  static const apimanagement = CognitiveAccountConnectionApiKeyCategory._(
    TfArgLiteral('ApiManagement'),
  );
  static const apikey = CognitiveAccountConnectionApiKeyCategory._(
    TfArgLiteral('ApiKey'),
  );
  static const appconfig = CognitiveAccountConnectionApiKeyCategory._(
    TfArgLiteral('AppConfig'),
  );
  static const appinsights = CognitiveAccountConnectionApiKeyCategory._(
    TfArgLiteral('AppInsights'),
  );
  static const azureopenai = CognitiveAccountConnectionApiKeyCategory._(
    TfArgLiteral('AzureOpenAI'),
  );
  static const bingllmsearch = CognitiveAccountConnectionApiKeyCategory._(
    TfArgLiteral('BingLLMSearch'),
  );
  static const cognitiveservice = CognitiveAccountConnectionApiKeyCategory._(
    TfArgLiteral('CognitiveService'),
  );
  static const cognitivesearch = CognitiveAccountConnectionApiKeyCategory._(
    TfArgLiteral('CognitiveSearch'),
  );
  static const groundingwithbingsearch =
      CognitiveAccountConnectionApiKeyCategory._(
        TfArgLiteral('GroundingWithBingSearch'),
      );
  static const groundingwithcustomsearch =
      CognitiveAccountConnectionApiKeyCategory._(
        TfArgLiteral('GroundingWithCustomSearch'),
      );
  static const modelgateway = CognitiveAccountConnectionApiKeyCategory._(
    TfArgLiteral('ModelGateway'),
  );
  static const openai = CognitiveAccountConnectionApiKeyCategory._(
    TfArgLiteral('OpenAI'),
  );
  static const pinecone = CognitiveAccountConnectionApiKeyCategory._(
    TfArgLiteral('Pinecone'),
  );
  static const serp = CognitiveAccountConnectionApiKeyCategory._(
    TfArgLiteral('Serp'),
  );
  static const serverless = CognitiveAccountConnectionApiKeyCategory._(
    TfArgLiteral('Serverless'),
  );

  static const List<CognitiveAccountConnectionApiKeyCategory> values = [
    aiservices,
    apimanagement,
    apikey,
    appconfig,
    appinsights,
    azureopenai,
    bingllmsearch,
    cognitiveservice,
    cognitivesearch,
    groundingwithbingsearch,
    groundingwithcustomsearch,
    modelgateway,
    openai,
    pinecone,
    serp,
    serverless,
  ];
}

/// Factory wrapper for `azurerm_cognitive_account_connection_api_key`.
final class AzurermCognitiveAccountConnectionApiKey extends Resource {
  static const String tfType = 'azurerm_cognitive_account_connection_api_key';

  AzurermCognitiveAccountConnectionApiKey(
    super.localName, {
    required Sensitive<String> apiKey,
    required CognitiveAccountConnectionApiKeyCategory category,
    required TfArg<String> cognitiveAccountId,
    TfArg<Map<String, String>>? metadata,
    required TfArg<String> name,
    TfArg<String>? target,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'api_key': apiKey,
           'category': category,
           'cognitive_account_id': cognitiveAccountId,
           'metadata': ?metadata,
           'name': name,
           'target': ?target,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _azurermCognitiveAccountConnectionApiKeySensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermCognitiveAccountConnectionApiKey>`.
  RefTo<AzurermCognitiveAccountConnectionApiKey> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `api_key` attribute.
  TfRef<String> get apiKey => TfRef.attribute<String>(this, 'api_key');

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
