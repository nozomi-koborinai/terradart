// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `azurerm_function_app_function`.
const Set<String> _azurermFunctionAppFunctionSensitive = <String>{};

/// Function App Function enum for `language`.
extension type const FunctionAppFunctionLanguage._(TfArg<String> _)
    implements TfArg<String> {
  FunctionAppFunctionLanguage.variable(String name)
    : this._(TfArg.variable(name));
  FunctionAppFunctionLanguage.expression(String template)
    : this._(TfArg.expression(template));
  const FunctionAppFunctionLanguage.arg(TfArg<String> arg) : this._(arg);

  static const csharp = FunctionAppFunctionLanguage._(TfArgLiteral('CSharp'));
  static const custom = FunctionAppFunctionLanguage._(TfArgLiteral('Custom'));
  static const java = FunctionAppFunctionLanguage._(TfArgLiteral('Java'));
  static const javascript = FunctionAppFunctionLanguage._(
    TfArgLiteral('Javascript'),
  );
  static const python = FunctionAppFunctionLanguage._(TfArgLiteral('Python'));
  static const powershell = FunctionAppFunctionLanguage._(
    TfArgLiteral('PowerShell'),
  );
  static const typescript = FunctionAppFunctionLanguage._(
    TfArgLiteral('TypeScript'),
  );

  static const List<FunctionAppFunctionLanguage> values = [
    csharp,
    custom,
    java,
    javascript,
    python,
    powershell,
    typescript,
  ];
}

/// Typed helper for the `file` block of
/// `azurerm_function_app_function` (derived from provider schema).
@immutable
final class FunctionAppFunctionFile {
  const FunctionAppFunctionFile({required this.content, required this.name});

  final TfArg<String> content;

  final TfArg<String> name;

  @internal
  Map<String, Object?> encode() => {
    'content': content.toTfJson(),
    'name': name.toTfJson(),
  };
}

/// Factory wrapper for `azurerm_function_app_function`.
final class AzurermFunctionAppFunction extends Resource {
  static const String tfType = 'azurerm_function_app_function';

  AzurermFunctionAppFunction(
    super.localName, {
    required TfArg<String> configJson,
    TfArg<bool>? enabled,
    required TfArg<String> functionAppId,
    FunctionAppFunctionLanguage? language,
    required TfArg<String> name,
    TfArg<String>? testData,
    List<FunctionAppFunctionFile>? file,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'config_json': configJson,
           'enabled': ?enabled,
           'function_app_id': functionAppId,
           'language': ?language,
           'name': name,
           'test_data': ?testData,
           if (file != null)
             'file': TfArg.literal([for (final e in file) e.encode()]),
         },
       );

  @override
  Set<String> get sensitiveFields => _azurermFunctionAppFunctionSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermFunctionAppFunction>`.
  RefTo<AzurermFunctionAppFunction> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `config_url` attribute.
  TfRef<String> get configUrl => TfRef.attribute<String>(this, 'config_url');

  /// Reference to `invocation_url` attribute.
  TfRef<String> get invocationUrl =>
      TfRef.attribute<String>(this, 'invocation_url');

  /// Reference to `script_root_path_url` attribute.
  TfRef<String> get scriptRootPathUrl =>
      TfRef.attribute<String>(this, 'script_root_path_url');

  /// Reference to `script_url` attribute.
  TfRef<String> get scriptUrl => TfRef.attribute<String>(this, 'script_url');

  /// Reference to `secrets_file_url` attribute.
  TfRef<String> get secretsFileUrl =>
      TfRef.attribute<String>(this, 'secrets_file_url');

  /// Reference to `test_data_url` attribute.
  TfRef<String> get testDataUrl =>
      TfRef.attribute<String>(this, 'test_data_url');

  /// Reference to `url` attribute.
  TfRef<String> get url => TfRef.attribute<String>(this, 'url');

  /// Reference to `config_json` attribute.
  TfRef<String> get configJson => TfRef.attribute<String>(this, 'config_json');

  /// Reference to `enabled` attribute.
  TfRef<bool> get enabled => TfRef.attribute<bool>(this, 'enabled');

  /// Reference to `function_app_id` attribute.
  TfRef<String> get functionAppId =>
      TfRef.attribute<String>(this, 'function_app_id');

  /// Reference to `language` attribute.
  TfRef<String> get language => TfRef.attribute<String>(this, 'language');

  /// Reference to `test_data` attribute.
  TfRef<String> get testData => TfRef.attribute<String>(this, 'test_data');
}
