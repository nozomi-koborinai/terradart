// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../ssmcontacts/aws_ssmcontacts_contact_channel.dart';

/// Sensitive field paths for `aws_ssmcontacts_contact_channel`.
const Set<String> _awsSsmcontactsContactChannelSensitive = <String>{};

/// Factory wrapper for `aws_ssmcontacts_contact_channel`.
final class DataAwsSsmcontactsContactChannel extends Data {
  static const String tfType = 'aws_ssmcontacts_contact_channel';

  DataAwsSsmcontactsContactChannel({
    required super.localName,
    required TfArg<String> arn,
    TfArg<String>? region,
    super.provider,
    super.timeouts,
  }) : super(terraformType: tfType, argMap: {'arn': arn, 'region': ?region});

  @override
  Set<String> get sensitiveFields => _awsSsmcontactsContactChannelSensitive;

  /// A reference to the `aws_ssmcontacts_contact_channel` this data source reads, for
  /// arguments typed `RefTo<AwsSsmcontactsContactChannel>`.
  RefTo<AwsSsmcontactsContactChannel> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `activation_status` attribute.
  TfRef<String> get activationStatus =>
      TfRef.attribute<String>(this, 'activation_status');

  /// Reference to `contact_id` attribute.
  TfRef<String> get contactId => TfRef.attribute<String>(this, 'contact_id');

  /// Reference to `delivery_address` attribute.
  TfRef<List<Map<String, Object?>>> get deliveryAddress =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'delivery_address');

  /// Reference to `type` attribute.
  TfRef<String> get type => TfRef.attribute<String>(this, 'type');

  /// Reference to `arn` attribute.
  TfRef<String> get arnRef => TfRef.attribute<String>(this, 'arn');

  /// Reference to `region` attribute.
  TfRef<String> get regionRef => TfRef.attribute<String>(this, 'region');
}
