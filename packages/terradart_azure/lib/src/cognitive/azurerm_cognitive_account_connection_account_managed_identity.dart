// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `azurerm_cognitive_account_connection_account_managed_identity`.
const Set<String>
_azurermCognitiveAccountConnectionAccountManagedIdentitySensitive = <String>{};

/// Cognitive Account Connection Account Managed Identity enum for `category`.
extension type const CognitiveAccountConnectionAccountManagedIdentityCategory._(
  TfArg<String> _
) implements TfArg<String> {
  CognitiveAccountConnectionAccountManagedIdentityCategory.variable(String name)
    : this._(TfArg.variable(name));
  CognitiveAccountConnectionAccountManagedIdentityCategory.expression(
    String template,
  ) : this._(TfArg.expression(template));
  const CognitiveAccountConnectionAccountManagedIdentityCategory.arg(
    TfArg<String> arg,
  ) : this._(arg);

  static const aiservices =
      CognitiveAccountConnectionAccountManagedIdentityCategory._(
        TfArgLiteral('AIServices'),
      );
  static const azurekeyvault =
      CognitiveAccountConnectionAccountManagedIdentityCategory._(
        TfArgLiteral('AzureKeyVault'),
      );
  static const azureopenai =
      CognitiveAccountConnectionAccountManagedIdentityCategory._(
        TfArgLiteral('AzureOpenAI'),
      );
  static const azurestorageaccount =
      CognitiveAccountConnectionAccountManagedIdentityCategory._(
        TfArgLiteral('AzureStorageAccount'),
      );

  static const List<CognitiveAccountConnectionAccountManagedIdentityCategory>
  values = [aiservices, azurekeyvault, azureopenai, azurestorageaccount];
}

/// Factory wrapper for `azurerm_cognitive_account_connection_account_managed_identity`.
final class AzurermCognitiveAccountConnectionAccountManagedIdentity
    extends Resource {
  static const String tfType =
      'azurerm_cognitive_account_connection_account_managed_identity';

  AzurermCognitiveAccountConnectionAccountManagedIdentity(
    super.localName, {
    required CognitiveAccountConnectionAccountManagedIdentityCategory category,
    required TfArg<String> cognitiveAccountId,
    required TfArg<Map<String, String>> metadata,
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
           'metadata': metadata,
           'name': name,
           'target': target,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _azurermCognitiveAccountConnectionAccountManagedIdentitySensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermCognitiveAccountConnectionAccountManagedIdentity>`.
  RefTo<AzurermCognitiveAccountConnectionAccountManagedIdentity> get ref =>
      RefTo.of(this);

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
