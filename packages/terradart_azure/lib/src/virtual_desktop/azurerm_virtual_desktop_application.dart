// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `azurerm_virtual_desktop_application`.
const Set<String> _azurermVirtualDesktopApplicationSensitive = <String>{};

/// Virtual Desktop Application Command Line Argument enum for `command_line_argument_policy`.
extension type const VirtualDesktopApplicationCommandLineArgumentPolicy._(
  TfArg<String> _
) implements TfArg<String> {
  VirtualDesktopApplicationCommandLineArgumentPolicy.variable(String name)
    : this._(TfArg.variable(name));
  VirtualDesktopApplicationCommandLineArgumentPolicy.expression(String template)
    : this._(TfArg.expression(template));
  const VirtualDesktopApplicationCommandLineArgumentPolicy.arg(
    TfArg<String> arg,
  ) : this._(arg);

  static const allow = VirtualDesktopApplicationCommandLineArgumentPolicy._(
    TfArgLiteral('Allow'),
  );
  static const donotallow =
      VirtualDesktopApplicationCommandLineArgumentPolicy._(
        TfArgLiteral('DoNotAllow'),
      );
  static const require = VirtualDesktopApplicationCommandLineArgumentPolicy._(
    TfArgLiteral('Require'),
  );

  static const List<VirtualDesktopApplicationCommandLineArgumentPolicy> values =
      [allow, donotallow, require];
}

/// Factory wrapper for `azurerm_virtual_desktop_application`.
final class AzurermVirtualDesktopApplication extends Resource {
  static const String tfType = 'azurerm_virtual_desktop_application';

  AzurermVirtualDesktopApplication(
    super.localName, {
    required TfArg<String> applicationGroupId,
    required VirtualDesktopApplicationCommandLineArgumentPolicy
    commandLineArgumentPolicy,
    TfArg<String>? commandLineArguments,
    TfArg<String>? description,
    TfArg<String>? friendlyName,
    TfArg<num>? iconIndex,
    TfArg<String>? iconPath,
    required TfArg<String> name,
    required TfArg<String> path,
    TfArg<bool>? showInPortal,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'application_group_id': applicationGroupId,
           'command_line_argument_policy': commandLineArgumentPolicy,
           'command_line_arguments': ?commandLineArguments,
           'description': ?description,
           'friendly_name': ?friendlyName,
           'icon_index': ?iconIndex,
           'icon_path': ?iconPath,
           'name': name,
           'path': path,
           'show_in_portal': ?showInPortal,
         },
       );

  @override
  Set<String> get sensitiveFields => _azurermVirtualDesktopApplicationSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermVirtualDesktopApplication>`.
  RefTo<AzurermVirtualDesktopApplication> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `application_group_id` attribute.
  TfRef<String> get applicationGroupId =>
      TfRef.attribute<String>(this, 'application_group_id');

  /// Reference to `command_line_argument_policy` attribute.
  TfRef<String> get commandLineArgumentPolicy =>
      TfRef.attribute<String>(this, 'command_line_argument_policy');

  /// Reference to `command_line_arguments` attribute.
  TfRef<String> get commandLineArguments =>
      TfRef.attribute<String>(this, 'command_line_arguments');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `friendly_name` attribute.
  TfRef<String> get friendlyName =>
      TfRef.attribute<String>(this, 'friendly_name');

  /// Reference to `icon_index` attribute.
  TfRef<num> get iconIndex => TfRef.attribute<num>(this, 'icon_index');

  /// Reference to `icon_path` attribute.
  TfRef<String> get iconPath => TfRef.attribute<String>(this, 'icon_path');

  /// Reference to `path` attribute.
  TfRef<String> get path => TfRef.attribute<String>(this, 'path');

  /// Reference to `show_in_portal` attribute.
  TfRef<bool> get showInPortal => TfRef.attribute<bool>(this, 'show_in_portal');
}
