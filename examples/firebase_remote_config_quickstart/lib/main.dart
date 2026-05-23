/// Firebase Remote Config quickstart — Wave 4 Round 3 end-to-end example.
///
/// Defines a [RemoteConfigStack] that provisions:
/// - a `GoogleFirebaseRemoteConfigRemoteConfig` with:
///   - one [RemoteConfigCondition] keyed on a country audience,
///   - two top-level [RemoteConfigParameter]s (one boolean flag, one string),
///   - one [RemoteConfigParameterGroup] grouping feature-flag parameters.
///
/// Demonstrates the helper-class API:
/// - [RemoteConfigCondition] to declare named condition expressions,
/// - [RemoteConfigParameter] with a [RemoteConfigDefaultValue] and a
///   [RemoteConfigConditionalValue] that references the condition by name,
/// - [RemoteConfigParameterGroup] to bucket related parameters together
///   in the Firebase Console.
/// - [RemoteConfigTagColor] and [RemoteConfigValueType] enum usage.
library;

import 'package:terradart_core/terradart_core.dart';
import 'package:terradart_google/firebase_remote_config.dart';
import 'package:terradart_google/provider.dart';

final class RemoteConfigStack extends Stack {
  RemoteConfigStack({required String projectId})
      : super(
          providers: [
            GoogleProvider(project: projectId, region: 'us-central1'),
          ],
        ) {
    // A condition that fires for users in Japan.
    final japanCondition =
        FirebaseRemoteConfigRemoteConfigRemoteConfigCondition(
      name: TfArg.literal('is_japan'),
      expression: TfArg.literal("device.country in ['JP']"),
      tagColor: RemoteConfigTagColor.blue,
    );

    add(
      GoogleFirebaseRemoteConfigRemoteConfig(
        localName: 'main',
        conditions: [japanCondition],
        parameters: [
          // Boolean feature flag: enable a new checkout flow.
          FirebaseRemoteConfigRemoteConfigRemoteConfigParameter(
            parameterName: TfArg.literal('enable_new_checkout'),
            valueType: RemoteConfigValueType.boolean,
            defaultValue:
                FirebaseRemoteConfigRemoteConfigRemoteConfigDefaultValue(
              value: TfArg.literal('false'),
            ),
            conditionalValues: [
              // Enable for Japan before global rollout.
              FirebaseRemoteConfigRemoteConfigRemoteConfigConditionalValue(
                conditionName: TfArg.literal('is_japan'),
                value: TfArg.literal('true'),
              ),
            ],
          ),
          // String parameter: welcome banner text.
          FirebaseRemoteConfigRemoteConfigRemoteConfigParameter(
            parameterName: TfArg.literal('welcome_banner_text'),
            valueType: RemoteConfigValueType.string,
            defaultValue:
                FirebaseRemoteConfigRemoteConfigRemoteConfigDefaultValue(
              value: TfArg.literal('Welcome!'),
            ),
            conditionalValues: [
              FirebaseRemoteConfigRemoteConfigRemoteConfigConditionalValue(
                conditionName: TfArg.literal('is_japan'),
                value: TfArg.literal('ようこそ！'),
              ),
            ],
          ),
        ],
        parameterGroups: [
          // Group feature-flag parameters for the Firebase Console display.
          FirebaseRemoteConfigRemoteConfigRemoteConfigParameterGroup(
            parameterGroupName: TfArg.literal('feature_flags'),
            description: TfArg.literal('Progressive feature rollout flags.'),
            parameters: [
              FirebaseRemoteConfigRemoteConfigRemoteConfigParameter(
                parameterName: TfArg.literal('enable_dark_mode'),
                valueType: RemoteConfigValueType.boolean,
                defaultValue:
                    FirebaseRemoteConfigRemoteConfigRemoteConfigDefaultValue(
                  value: TfArg.literal('false'),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
