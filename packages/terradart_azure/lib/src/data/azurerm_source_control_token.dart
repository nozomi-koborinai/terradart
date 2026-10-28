// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../source_control/azurerm_source_control_token.dart';

/// Sensitive field paths for `azurerm_source_control_token`.
const Set<String> _azurermSourceControlTokenSensitive = <String>{
  'token',
  'token_secret',
};

/// Data Source Control Token enum for `type`.
extension type const DataSourceControlTokenType._(TfArg<String> _)
    implements TfArg<String> {
  DataSourceControlTokenType.variable(String name)
    : this._(TfArg.variable(name));
  DataSourceControlTokenType.expression(String template)
    : this._(TfArg.expression(template));
  const DataSourceControlTokenType.arg(TfArg<String> arg) : this._(arg);

  static const bitbucket = DataSourceControlTokenType._(
    TfArgLiteral('Bitbucket'),
  );
  static const dropbox = DataSourceControlTokenType._(TfArgLiteral('Dropbox'));
  static const github = DataSourceControlTokenType._(TfArgLiteral('GitHub'));
  static const onedrive = DataSourceControlTokenType._(
    TfArgLiteral('OneDrive'),
  );

  static const List<DataSourceControlTokenType> values = [
    bitbucket,
    dropbox,
    github,
    onedrive,
  ];
}

/// Factory wrapper for `azurerm_source_control_token`.
final class DataAzurermSourceControlToken extends Data {
  static const String tfType = 'azurerm_source_control_token';

  DataAzurermSourceControlToken(
    super.localName, {
    required DataSourceControlTokenType type,
    super.provider,
    super.timeouts,
  }) : super(terraformType: tfType, argMap: {'type': type});

  @override
  Set<String> get sensitiveFields => _azurermSourceControlTokenSensitive;

  /// A reference to the `azurerm_source_control_token` this data source reads, for
  /// arguments typed `RefTo<AzurermSourceControlToken>`.
  RefTo<AzurermSourceControlToken> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

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
