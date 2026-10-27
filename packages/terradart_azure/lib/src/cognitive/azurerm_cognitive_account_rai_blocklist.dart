// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `azurerm_cognitive_account_rai_blocklist`.
const Set<String> _azurermCognitiveAccountRaiBlocklistSensitive = <String>{};

/// Factory wrapper for `azurerm_cognitive_account_rai_blocklist`.
final class AzurermCognitiveAccountRaiBlocklist extends Resource {
  static const String tfType = 'azurerm_cognitive_account_rai_blocklist';

  AzurermCognitiveAccountRaiBlocklist(
    super.localName, {
    required TfArg<String> cognitiveAccountId,
    TfArg<String>? description,
    required TfArg<String> name,
    TfArg<Map<String, String>>? tags,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'cognitive_account_id': cognitiveAccountId,
           'description': ?description,
           'name': name,
           'tags': ?tags,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _azurermCognitiveAccountRaiBlocklistSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermCognitiveAccountRaiBlocklist>`.
  RefTo<AzurermCognitiveAccountRaiBlocklist> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `cognitive_account_id` attribute.
  TfRef<String> get cognitiveAccountId =>
      TfRef.attribute<String>(this, 'cognitive_account_id');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}
