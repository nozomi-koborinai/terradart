// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

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
    if (passwordCount != null) 'password_count': passwordCount!.toTfJson(),
    if (type != null) 'type': type!.toTfJson(),
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
           if (accessString != null) 'access_string': accessString,
           if (engine != null) 'engine': engine,
           if (noPasswordRequired != null)
             'no_password_required': noPasswordRequired,
           if (passwords != null) 'passwords': passwords,
           if (region != null) 'region': region,
           'user_id': userId,
           if (userName != null) 'user_name': userName,
           if (authenticationMode != null)
             'authentication_mode': TfArg.literal([
               for (final e in authenticationMode) e.encode(),
             ]),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsElasticacheUserSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}
