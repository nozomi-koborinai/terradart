// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `azurerm_automation_source_control`.
const Set<String> _azurermAutomationSourceControlSensitive = <String>{};

/// Automation Source Control enum for `source_control_type`.
extension type const AutomationSourceControlType._(TfArg<String> _)
    implements TfArg<String> {
  AutomationSourceControlType.variable(String name)
    : this._(TfArg.variable(name));
  AutomationSourceControlType.expression(String template)
    : this._(TfArg.expression(template));
  const AutomationSourceControlType.arg(TfArg<String> arg) : this._(arg);

  static const github = AutomationSourceControlType._(TfArgLiteral('GitHub'));
  static const vsogit = AutomationSourceControlType._(TfArgLiteral('VsoGit'));
  static const vsotfvc = AutomationSourceControlType._(TfArgLiteral('VsoTfvc'));

  static const List<AutomationSourceControlType> values = [
    github,
    vsogit,
    vsotfvc,
  ];
}

/// Typed helper for the `security` block of
/// `azurerm_automation_source_control` (derived from provider schema).
@immutable
final class AutomationSourceControlSecurity {
  const AutomationSourceControlSecurity({
    this.refreshToken,
    required this.token,
    required this.tokenType,
  });

  final TfArg<String>? refreshToken;

  final TfArg<String> token;

  final AutomationSourceControlTokenType tokenType;

  @internal
  Map<String, Object?> encode() => {
    'refresh_token': ?refreshToken?.toTfJson(),
    'token': token.toTfJson(),
    'token_type': tokenType.toTfJson(),
  };
}

/// `token_type` — derived from the provider schema description.
extension type const AutomationSourceControlTokenType._(TfArg<String> _)
    implements TfArg<String> {
  AutomationSourceControlTokenType.variable(String name)
    : this._(TfArg.variable(name));
  AutomationSourceControlTokenType.expression(String template)
    : this._(TfArg.expression(template));
  const AutomationSourceControlTokenType.arg(TfArg<String> arg) : this._(arg);

  static const oauth = AutomationSourceControlTokenType._(
    TfArgLiteral('Oauth'),
  );
  static const personalaccesstoken = AutomationSourceControlTokenType._(
    TfArgLiteral('PersonalAccessToken'),
  );

  static const List<AutomationSourceControlTokenType> values = [
    oauth,
    personalaccesstoken,
  ];
}

/// Factory wrapper for `azurerm_automation_source_control`.
final class AzurermAutomationSourceControl extends Resource {
  static const String tfType = 'azurerm_automation_source_control';

  AzurermAutomationSourceControl(
    super.localName, {
    TfArg<bool>? automaticSync,
    required TfArg<String> automationAccountId,
    TfArg<String>? branch,
    TfArg<String>? description,
    required TfArg<String> folderPath,
    required TfArg<String> name,
    TfArg<bool>? publishRunbookEnabled,
    required TfArg<String> repositoryUrl,
    required AutomationSourceControlType sourceControlType,
    required AutomationSourceControlSecurity security,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'automatic_sync': ?automaticSync,
           'automation_account_id': automationAccountId,
           'branch': ?branch,
           'description': ?description,
           'folder_path': folderPath,
           'name': name,
           'publish_runbook_enabled': ?publishRunbookEnabled,
           'repository_url': repositoryUrl,
           'source_control_type': sourceControlType,
           'security': TfArg.literal(security.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _azurermAutomationSourceControlSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermAutomationSourceControl>`.
  RefTo<AzurermAutomationSourceControl> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `automatic_sync` attribute.
  TfRef<bool> get automaticSync =>
      TfRef.attribute<bool>(this, 'automatic_sync');

  /// Reference to `automation_account_id` attribute.
  TfRef<String> get automationAccountId =>
      TfRef.attribute<String>(this, 'automation_account_id');

  /// Reference to `branch` attribute.
  TfRef<String> get branch => TfRef.attribute<String>(this, 'branch');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `folder_path` attribute.
  TfRef<String> get folderPath => TfRef.attribute<String>(this, 'folder_path');

  /// Reference to `publish_runbook_enabled` attribute.
  TfRef<bool> get publishRunbookEnabled =>
      TfRef.attribute<bool>(this, 'publish_runbook_enabled');

  /// Reference to `repository_url` attribute.
  TfRef<String> get repositoryUrl =>
      TfRef.attribute<String>(this, 'repository_url');

  /// Reference to `source_control_type` attribute.
  TfRef<String> get sourceControlType =>
      TfRef.attribute<String>(this, 'source_control_type');
}
