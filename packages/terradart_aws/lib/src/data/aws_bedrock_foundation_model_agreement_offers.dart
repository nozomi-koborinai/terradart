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
           if (offerType != null) 'offer_type': offerType,
           if (region != null) 'region': region,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _awsBedrockFoundationModelAgreementOffersSensitive;

  /// Reference to `offers` attribute.
  TfRef<List<Map<String, Object?>>> get offers =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'offers');
}
