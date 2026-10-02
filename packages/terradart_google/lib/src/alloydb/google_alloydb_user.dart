// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../alloydb/google_alloydb_cluster.dart' show GoogleAlloydbCluster;

/// Sensitive field paths for `google_alloydb_user`.
const Set<String> _googleAlloydbUserSensitive = <String>{'password'};

/// `user_type` — built-in vs IAM-authenticated user.
extension type const AlloydbUserType._(TfArg<String> _)
    implements TfArg<String> {
  AlloydbUserType.variable(String name) : this._(TfArg.variable(name));
  AlloydbUserType.expression(String template)
    : this._(TfArg.expression(template));
  const AlloydbUserType.arg(TfArg<String> arg) : this._(arg);

  static const alloydbBuiltIn = AlloydbUserType._(
    TfArgLiteral('ALLOYDB_BUILT_IN'),
  );
  static const alloydbIamUser = AlloydbUserType._(
    TfArgLiteral('ALLOYDB_IAM_USER'),
  );

  static const List<AlloydbUserType> values = [alloydbBuiltIn, alloydbIamUser];
}

/// At most one of `password`, `password_wo` on `google_alloydb_user`: the provider rejects
/// more than one, so each variant sets one of them and a
/// null choice sets none.
///
/// Pick one with a dot shorthand: `.password(...)`.
sealed class AlloydbUserPassword {
  const AlloydbUserPassword();

  /// Sets `password`.
  const factory AlloydbUserPassword.password(Sensitive<String> password) =
      AlloydbUserPasswordChoice;

  /// Sets `password_wo`.
  const factory AlloydbUserPassword.passwordWo(TfArg<String> passwordWo) =
      AlloydbUserPasswordWo;

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

/// The [AlloydbUserPassword.password] choice: sets `password`.
final class AlloydbUserPasswordChoice extends AlloydbUserPassword {
  const AlloydbUserPasswordChoice(this.password);

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

/// The [AlloydbUserPassword.passwordWo] choice: sets `password_wo`.
final class AlloydbUserPasswordWo extends AlloydbUserPassword {
  const AlloydbUserPasswordWo(this.passwordWo);

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

/// Factory wrapper for `google_alloydb_user`.
///
/// A database user in an AlloyDB cluster.
///
/// AlloyDB database user inside a [GoogleAlloydbCluster].
///
/// Required identity:
/// - [localName]: Terraform local name.
/// - [cluster]: parent cluster — `cluster.id`.
/// - [userId]: username.
/// - [userType]: [AlloydbUserType.alloydbBuiltIn] or IAM user.
///
/// Example:
/// ```dart
/// GoogleAlloydbUser(
///   'app',
///   cluster: cluster.ref,
///   userId: TfArg.literal('app'),
///   userType: AlloydbUserType.alloydbBuiltIn,
///   password: .passwordWo(.literal(dbPassword)),
///   passwordWoVersion: TfArg.literal('1'),
/// );
/// ```
final class GoogleAlloydbUser extends Resource {
  static const String tfType = 'google_alloydb_user';

  GoogleAlloydbUser(
    super.localName, {
    required RefTo<GoogleAlloydbCluster> cluster,
    required TfArg<String> userId,
    required AlloydbUserType userType,
    AlloydbUserPassword? password,
    TfArg<String>? passwordWoVersion,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'cluster': cluster.encodeAs('name'),
           'user_id': userId,
           'user_type': userType,
           ...?password?.argMap,
           'password_wo_version': ?passwordWoVersion,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleAlloydbUserSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleAlloydbUser>`.
  RefTo<GoogleAlloydbUser> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `cluster` attribute.
  TfRef<String> get cluster => TfRef.attribute<String>(this, 'cluster');

  /// Reference to `database_roles` attribute.
  TfRef<List<String>> get databaseRoles =>
      TfRef.attribute<List<String>>(this, 'database_roles');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicy =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `password` attribute.
  TfRef<String> get password => TfRef.attribute<String>(this, 'password');

  /// Reference to `password_wo_version` attribute.
  TfRef<String> get passwordWoVersion =>
      TfRef.attribute<String>(this, 'password_wo_version');

  /// Reference to `user_id` attribute.
  TfRef<String> get userId => TfRef.attribute<String>(this, 'user_id');

  /// Reference to `user_type` attribute.
  TfRef<String> get userType => TfRef.attribute<String>(this, 'user_type');
}
