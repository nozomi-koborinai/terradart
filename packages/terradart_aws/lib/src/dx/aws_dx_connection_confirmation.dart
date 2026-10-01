// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_dx_connection_confirmation`.
const Set<String> _awsDxConnectionConfirmationSensitive = <String>{};

/// Factory wrapper for `aws_dx_connection_confirmation`.
final class AwsDxConnectionConfirmation extends Resource {
  static const String tfType = 'aws_dx_connection_confirmation';

  AwsDxConnectionConfirmation({
    required super.localName,
    required TfArg<String> connectionId,
    TfArg<String>? region,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {'connection_id': connectionId, 'region': ?region},
       );

  @override
  Set<String> get sensitiveFields => _awsDxConnectionConfirmationSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsDxConnectionConfirmation>`.
  RefTo<AwsDxConnectionConfirmation> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `connection_id` attribute.
  TfRef<String> get connectionId =>
      TfRef.attribute<String>(this, 'connection_id');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');
}
