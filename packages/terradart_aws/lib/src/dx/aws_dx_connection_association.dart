// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_dx_connection_association`.
const Set<String> _awsDxConnectionAssociationSensitive = <String>{};

/// Factory wrapper for `aws_dx_connection_association`.
final class AwsDxConnectionAssociation extends Resource {
  static const String tfType = 'aws_dx_connection_association';

  AwsDxConnectionAssociation({
    required super.localName,
    required TfArg<String> connectionId,
    required TfArg<String> lagId,
    TfArg<String>? region,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'connection_id': connectionId,
           'lag_id': lagId,
           if (region != null) 'region': region,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsDxConnectionAssociationSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}
