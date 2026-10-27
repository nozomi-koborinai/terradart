// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_dx_macsec_key_association`.
const Set<String> _awsDxMacsecKeyAssociationSensitive = <String>{
  'cak_wo',
  'ckn_wo',
};

/// Factory wrapper for `aws_dx_macsec_key_association`.
final class AwsDxMacsecKeyAssociation extends Resource {
  static const String tfType = 'aws_dx_macsec_key_association';

  AwsDxMacsecKeyAssociation(
    super.localName, {
    TfArg<String>? cak,
    Sensitive<String>? cakWo,
    TfArg<num>? cakWoVersion,
    TfArg<String>? ckn,
    Sensitive<String>? cknWo,
    TfArg<num>? cknWoVersion,
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
           'cak_wo': ?cakWo,
           'cak_wo_version': ?cakWoVersion,
           'ckn': ?ckn,
           'ckn_wo': ?cknWo,
           'ckn_wo_version': ?cknWoVersion,
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

  /// Reference to `cak_wo_version` attribute.
  TfRef<num> get cakWoVersion => TfRef.attribute<num>(this, 'cak_wo_version');

  /// Reference to `ckn` attribute.
  TfRef<String> get ckn => TfRef.attribute<String>(this, 'ckn');

  /// Reference to `ckn_wo_version` attribute.
  TfRef<num> get cknWoVersion => TfRef.attribute<num>(this, 'ckn_wo_version');

  /// Reference to `connection_id` attribute.
  TfRef<String> get connectionId =>
      TfRef.attribute<String>(this, 'connection_id');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `secret_arn` attribute.
  TfRef<String> get secretArn => TfRef.attribute<String>(this, 'secret_arn');
}
