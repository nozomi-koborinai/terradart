// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_connect_bot_association`.
const Set<String> _awsConnectBotAssociationSensitive = <String>{};

/// Typed helper for the `lex_bot` block of
/// `aws_connect_bot_association` (derived from provider schema).
@immutable
final class DataConnectBotAssociationLexBot {
  const DataConnectBotAssociationLexBot({this.lexRegion, required this.name});

  final TfArg<String>? lexRegion;

  final TfArg<String> name;

  Map<String, Object?> encode() => {
    if (lexRegion != null) 'lex_region': lexRegion!.toTfJson(),
    'name': name.toTfJson(),
  };
}

/// Factory wrapper for `aws_connect_bot_association`.
final class DataAwsConnectBotAssociation extends Data {
  static const String tfType = 'aws_connect_bot_association';

  DataAwsConnectBotAssociation({
    required super.localName,
    required TfArg<String> instanceId,
    TfArg<String>? region,
    required DataConnectBotAssociationLexBot lexBot,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'instance_id': instanceId,
           if (region != null) 'region': region,
           'lex_bot': TfArg.literal(lexBot.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsConnectBotAssociationSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}
