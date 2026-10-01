// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';
import '../elasticache/aws_elasticache_user.dart';

/// Sensitive field paths for `aws_elasticache_user`.
const Set<String> _awsElasticacheUserSensitive = <String>{'passwords'};

/// Typed helper for the `authentication_mode` block of
/// `aws_elasticache_user` (derived from provider schema).
@immutable
final class DataElasticacheUserAuthenticationMode {
  const DataElasticacheUserAuthenticationMode({this.passwordCount, this.type});

  final TfArg<num>? passwordCount;

  final TfArg<String>? type;

  Map<String, Object?> encode() => {
    'password_count': ?passwordCount?.toTfJson(),
    'type': ?type?.toTfJson(),
  };
}

/// Factory wrapper for `aws_elasticache_user`.
final class DataAwsElasticacheUser extends Data {
  static const String tfType = 'aws_elasticache_user';

  DataAwsElasticacheUser({
    required super.localName,
    TfArg<String>? accessString,
    TfArg<String>? engine,
    TfArg<bool>? noPasswordRequired,
    TfArg<List<String>>? passwords,
    TfArg<String>? region,
    required TfArg<String> userId,
    TfArg<String>? userName,
    List<DataElasticacheUserAuthenticationMode>? authenticationMode,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'access_string': ?accessString,
           'engine': ?engine,
           'no_password_required': ?noPasswordRequired,
           'passwords': ?passwords,
           'region': ?region,
           'user_id': userId,
           'user_name': ?userName,
           if (authenticationMode != null)
             'authentication_mode': TfArg.literal([
               for (final e in authenticationMode) e.encode(),
             ]),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsElasticacheUserSensitive;

  /// A reference to the `aws_elasticache_user` this data source reads, for
  /// arguments typed `RefTo<AwsElasticacheUser>`.
  RefTo<AwsElasticacheUser> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `access_string` attribute.
  TfRef<String> get accessString =>
      TfRef.attribute<String>(this, 'access_string');

  /// Reference to `engine` attribute.
  TfRef<String> get engine => TfRef.attribute<String>(this, 'engine');

  /// Reference to `no_password_required` attribute.
  TfRef<bool> get noPasswordRequired =>
      TfRef.attribute<bool>(this, 'no_password_required');

  /// Reference to `passwords` attribute.
  TfRef<List<String>> get passwords =>
      TfRef.attribute<List<String>>(this, 'passwords');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `user_id` attribute.
  TfRef<String> get userId => TfRef.attribute<String>(this, 'user_id');

  /// Reference to `user_name` attribute.
  TfRef<String> get userName => TfRef.attribute<String>(this, 'user_name');
}
