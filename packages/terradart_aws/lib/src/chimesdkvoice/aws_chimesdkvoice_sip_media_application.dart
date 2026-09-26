// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_chimesdkvoice_sip_media_application`.
const Set<String> _awsChimesdkvoiceSipMediaApplicationSensitive = <String>{};

/// Typed helper for the `endpoints` block of
/// `aws_chimesdkvoice_sip_media_application` (derived from provider schema).
@immutable
final class ChimesdkvoiceSipMediaApplicationEndpoints {
  const ChimesdkvoiceSipMediaApplicationEndpoints({required this.lambdaArn});

  final TfArg<String> lambdaArn;

  Map<String, Object?> encode() => {'lambda_arn': lambdaArn.toTfJson()};
}

/// Factory wrapper for `aws_chimesdkvoice_sip_media_application`.
final class AwsChimesdkvoiceSipMediaApplication extends Resource {
  static const String tfType = 'aws_chimesdkvoice_sip_media_application';

  AwsChimesdkvoiceSipMediaApplication({
    required super.localName,
    required TfArg<String> awsRegion,
    required TfArg<String> name,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    required ChimesdkvoiceSipMediaApplicationEndpoints endpoints,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'aws_region': awsRegion,
           'name': name,
           if (region != null) 'region': region,
           if (tags != null) 'tags': tags,
           'endpoints': TfArg.literal(endpoints.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _awsChimesdkvoiceSipMediaApplicationSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');
}
