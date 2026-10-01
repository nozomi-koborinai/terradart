// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../sql/google_sql_database_instance.dart'
    show GoogleSqlDatabaseInstance;

/// Sensitive field paths for `google_sql_user`.
const Set<String> _googleSqlUserSensitive = <String>{'password'};

/// `deletion_policy` — Postgres users with granted SQL roles cannot be
/// deleted via the API; `ABANDON` drops them from Terraform state only.
extension type const SqlUserDeletionPolicy._(TfArg<String> _)
    implements TfArg<String> {
  SqlUserDeletionPolicy.variable(String name) : this._(TfArg.variable(name));
  SqlUserDeletionPolicy.expression(String template)
    : this._(TfArg.expression(template));
  const SqlUserDeletionPolicy.arg(TfArg<String> arg) : this._(arg);

  static const abandon = SqlUserDeletionPolicy._(TfArgLiteral('ABANDON'));

  static const List<SqlUserDeletionPolicy> values = [abandon];
}

/// Authentication mechanism for a `google_sql_user`.
///
/// - [builtIn]: classic username/password user owned by the database
///   engine. Default when `type` is omitted.
/// - [cloudIamUser]: a human Google identity. `name` must be the user's
///   Google email.
/// - [cloudIamServiceAccount]: a GCP service account. `name` must be the
///   service account email (`...iam.gserviceaccount.com`).
/// - [cloudIamGroup]: a Cloud Identity / Workspace group. `name` must be
///   the group's primary email.
///
/// `password` is meaningful only for [builtIn] users; IAM-typed users
/// authenticate by exchanging IAM tokens and must omit it.
extension type const SqlUserType._(TfArg<String> _) implements TfArg<String> {
  SqlUserType.variable(String name) : this._(TfArg.variable(name));
  SqlUserType.expression(String template) : this._(TfArg.expression(template));
  const SqlUserType.arg(TfArg<String> arg) : this._(arg);

  static const builtIn = SqlUserType._(TfArgLiteral('BUILT_IN'));
  static const cloudIamUser = SqlUserType._(TfArgLiteral('CLOUD_IAM_USER'));
  static const cloudIamServiceAccount = SqlUserType._(
    TfArgLiteral('CLOUD_IAM_SERVICE_ACCOUNT'),
  );
  static const cloudIamGroup = SqlUserType._(TfArgLiteral('CLOUD_IAM_GROUP'));

  static const List<SqlUserType> values = [
    builtIn,
    cloudIamUser,
    cloudIamServiceAccount,
    cloudIamGroup,
  ];
}

/// Typed helper for the `password_policy` block of
/// `google_sql_user` (derived from provider schema).
@immutable
final class SqlUserPasswordPolicy {
  const SqlUserPasswordPolicy({
    this.allowedFailedAttempts,
    this.enableFailedAttemptsCheck,
    this.enablePasswordVerification,
    this.passwordExpirationDuration,
  });

  final TfArg<num>? allowedFailedAttempts;

  final TfArg<bool>? enableFailedAttemptsCheck;

  final TfArg<bool>? enablePasswordVerification;

  final TfArg<String>? passwordExpirationDuration;

  @internal
  Map<String, Object?> encode() => {
    'allowed_failed_attempts': ?allowedFailedAttempts?.toTfJson(),
    'enable_failed_attempts_check': ?enableFailedAttemptsCheck?.toTfJson(),
    'enable_password_verification': ?enablePasswordVerification?.toTfJson(),
    'password_expiration_duration': ?passwordExpirationDuration?.toTfJson(),
  };
}

/// Factory wrapper for `google_sql_user`.
///
/// Represents a database user inside a Cloud SQL instance. The exact
/// semantics depend on the parent instance's `database_version` (MySQL,
/// PostgreSQL, SQL Server) and the user's [type] — a built-in DB user,
/// a Cloud IAM user, a Cloud IAM service account, or a Cloud IAM group.
///
/// Required identity:
/// - [localName]: Terraform local name (the address segment after
///   `google_sql_user.`).
/// - `instance`: parent Cloud SQL instance name. Typically
///   `sqlInstance.name`. Immutable.
/// - `name`: database username. Immutable.
///
/// Optional knobs:
/// - [type]: authentication mechanism. Defaults to the database's built-in
///   user when omitted.
/// - [password] / [passwordWo]: only for [SqlUserType.builtIn] users on
///   MySQL / SQL Server, and required for PostgreSQL built-ins. Cloud IAM
///   users authenticate via IAM tokens — leave both `null`.
///   * `password` is sensitive in the schema and round-trips through
///     state. Synth rejects a literal value: pass a sensitive
///     variable (`variable<String>('db_password', sensitive: true)`),
///     so the secret arrives at apply time and never enters
///     `main.tf.json`.
///   * `password_wo` is the write-only variant (TF 1.11+). Write-only
///     fields never enter Terraform state, so the wrapper's
///     `sensitiveFields` set masks only the state-stored `password` —
///     `password_wo` does not need to appear there. Bump
///     `passwordWoVersion` to force a rotation.
/// - [host]: MySQL-only — restricts which client hosts may authenticate
///   with these credentials. Ignored on Postgres / SQL Server.
///
/// Example (built-in PostgreSQL user):
/// ```dart
/// final dbPassword = variable<String>('db_password', sensitive: true);
/// final appUser = GoogleSqlUser(
///   'app',
///   instance: primary.ref,
///   name: TfArg.literal('app'),
///   type: SqlUserType.builtIn,
///   password: dbPassword,
/// );
/// ```
///
/// Example (Cloud IAM service-account user, no password):
/// ```dart
/// final ciUser = GoogleSqlUser(
///   'ci',
///   instance: primary.ref,
///   name: TfArg.literal('ci-runner@my-project.iam.gserviceaccount.com'),
///   type: SqlUserType.cloudIamServiceAccount,
/// );
/// ```
final class GoogleSqlUser extends Resource {
  static const String tfType = 'google_sql_user';

  GoogleSqlUser(
    super.localName, {
    required TfArg<String> name,
    required RefTo<GoogleSqlDatabaseInstance> instance,
    SqlUserType? type,
    Sensitive<String>? password,
    TfArg<String>? passwordWo,
    TfArg<num>? passwordWoVersion,
    TfArg<String>? host,
    TfArg<List<String>>? databaseRoles,
    SqlUserPasswordPolicy? passwordPolicy,
    SqlUserDeletionPolicy? deletionPolicy,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           'instance': instance.encodeAs('name'),
           'type': ?type,
           'password': ?password,
           'password_wo': ?passwordWo,
           'password_wo_version': ?passwordWoVersion,
           'host': ?host,
           'database_roles': ?databaseRoles,
           if (passwordPolicy != null)
             'password_policy': TfArg.literal(passwordPolicy.encode()),
           'deletion_policy': ?deletionPolicy,
           'project': ?project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleSqlUserSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleSqlUser>`.
  RefTo<GoogleSqlUser> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `iam_email` attribute.
  TfRef<String> get iamEmail => TfRef.attribute<String>(this, 'iam_email');

  /// Reference to `sql_server_user_details` attribute.
  TfRef<List<Map<String, Object?>>> get sqlServerUserDetails =>
      TfRef.attribute<List<Map<String, Object?>>>(
        this,
        'sql_server_user_details',
      );

  /// Reference to `database_roles` attribute.
  TfRef<List<String>> get databaseRoles =>
      TfRef.attribute<List<String>>(this, 'database_roles');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicy =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `host` attribute.
  TfRef<String> get host => TfRef.attribute<String>(this, 'host');

  /// Reference to `instance` attribute.
  TfRef<String> get instance => TfRef.attribute<String>(this, 'instance');

  /// Reference to `password` attribute.
  TfRef<String> get password => TfRef.attribute<String>(this, 'password');

  /// Reference to `password_wo_version` attribute.
  TfRef<num> get passwordWoVersion =>
      TfRef.attribute<num>(this, 'password_wo_version');

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');

  /// Reference to `type` attribute.
  TfRef<String> get type => TfRef.attribute<String>(this, 'type');
}
