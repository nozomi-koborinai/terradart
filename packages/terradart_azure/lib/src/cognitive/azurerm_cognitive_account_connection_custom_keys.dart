// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `azurerm_cognitive_account_connection_custom_keys`.
const Set<String> _azurermCognitiveAccountConnectionCustomKeysSensitive =
    <String>{'custom_keys'};

/// Cognitive Account Connection Custom Keys enum for `category`.
extension type const CognitiveAccountConnectionCustomKeysCategory._(
  TfArg<String> _
) implements TfArg<String> {
  CognitiveAccountConnectionCustomKeysCategory.variable(String name)
    : this._(TfArg.variable(name));
  CognitiveAccountConnectionCustomKeysCategory.expression(String template)
    : this._(TfArg.expression(template));
  const CognitiveAccountConnectionCustomKeysCategory.arg(TfArg<String> arg)
    : this._(arg);

  static const customkeys = CognitiveAccountConnectionCustomKeysCategory._(
    TfArgLiteral('CustomKeys'),
  );
  static const remotea2a = CognitiveAccountConnectionCustomKeysCategory._(
    TfArgLiteral('RemoteA2A'),
  );
  static const remotetool = CognitiveAccountConnectionCustomKeysCategory._(
    TfArgLiteral('RemoteTool'),
  );

  static const List<CognitiveAccountConnectionCustomKeysCategory> values = [
    customkeys,
    remotea2a,
    remotetool,
  ];
}

/// Factory wrapper for `azurerm_cognitive_account_connection_custom_keys`.
final class AzurermCognitiveAccountConnectionCustomKeys extends Resource {
  static const String tfType =
      'azurerm_cognitive_account_connection_custom_keys';

  AzurermCognitiveAccountConnectionCustomKeys(
    super.localName, {
    required CognitiveAccountConnectionCustomKeysCategory category,
    required TfArg<String> cognitiveAccountId,
    required Sensitive<Map<String, String>> customKeys,
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
           'custom_keys': customKeys,
           'metadata': ?metadata,
           'name': name,
           'target': target,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _azurermCognitiveAccountConnectionCustomKeysSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermCognitiveAccountConnectionCustomKeys>`.
  RefTo<AzurermCognitiveAccountConnectionCustomKeys> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `category` attribute.
  TfRef<String> get category => TfRef.attribute<String>(this, 'category');

  /// Reference to `cognitive_account_id` attribute.
  TfRef<String> get cognitiveAccountId =>
      TfRef.attribute<String>(this, 'cognitive_account_id');

  /// Reference to `custom_keys` attribute.
  TfRef<Map<String, String>> get customKeys =>
      TfRef.attribute<Map<String, String>>(this, 'custom_keys');

  /// Reference to `metadata` attribute.
  TfRef<Map<String, String>> get metadata =>
      TfRef.attribute<Map<String, String>>(this, 'metadata');

  /// Reference to `target` attribute.
  TfRef<String> get target => TfRef.attribute<String>(this, 'target');
}
