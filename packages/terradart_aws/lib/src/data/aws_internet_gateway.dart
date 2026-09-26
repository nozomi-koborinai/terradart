// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_internet_gateway`.
const Set<String> _awsInternetGatewaySensitive = <String>{};

/// Typed helper for the `filter` block of
/// `aws_internet_gateway` (derived from provider schema).
@immutable
final class DataInternetGatewayFilter {
  const DataInternetGatewayFilter({required this.name, required this.values});

  final TfArg<String> name;

  final TfArg<List<Object?>> values;

  Map<String, Object?> encode() => {
    'name': name.toTfJson(),
    'values': values.toTfJson(),
  };
}

/// Factory wrapper for `aws_internet_gateway`.
final class DataAwsInternetGateway extends Data {
  static const String tfType = 'aws_internet_gateway';

  DataAwsInternetGateway({
    required super.localName,
    TfArg<String>? internetGatewayId,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    List<DataInternetGatewayFilter>? filter,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (internetGatewayId != null)
             'internet_gateway_id': internetGatewayId,
           if (region != null) 'region': region,
           if (tags != null) 'tags': tags,
           if (filter != null)
             'filter': TfArg.literal([for (final e in filter) e.encode()]),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsInternetGatewaySensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `attachments` attribute.
  TfRef<List<Map<String, Object?>>> get attachments =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'attachments');

  /// Reference to `owner_id` attribute.
  TfRef<String> get ownerId => TfRef.attribute<String>(this, 'owner_id');
}
