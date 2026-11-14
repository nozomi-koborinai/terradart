// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_secret_manager_regional_secret_managed_rotation`.
const Set<String> _googleSecretManagerRegionalSecretManagedRotationSensitive =
    <String>{'cloud_sql_single_user_credentials.password'};

/// Typed helper for the `cloud_sql_single_user_credentials` block of
/// `google_secret_manager_regional_secret_managed_rotation` (derived from provider schema).
@immutable
final class SecretManagerRegionalSecretManagedRotationCloudSqlSingleUserCredentials {
  const SecretManagerRegionalSecretManagedRotationCloudSqlSingleUserCredentials({
    required this.instanceId,
    this.password,
    this.passwordWoVersion,
    required this.username,
  });

  final TfArg<String> instanceId;

  final SecretManagerRegionalSecretManagedRotationPassword? password;

  final TfArg<String>? passwordWoVersion;

  final TfArg<String> username;

  @internal
  Map<String, Object?> encode() => {
    'instance_id': instanceId.toTfJson(),
    ...?password?.encode(),
    'password_wo_version': ?passwordWoVersion?.toTfJson(),
    'username': username.toTfJson(),
  };
}

/// At most one of `password`, `password_wo` on the `cloud_sql_single_user_credentials` block of `google_secret_manager_regional_secret_managed_rotation`: the provider rejects
/// more than one, so each variant sets one of them and a
/// null choice sets none.
///
/// Pick one with a dot shorthand: `.password(...)`.
sealed class SecretManagerRegionalSecretManagedRotationPassword {
  const SecretManagerRegionalSecretManagedRotationPassword();

  /// Sets `password`.
  const factory SecretManagerRegionalSecretManagedRotationPassword.password(
    Sensitive<String> password,
  ) = SecretManagerRegionalSecretManagedRotationPasswordChoice;

  /// Sets `password_wo`.
  const factory SecretManagerRegionalSecretManagedRotationPassword.passwordWo(
    TfArg<String> passwordWo,
  ) = SecretManagerRegionalSecretManagedRotationPasswordWo;

  /// The Terraform argument this choice sets.
  @internal
  String get blockKey;

  @internal
  Map<String, Object?> encode();
}

/// The [SecretManagerRegionalSecretManagedRotationPassword.password] choice: sets `password`.
final class SecretManagerRegionalSecretManagedRotationPasswordChoice
    extends SecretManagerRegionalSecretManagedRotationPassword {
  const SecretManagerRegionalSecretManagedRotationPasswordChoice(this.password);

  final Sensitive<String> password;

  @internal
  @override
  String get blockKey => 'password';

  @internal
  @override
  Map<String, Object?> encode() => {'password': password.toTfJson()};
}

/// The [SecretManagerRegionalSecretManagedRotationPassword.passwordWo] choice: sets `password_wo`.
final class SecretManagerRegionalSecretManagedRotationPasswordWo
    extends SecretManagerRegionalSecretManagedRotationPassword {
  const SecretManagerRegionalSecretManagedRotationPasswordWo(this.passwordWo);

  final TfArg<String> passwordWo;

  @internal
  @override
  String get blockKey => 'password_wo';

  @internal
  @override
  Map<String, Object?> encode() => {'password_wo': passwordWo.toTfJson()};
}

/// Factory wrapper for `google_secret_manager_regional_secret_managed_rotation`.
///
/// Enables managed rotation of Cloud SQL single-user credentials for a regional
/// secret of type `CLOUD_SQL_DB_CREDENTIALS`. When managed rotation is enabled,
/// Secret Manager adds a new secret version containing the credentials and
/// updates the password of the Cloud SQL database user.
final class GoogleSecretManagerRegionalSecretManagedRotation extends Resource {
  static const String tfType =
      'google_secret_manager_regional_secret_managed_rotation';

  GoogleSecretManagerRegionalSecretManagedRotation(
    super.localName, {
    required TfArg<String> location,
    TfArg<String>? project,
    required TfArg<String> secretId,
    required SecretManagerRegionalSecretManagedRotationCloudSqlSingleUserCredentials
    cloudSqlSingleUserCredentials,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'location': location,
           'project': ?project,
           'secret_id': secretId,
           'cloud_sql_single_user_credentials': TfArg.literal(
             cloudSqlSingleUserCredentials.encode(),
           ),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleSecretManagerRegionalSecretManagedRotationSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleSecretManagerRegionalSecretManagedRotation>`.
  RefTo<GoogleSecretManagerRegionalSecretManagedRotation> get ref =>
      RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `rotation` attribute.
  TfRef<List<Map<String, Object?>>> get rotation =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'rotation');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');

  /// Reference to `secret_id` attribute.
  TfRef<String> get secretId => TfRef.attribute<String>(this, 'secret_id');
}
