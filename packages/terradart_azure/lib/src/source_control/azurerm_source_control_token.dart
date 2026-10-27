// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `azurerm_source_control_token`.
const Set<String> _azurermSourceControlTokenSensitive = <String>{
  'token',
  'token_secret',
};

/// Source Control Token enum for `type`.
extension type const SourceControlTokenType._(TfArg<String> _)
    implements TfArg<String> {
  SourceControlTokenType.variable(String name) : this._(TfArg.variable(name));
  SourceControlTokenType.expression(String template)
    : this._(TfArg.expression(template));
  const SourceControlTokenType.arg(TfArg<String> arg) : this._(arg);

  static const bitbucket = SourceControlTokenType._(TfArgLiteral('Bitbucket'));
  static const dropbox = SourceControlTokenType._(TfArgLiteral('Dropbox'));
  static const github = SourceControlTokenType._(TfArgLiteral('GitHub'));
  static const onedrive = SourceControlTokenType._(TfArgLiteral('OneDrive'));

  static const List<SourceControlTokenType> values = [
    bitbucket,
    dropbox,
    github,
    onedrive,
  ];
}

/// Factory wrapper for `azurerm_source_control_token`.
final class AzurermSourceControlToken extends Resource {
  static const String tfType = 'azurerm_source_control_token';

  AzurermSourceControlToken(
    super.localName, {
    required Sensitive<String> token,
    Sensitive<String>? tokenSecret,
    required SourceControlTokenType type,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {'token': token, 'token_secret': ?tokenSecret, 'type': type},
       );

  @override
  Set<String> get sensitiveFields => _azurermSourceControlTokenSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermSourceControlToken>`.
  RefTo<AzurermSourceControlToken> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `token` attribute.
  TfRef<String> get token => TfRef.attribute<String>(this, 'token');

  /// Reference to `token_secret` attribute.
  TfRef<String> get tokenSecret =>
      TfRef.attribute<String>(this, 'token_secret');

  /// Reference to `type` attribute.
  TfRef<String> get type => TfRef.attribute<String>(this, 'type');
}
