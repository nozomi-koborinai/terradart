// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_dx_macsec_key_association`.
const Set<String> _awsDxMacsecKeyAssociationSensitive = <String>{};

/// Factory wrapper for `aws_dx_macsec_key_association`.
final class AwsDxMacsecKeyAssociation extends Resource {
  static const String tfType = 'aws_dx_macsec_key_association';

  AwsDxMacsecKeyAssociation(
    super.localName, {
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
           'cak': ?cak,
           'ckn': ?ckn,
           'connection_id': connectionId,
           'region': ?region,
           'secret_arn': ?secretArn,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsDxMacsecKeyAssociationSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsDxMacsecKeyAssociation>`.
  RefTo<AwsDxMacsecKeyAssociation> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `start_on` attribute.
  TfRef<String> get startOn => TfRef.attribute<String>(this, 'start_on');

  /// Reference to `state` attribute.
  TfRef<String> get state => TfRef.attribute<String>(this, 'state');

  /// Reference to `cak` attribute.
  TfRef<String> get cak => TfRef.attribute<String>(this, 'cak');

  /// Reference to `ckn` attribute.
  TfRef<String> get ckn => TfRef.attribute<String>(this, 'ckn');

  /// Reference to `connection_id` attribute.
  TfRef<String> get connectionId =>
      TfRef.attribute<String>(this, 'connection_id');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `secret_arn` attribute.
  TfRef<String> get secretArn => TfRef.attribute<String>(this, 'secret_arn');
}
