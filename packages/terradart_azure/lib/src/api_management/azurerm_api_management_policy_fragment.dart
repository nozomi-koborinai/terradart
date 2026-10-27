// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `azurerm_api_management_policy_fragment`.
const Set<String> _azurermApiManagementPolicyFragmentSensitive = <String>{};

/// Api Management Policy Fragment enum for `format`.
extension type const ApiManagementPolicyFragmentFormat._(TfArg<String> _)
    implements TfArg<String> {
  ApiManagementPolicyFragmentFormat.variable(String name)
    : this._(TfArg.variable(name));
  ApiManagementPolicyFragmentFormat.expression(String template)
    : this._(TfArg.expression(template));
  const ApiManagementPolicyFragmentFormat.arg(TfArg<String> arg) : this._(arg);

  static const rawxml = ApiManagementPolicyFragmentFormat._(
    TfArgLiteral('rawxml'),
  );
  static const xml = ApiManagementPolicyFragmentFormat._(TfArgLiteral('xml'));

  static const List<ApiManagementPolicyFragmentFormat> values = [rawxml, xml];
}

/// Factory wrapper for `azurerm_api_management_policy_fragment`.
final class AzurermApiManagementPolicyFragment extends Resource {
  static const String tfType = 'azurerm_api_management_policy_fragment';

  AzurermApiManagementPolicyFragment(
    super.localName, {
    required TfArg<String> apiManagementId,
    TfArg<String>? description,
    ApiManagementPolicyFragmentFormat? format,
    required TfArg<String> name,
    required TfArg<String> value,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'api_management_id': apiManagementId,
           'description': ?description,
           'format': ?format,
           'name': name,
           'value': value,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _azurermApiManagementPolicyFragmentSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermApiManagementPolicyFragment>`.
  RefTo<AzurermApiManagementPolicyFragment> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `api_management_id` attribute.
  TfRef<String> get apiManagementId =>
      TfRef.attribute<String>(this, 'api_management_id');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `format` attribute.
  TfRef<String> get format => TfRef.attribute<String>(this, 'format');

  /// Reference to `value` attribute.
  TfRef<String> get value => TfRef.attribute<String>(this, 'value');
}
