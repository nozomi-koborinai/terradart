// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../resource/azurerm_resource_group.dart' show AzurermResourceGroup;

/// Sensitive field paths for `azurerm_api_management_user`.
const Set<String> _azurermApiManagementUserSensitive = <String>{'password'};

/// Api Management User enum for `confirmation`.
extension type const ApiManagementUserConfirmation._(TfArg<String> _)
    implements TfArg<String> {
  ApiManagementUserConfirmation.variable(String name)
    : this._(TfArg.variable(name));
  ApiManagementUserConfirmation.expression(String template)
    : this._(TfArg.expression(template));
  const ApiManagementUserConfirmation.arg(TfArg<String> arg) : this._(arg);

  static const invite = ApiManagementUserConfirmation._(TfArgLiteral('invite'));
  static const signup = ApiManagementUserConfirmation._(TfArgLiteral('signup'));

  static const List<ApiManagementUserConfirmation> values = [invite, signup];
}

/// Factory wrapper for `azurerm_api_management_user`.
final class AzurermApiManagementUser extends Resource {
  static const String tfType = 'azurerm_api_management_user';

  AzurermApiManagementUser(
    super.localName, {
    required TfArg<String> apiManagementName,
    ApiManagementUserConfirmation? confirmation,
    required TfArg<String> email,
    required TfArg<String> firstName,
    required TfArg<String> lastName,
    TfArg<String>? note,
    Sensitive<String>? password,
    required RefTo<AzurermResourceGroup> resourceGroupName,
    TfArg<String>? state,
    required TfArg<String> userId,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'api_management_name': apiManagementName,
           'confirmation': ?confirmation,
           'email': email,
           'first_name': firstName,
           'last_name': lastName,
           'note': ?note,
           'password': ?password,
           'resource_group_name': resourceGroupName.encodeAs('name'),
           'state': ?state,
           'user_id': userId,
         },
       );

  @override
  Set<String> get sensitiveFields => _azurermApiManagementUserSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermApiManagementUser>`.
  RefTo<AzurermApiManagementUser> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `api_management_name` attribute.
  TfRef<String> get apiManagementName =>
      TfRef.attribute<String>(this, 'api_management_name');

  /// Reference to `confirmation` attribute.
  TfRef<String> get confirmation =>
      TfRef.attribute<String>(this, 'confirmation');

  /// Reference to `email` attribute.
  TfRef<String> get email => TfRef.attribute<String>(this, 'email');

  /// Reference to `first_name` attribute.
  TfRef<String> get firstName => TfRef.attribute<String>(this, 'first_name');

  /// Reference to `last_name` attribute.
  TfRef<String> get lastName => TfRef.attribute<String>(this, 'last_name');

  /// Reference to `note` attribute.
  TfRef<String> get note => TfRef.attribute<String>(this, 'note');

  /// Reference to `password` attribute.
  TfRef<String> get password => TfRef.attribute<String>(this, 'password');

  /// Reference to `resource_group_name` attribute.
  TfRef<String> get resourceGroupName =>
      TfRef.attribute<String>(this, 'resource_group_name');

  /// Reference to `state` attribute.
  TfRef<String> get state => TfRef.attribute<String>(this, 'state');

  /// Reference to `user_id` attribute.
  TfRef<String> get userId => TfRef.attribute<String>(this, 'user_id');
}
