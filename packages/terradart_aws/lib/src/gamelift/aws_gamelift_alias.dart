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

  final GameliftAliasType type;

  Map<String, Object?> encode() => {
    'fleet_id': ?fleetId?.toTfJson(),
    'message': ?message?.toTfJson(),
    'type': type.toTfJson(),
  };
}

/// `type` — derived from the provider schema description.
extension type const GameliftAliasType._(TfArg<String> _)
    implements TfArg<String> {
  GameliftAliasType.variable(String name) : this._(TfArg.variable(name));
  GameliftAliasType.expression(String template)
    : this._(TfArg.expression(template));
  const GameliftAliasType.arg(TfArg<String> arg) : this._(arg);

  static const simple = GameliftAliasType._(TfArgLiteral('SIMPLE'));
  static const terminal = GameliftAliasType._(TfArgLiteral('TERMINAL'));

  static const List<GameliftAliasType> values = [simple, terminal];
}

/// Factory wrapper for `aws_gamelift_alias`.
final class AwsGameliftAlias extends Resource {
  static const String tfType = 'aws_gamelift_alias';

  AwsGameliftAlias(
    super.localName, {
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
           'description': ?description,
           'name': name,
           'region': ?region,
           'tags': ?tags,
           'routing_strategy': TfArg.literal(routingStrategy.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsGameliftAliasSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsGameliftAlias>`.
  RefTo<AwsGameliftAlias> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}
