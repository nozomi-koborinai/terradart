// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_sfn_alias`.
const Set<String> _awsSfnAliasSensitive = <String>{};

/// Factory wrapper for `aws_sfn_alias`.
final class DataAwsSfnAlias extends Data {
  static const String tfType = 'aws_sfn_alias';

  DataAwsSfnAlias({
    required super.localName,
    TfArg<String>? description,
    required TfArg<String> name,
    TfArg<String>? region,
    required TfArg<String> statemachineArn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (description != null) 'description': description,
           'name': name,
           if (region != null) 'region': region,
           'statemachine_arn': statemachineArn,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsSfnAliasSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `creation_date` attribute.
  TfRef<String> get creationDate =>
      TfRef.attribute<String>(this, 'creation_date');

  /// Reference to `routing_configuration` attribute.
  TfRef<List<Map<String, Object?>>> get routingConfiguration =>
      TfRef.attribute<List<Map<String, Object?>>>(
        this,
        'routing_configuration',
      );
}
