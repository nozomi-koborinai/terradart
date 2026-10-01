// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_bedrock_foundation_model_agreement_offers`.
const Set<String> _awsBedrockFoundationModelAgreementOffersSensitive =
    <String>{};

/// Factory wrapper for `aws_bedrock_foundation_model_agreement_offers`.
final class DataAwsBedrockFoundationModelAgreementOffers extends Data {
  static const String tfType = 'aws_bedrock_foundation_model_agreement_offers';

  DataAwsBedrockFoundationModelAgreementOffers({
    required super.localName,
    required TfArg<String> modelId,
    TfArg<String>? offerType,
    TfArg<String>? region,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'model_id': modelId,
           'offer_type': ?offerType,
           'region': ?region,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _awsBedrockFoundationModelAgreementOffersSensitive;

  /// Reference to `offers` attribute.
  TfRef<List<Map<String, Object?>>> get offers =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'offers');

  /// Reference to `model_id` attribute.
  TfRef<String> get modelId => TfRef.attribute<String>(this, 'model_id');

  /// Reference to `offer_type` attribute.
  TfRef<String> get offerType => TfRef.attribute<String>(this, 'offer_type');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');
}
