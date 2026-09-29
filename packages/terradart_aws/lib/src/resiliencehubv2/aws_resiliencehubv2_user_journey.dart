// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_resiliencehubv2_user_journey`.
const Set<String> _awsResiliencehubv2UserJourneySensitive = <String>{};

/// Factory wrapper for `aws_resiliencehubv2_user_journey`.
final class AwsResiliencehubv2UserJourney extends Resource {
  static const String tfType = 'aws_resiliencehubv2_user_journey';

  AwsResiliencehubv2UserJourney({
    required super.localName,
    TfArg<String>? description,
    required TfArg<String> name,
    TfArg<String>? policyArn,
    TfArg<String>? region,
    required TfArg<String> systemArn,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'description': ?description,
           'name': name,
           'policy_arn': ?policyArn,
           'region': ?region,
           'system_arn': systemArn,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsResiliencehubv2UserJourneySensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsResiliencehubv2UserJourney>`.
  RefTo<AwsResiliencehubv2UserJourney> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `user_journey_id` attribute.
  TfRef<String> get userJourneyId =>
      TfRef.attribute<String>(this, 'user_journey_id');
}
