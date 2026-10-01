// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_elasticache_user`.
const Set<String> _awsElasticacheUserSensitive = <String>{
  'authentication_mode.passwords',
  'passwords',
  'passwords_wo',
};

/// Elasticache User enum for `engine`.
enum ElasticacheUserEngine implements TerraformEnum {
  redis('redis'),
  valkey('valkey');

  const ElasticacheUserEngine(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `authentication_mode` block of
/// `aws_elasticache_user` (derived from provider schema).
@immutable
final class ElasticacheUserAuthenticationMode {
  const ElasticacheUserAuthenticationMode({this.passwords, required this.type});

  final TfArg<List<String>>? passwords;

  final TfArg<ElasticacheUserType> type;

  Map<String, Object?> encode() => {
    'passwords': ?passwords?.toTfJson(),
    'type': type.toTfJson(),
  };
}

/// `type` — derived from the provider schema description.
enum ElasticacheUserType implements TerraformEnum {
  password('password'),
  noPasswordRequired('no-password-required'),
  iam('iam');

  const ElasticacheUserType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Factory wrapper for `aws_elasticache_user`.
final class AwsElasticacheUser extends Resource {
  static const String tfType = 'aws_elasticache_user';

  AwsElasticacheUser({
    required super.localName,
    required TfArg<String> accessString,
    required TfArg<ElasticacheUserEngine> engine,
    TfArg<bool>? noPasswordRequired,
    TfArg<List<String>>? passwords,
    TfArg<String>? passwordsWo,
    TfArg<num>? passwordsWoVersion,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    required TfArg<String> userId,
    required TfArg<String> userName,
    ElasticacheUserAuthenticationMode? authenticationMode,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'access_string': accessString,
           'engine': engine,
           'no_password_required': ?noPasswordRequired,
           'passwords': ?passwords,
           'passwords_wo': ?passwordsWo,
           'passwords_wo_version': ?passwordsWoVersion,
           'region': ?region,
           'tags': ?tags,
           'user_id': userId,
           'user_name': userName,
           if (authenticationMode != null)
             'authentication_mode': TfArg.literal(authenticationMode.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsElasticacheUserSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsElasticacheUser>`.
  RefTo<AwsElasticacheUser> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `access_string` attribute.
  TfRef<String> get accessStringRef =>
      TfRef.attribute<String>(this, 'access_string');

  /// Reference to `engine` attribute.
  TfRef<String> get engineRef => TfRef.attribute<String>(this, 'engine');

  /// Reference to `no_password_required` attribute.
  TfRef<bool> get noPasswordRequiredRef =>
      TfRef.attribute<bool>(this, 'no_password_required');

  /// Reference to `passwords` attribute.
  TfRef<List<String>> get passwordsRef =>
      TfRef.attribute<List<String>>(this, 'passwords');

  /// Reference to `passwords_wo_version` attribute.
  TfRef<num> get passwordsWoVersionRef =>
      TfRef.attribute<num>(this, 'passwords_wo_version');

  /// Reference to `region` attribute.
  TfRef<String> get regionRef => TfRef.attribute<String>(this, 'region');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tagsRef =>
      TfRef.attribute<Map<String, String>>(this, 'tags');

  /// Reference to `user_id` attribute.
  TfRef<String> get userIdRef => TfRef.attribute<String>(this, 'user_id');

  /// Reference to `user_name` attribute.
  TfRef<String> get userNameRef => TfRef.attribute<String>(this, 'user_name');
}
