// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../dx/aws_dx_gateway.dart';

/// Sensitive field paths for `aws_dx_gateway`.
const Set<String> _awsDxGatewaySensitive = <String>{};

/// Factory wrapper for `aws_dx_gateway`.
final class DataAwsDxGateway extends Data {
  static const String tfType = 'aws_dx_gateway';

  DataAwsDxGateway({
    required super.localName,
    required TfArg<String> name,
    TfArg<Map<String, String>>? tags,
    super.provider,
    super.timeouts,
  }) : super(terraformType: tfType, argMap: {'name': name, 'tags': ?tags});

  @override
  Set<String> get sensitiveFields => _awsDxGatewaySensitive;

  /// A reference to the `aws_dx_gateway` this data source reads, for
  /// arguments typed `RefTo<AwsDxGateway>`.
  RefTo<AwsDxGateway> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `amazon_side_asn` attribute.
  TfRef<String> get amazonSideAsn =>
      TfRef.attribute<String>(this, 'amazon_side_asn');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `owner_account_id` attribute.
  TfRef<String> get ownerAccountId =>
      TfRef.attribute<String>(this, 'owner_account_id');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tagsRef =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}
