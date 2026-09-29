// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../lambda/aws_lambda_function.dart' show AwsLambdaFunction;

/// Sensitive field paths for `aws_chimesdkvoice_sip_media_application`.
const Set<String> _awsChimesdkvoiceSipMediaApplicationSensitive = <String>{};

/// Typed helper for the `endpoints` block of
/// `aws_chimesdkvoice_sip_media_application` (derived from provider schema).
@immutable
final class ChimesdkvoiceSipMediaApplicationEndpoints {
  const ChimesdkvoiceSipMediaApplicationEndpoints({required this.lambdaArn});

  final RefTo<AwsLambdaFunction> lambdaArn;

  Map<String, Object?> encode() => {
    'lambda_arn': lambdaArn.encodeAs('arn').toTfJson(),
  };
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
           'region': ?region,
           'tags': ?tags,
           'endpoints': TfArg.literal(endpoints.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _awsChimesdkvoiceSipMediaApplicationSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsChimesdkvoiceSipMediaApplication>`.
  RefTo<AwsChimesdkvoiceSipMediaApplication> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');
}
