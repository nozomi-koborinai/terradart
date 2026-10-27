// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `azurerm_mssql_job_credential`.
const Set<String> _azurermMssqlJobCredentialSensitive = <String>{'password'};

/// Exactly one of `password`, `password_wo` on `azurerm_mssql_job_credential`: the provider rejects
/// none and more than one, so each variant sets one of them.
///
/// Pick one with a dot shorthand: `.password(...)`.
sealed class MssqlJobCredentialPassword {
  const MssqlJobCredentialPassword();

  /// Sets `password`.
  const factory MssqlJobCredentialPassword.password(
    Sensitive<String> password,
  ) = MssqlJobCredentialPasswordChoice;

  /// Sets `password_wo`.
  const factory MssqlJobCredentialPassword.passwordWo(
    TfArg<String> passwordWo,
  ) = MssqlJobCredentialPasswordWo;

  /// The Terraform argument this choice sets.
  @internal
  String get blockKey;

  @internal
  Map<String, Object?> encode();

  /// The resource arguments behind [encode], as the caller's
  /// [TfArg]s.
  @internal
  Map<String, TfArg<Object?>> get argMap;
}

/// The [MssqlJobCredentialPassword.password] choice: sets `password`.
final class MssqlJobCredentialPasswordChoice
    extends MssqlJobCredentialPassword {
  const MssqlJobCredentialPasswordChoice(this.password);

  final Sensitive<String> password;

  @internal
  @override
  String get blockKey => 'password';

  @internal
  @override
  Map<String, Object?> encode() => {'password': password.toTfJson()};

  @internal
  @override
  Map<String, TfArg<Object?>> get argMap => {'password': password};
}

/// The [MssqlJobCredentialPassword.passwordWo] choice: sets `password_wo`.
final class MssqlJobCredentialPasswordWo extends MssqlJobCredentialPassword {
  const MssqlJobCredentialPasswordWo(this.passwordWo);

  final TfArg<String> passwordWo;

  @internal
  @override
  String get blockKey => 'password_wo';

  @internal
  @override
  Map<String, Object?> encode() => {'password_wo': passwordWo.toTfJson()};

  @internal
  @override
  Map<String, TfArg<Object?>> get argMap => {'password_wo': passwordWo};
}

/// Factory wrapper for `azurerm_mssql_job_credential`.
final class AzurermMssqlJobCredential extends Resource {
  static const String tfType = 'azurerm_mssql_job_credential';

  AzurermMssqlJobCredential(
    super.localName, {
    required TfArg<String> jobAgentId,
    required TfArg<String> name,
    required MssqlJobCredentialPassword password,
    TfArg<num>? passwordWoVersion,
    required TfArg<String> username,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'job_agent_id': jobAgentId,
           'name': name,
           ...password.argMap,
           'password_wo_version': ?passwordWoVersion,
           'username': username,
         },
       );

  @override
  Set<String> get sensitiveFields => _azurermMssqlJobCredentialSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermMssqlJobCredential>`.
  RefTo<AzurermMssqlJobCredential> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `job_agent_id` attribute.
  TfRef<String> get jobAgentId => TfRef.attribute<String>(this, 'job_agent_id');

  /// Reference to `password` attribute.
  TfRef<String> get password => TfRef.attribute<String>(this, 'password');

  /// Reference to `password_wo_version` attribute.
  TfRef<num> get passwordWoVersion =>
      TfRef.attribute<num>(this, 'password_wo_version');

  /// Reference to `username` attribute.
  TfRef<String> get username => TfRef.attribute<String>(this, 'username');
}
