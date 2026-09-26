// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_dx_macsec_key_association`.
const Set<String> _awsDxMacsecKeyAssociationSensitive = <String>{};

/// Factory wrapper for `aws_dx_macsec_key_association`.
final class AwsDxMacsecKeyAssociation extends Resource {
  static const String tfType = 'aws_dx_macsec_key_association';

  AwsDxMacsecKeyAssociation({
    required super.localName,
    TfArg<String>? cak,
    TfArg<String>? ckn,
    required TfArg<String> connectionId,
    TfArg<String>? region,
    TfArg<String>? secretArn,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (cak != null) 'cak': cak,
           if (ckn != null) 'ckn': ckn,
           'connection_id': connectionId,
           if (region != null) 'region': region,
           if (secretArn != null) 'secret_arn': secretArn,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsDxMacsecKeyAssociationSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `start_on` attribute.
  TfRef<String> get startOn => TfRef.attribute<String>(this, 'start_on');

  /// Reference to `state` attribute.
  TfRef<String> get state => TfRef.attribute<String>(this, 'state');
}
