// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `azurerm_cognitive_account_project`.
const Set<String> _azurermCognitiveAccountProjectSensitive = <String>{};

/// Typed helper for the `identity` block of
/// `azurerm_cognitive_account_project` (derived from provider schema).
@immutable
final class CognitiveAccountProjectIdentity {
  const CognitiveAccountProjectIdentity({this.identityIds, required this.type});

  final TfArg<List<String>>? identityIds;

  final TfArg<String> type;

  @internal
  Map<String, Object?> encode() => {
    'identity_ids': ?identityIds?.toTfJson(),
    'type': type.toTfJson(),
  };
}

/// Factory wrapper for `azurerm_cognitive_account_project`.
final class AzurermCognitiveAccountProject extends Resource {
  static const String tfType = 'azurerm_cognitive_account_project';

  AzurermCognitiveAccountProject(
    super.localName, {
    required TfArg<String> cognitiveAccountId,
    TfArg<String>? description,
    TfArg<String>? displayName,
    required TfArg<String> location,
    required TfArg<String> name,
    TfArg<Map<String, String>>? tags,
    required CognitiveAccountProjectIdentity identity,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'cognitive_account_id': cognitiveAccountId,
           'description': ?description,
           'display_name': ?displayName,
           'location': location,
           'name': name,
           'tags': ?tags,
           'identity': TfArg.literal(identity.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _azurermCognitiveAccountProjectSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermCognitiveAccountProject>`.
  RefTo<AzurermCognitiveAccountProject> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `default` attribute.
  TfRef<bool> get defaultAttr => TfRef.attribute<bool>(this, 'default');

  /// Reference to `endpoints` attribute.
  TfRef<Map<String, String>> get endpoints =>
      TfRef.attribute<Map<String, String>>(this, 'endpoints');

  /// Reference to `cognitive_account_id` attribute.
  TfRef<String> get cognitiveAccountId =>
      TfRef.attribute<String>(this, 'cognitive_account_id');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `display_name` attribute.
  TfRef<String> get displayName =>
      TfRef.attribute<String>(this, 'display_name');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}
