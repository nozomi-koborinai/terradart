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

/// Typed helper for the `authentication_mode` block of
/// `aws_elasticache_user` (derived from provider schema).
@immutable
final class ElasticacheUserAuthenticationMode {
  const ElasticacheUserAuthenticationMode({this.passwords, required this.type});

  final TfArg<List<Object?>>? passwords;

  final TfArg<String> type;

  Map<String, Object?> encode() => {
    if (passwords != null) 'passwords': passwords!.toTfJson(),
    'type': type.toTfJson(),
  };
}

/// Factory wrapper for `aws_elasticache_user`.
final class AwsElasticacheUser extends Resource {
  static const String tfType = 'aws_elasticache_user';

  AwsElasticacheUser({
    required super.localName,
    required TfArg<String> accessString,
    required TfArg<String> engine,
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
           if (noPasswordRequired != null)
             'no_password_required': noPasswordRequired,
           if (passwords != null) 'passwords': passwords,
           if (passwordsWo != null) 'passwords_wo': passwordsWo,
           if (passwordsWoVersion != null)
             'passwords_wo_version': passwordsWoVersion,
           if (region != null) 'region': region,
           if (tags != null) 'tags': tags,
           'user_id': userId,
           'user_name': userName,
           if (authenticationMode != null)
             'authentication_mode': TfArg.literal(authenticationMode.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsElasticacheUserSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');
}
