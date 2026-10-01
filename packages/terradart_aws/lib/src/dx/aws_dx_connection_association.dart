// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_dx_connection_association`.
const Set<String> _awsDxConnectionAssociationSensitive = <String>{};

/// Factory wrapper for `aws_dx_connection_association`.
final class AwsDxConnectionAssociation extends Resource {
  static const String tfType = 'aws_dx_connection_association';

  AwsDxConnectionAssociation(
    super.localName, {
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
           'region': ?region,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsDxConnectionAssociationSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsDxConnectionAssociation>`.
  RefTo<AwsDxConnectionAssociation> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `connection_id` attribute.
  TfRef<String> get connectionId =>
      TfRef.attribute<String>(this, 'connection_id');

  /// Reference to `lag_id` attribute.
  TfRef<String> get lagId => TfRef.attribute<String>(this, 'lag_id');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');
}
