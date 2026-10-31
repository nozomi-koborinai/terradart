// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `azurerm_cognitive_account_connection_account_key`.
const Set<String> _azurermCognitiveAccountConnectionAccountKeySensitive =
    <String>{'account_key'};

/// Cognitive Account Connection Account Key enum for `category`.
extension type const CognitiveAccountConnectionAccountKeyCategory._(
  TfArg<String> _
) implements TfArg<String> {
  CognitiveAccountConnectionAccountKeyCategory.variable(String name)
    : this._(TfArg.variable(name));
  CognitiveAccountConnectionAccountKeyCategory.expression(String template)
    : this._(TfArg.expression(template));
  const CognitiveAccountConnectionAccountKeyCategory.arg(TfArg<String> arg)
    : this._(arg);

  static const azurestorageaccount =
      CognitiveAccountConnectionAccountKeyCategory._(
        TfArgLiteral('AzureStorageAccount'),
      );

  static const List<CognitiveAccountConnectionAccountKeyCategory> values = [
    azurestorageaccount,
  ];
}

/// Factory wrapper for `azurerm_cognitive_account_connection_account_key`.
final class AzurermCognitiveAccountConnectionAccountKey extends Resource {
  static const String tfType =
      'azurerm_cognitive_account_connection_account_key';

  AzurermCognitiveAccountConnectionAccountKey(
    super.localName, {
    required Sensitive<String> accountKey,
    required CognitiveAccountConnectionAccountKeyCategory category,
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
           'account_key': accountKey,
           'category': category,
           'cognitive_account_id': cognitiveAccountId,
           'metadata': metadata,
           'name': name,
           'target': target,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _azurermCognitiveAccountConnectionAccountKeySensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermCognitiveAccountConnectionAccountKey>`.
  RefTo<AzurermCognitiveAccountConnectionAccountKey> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `account_key` attribute.
  TfRef<String> get accountKey => TfRef.attribute<String>(this, 'account_key');

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
