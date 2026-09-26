// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_gamelift_alias`.
const Set<String> _awsGameliftAliasSensitive = <String>{};

/// Typed helper for the `routing_strategy` block of
/// `aws_gamelift_alias` (derived from provider schema).
@immutable
final class GameliftAliasRoutingStrategy {
  const GameliftAliasRoutingStrategy({
    this.fleetId,
    this.message,
    required this.type,
  });

  final TfArg<String>? fleetId;

  final TfArg<String>? message;

  final TfArg<String> type;

  Map<String, Object?> encode() => {
    if (fleetId != null) 'fleet_id': fleetId!.toTfJson(),
    if (message != null) 'message': message!.toTfJson(),
    'type': type.toTfJson(),
  };
}

/// Factory wrapper for `aws_gamelift_alias`.
final class AwsGameliftAlias extends Resource {
  static const String tfType = 'aws_gamelift_alias';

  AwsGameliftAlias({
    required super.localName,
    TfArg<String>? description,
    required TfArg<String> name,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    required GameliftAliasRoutingStrategy routingStrategy,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (description != null) 'description': description,
           'name': name,
           if (region != null) 'region': region,
           if (tags != null) 'tags': tags,
           'routing_strategy': TfArg.literal(routingStrategy.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsGameliftAliasSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');
}
