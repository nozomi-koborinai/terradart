// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_alloydb_user`.
const Set<String> _googleAlloydbUserSensitive = <String>{'password'};

/// `user_type` — built-in vs IAM-authenticated user.
enum AlloydbUserType implements TerraformEnum {
  alloydbBuiltIn('ALLOYDB_BUILT_IN'),
  alloydbIamUser('ALLOYDB_IAM_USER');

  const AlloydbUserType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Factory wrapper for `google_alloydb_user`.
///
/// AlloyDB database user inside a [GoogleAlloydbCluster].
///
/// Required identity:
/// - [localName]: Terraform local name.
/// - [cluster]: parent cluster — `TfArg.ref(cluster.id)`.
/// - [userId]: username.
/// - [userType]: [AlloydbUserType.alloydbBuiltIn] or IAM user.
///
/// Example:
/// ```dart
/// GoogleAlloydbUser(
///   localName: 'app',
///   cluster: TfArg.ref(cluster.id),
///   userId: TfArg.literal('app'),
///   userType: TfArg.literal(AlloydbUserType.alloydbBuiltIn),
///   passwordWo: TfArg.literal(dbPassword),
///   passwordWoVersion: TfArg.literal('1'),
/// );
/// ```
final class GoogleAlloydbUser extends Resource {
  static const String tfType = 'google_alloydb_user';

  GoogleAlloydbUser({
    required super.localName,
    required TfArg<String> cluster,
    required TfArg<String> userId,
    required TfArg<AlloydbUserType> userType,
    TfArg<String>? password,
    TfArg<String>? passwordWo,
    TfArg<String>? passwordWoVersion,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'cluster': cluster,
           'user_id': userId,
           'user_type': userType,
           if (password != null) 'password': password,
           if (passwordWo != null) 'password_wo': passwordWo,
           if (passwordWoVersion != null)
             'password_wo_version': passwordWoVersion,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleAlloydbUserSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}
