// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';
import '../connect/aws_connect_bot_association.dart';

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

  /// A reference to the `aws_connect_bot_association` this data source reads, for
  /// arguments typed `RefTo<AwsConnectBotAssociation>`.
  RefTo<AwsConnectBotAssociation> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}
