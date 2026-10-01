// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_sql_user`.
const Set<String> _googleSqlUserSensitive = <String>{'password'};

/// `deletion_policy` — Postgres users with granted SQL roles cannot be
/// deleted via the API; `ABANDON` drops them from Terraform state only.
enum SqlUserDeletionPolicy implements TerraformEnum {
  abandon('ABANDON');

  const SqlUserDeletionPolicy(this.terraformValue);
  @override
  final String terraformValue;
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
enum SqlUserType implements TerraformEnum {
  builtIn('BUILT_IN'),
  cloudIamUser('CLOUD_IAM_USER'),
  cloudIamServiceAccount('CLOUD_IAM_SERVICE_ACCOUNT'),
  cloudIamGroup('CLOUD_IAM_GROUP');

  const SqlUserType(this.terraformValue);
  @override
  final String terraformValue;
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
///   `TfArg.ref(sqlInstance.nameRef)`. Immutable.
/// - `name`: database username. Immutable.
///
/// Optional knobs:
/// - [type]: authentication mechanism. Defaults to the database's built-in
///   user when omitted.
/// - [password] / [passwordWo]: only for [SqlUserType.builtIn] users on
///   MySQL / SQL Server, and required for PostgreSQL built-ins. Cloud IAM
///   users authenticate via IAM tokens — leave both `null`.
///   * `password` is sensitive in the schema and round-trips through
///     state. Synth rejects a literal value: pass a sensitive variable,
///     `TfArg.variable('db_password')`, so the secret arrives at apply
///     time and never enters `main.tf.json`.
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
/// addVariable(
///   'db_password',
///   const TfVariable(type: 'string', sensitive: true),
/// );
/// final appUser = GoogleSqlUser(
///   localName: 'app',
///   instance: TfArg.ref(primary.nameRef),
///   name: TfArg.literal('app'),
///   type: TfArg.literal(SqlUserType.builtIn),
///   password: TfArg.variable('db_password'),
/// );
/// ```
///
/// Example (Cloud IAM service-account user, no password):
/// ```dart
/// final ciUser = GoogleSqlUser(
///   localName: 'ci',
///   instance: TfArg.ref(primary.nameRef),
///   name: TfArg.literal('ci-runner@my-project.iam.gserviceaccount.com'),
///   type: TfArg.literal(SqlUserType.cloudIamServiceAccount),
/// );
/// ```
final class GoogleSqlUser extends Resource {
  static const String tfType = 'google_sql_user';

  GoogleSqlUser({
    required super.localName,
    required TfArg<String> name,
    required TfArg<String> instance,
    TfArg<SqlUserType>? type,
    TfArg<String>? password,
    TfArg<String>? passwordWo,
    TfArg<num>? passwordWoVersion,
    TfArg<String>? host,
    TfArg<List<String>>? databaseRoles,
    SqlUserPasswordPolicy? passwordPolicy,
    TfArg<SqlUserDeletionPolicy>? deletionPolicy,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           'instance': instance,
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
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

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
  TfRef<List<String>> get databaseRolesRef =>
      TfRef.attribute<List<String>>(this, 'database_roles');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicyRef =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `host` attribute.
  TfRef<String> get hostRef => TfRef.attribute<String>(this, 'host');

  /// Reference to `instance` attribute.
  TfRef<String> get instanceRef => TfRef.attribute<String>(this, 'instance');

  /// Reference to `password` attribute.
  TfRef<String> get passwordRef => TfRef.attribute<String>(this, 'password');

  /// Reference to `password_wo_version` attribute.
  TfRef<num> get passwordWoVersionRef =>
      TfRef.attribute<num>(this, 'password_wo_version');

  /// Reference to `project` attribute.
  TfRef<String> get projectRef => TfRef.attribute<String>(this, 'project');

  /// Reference to `type` attribute.
  TfRef<String> get typeRef => TfRef.attribute<String>(this, 'type');
}
