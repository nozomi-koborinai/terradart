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

import 'package:terradart_google/firebase_remote_config.dart';
import 'package:terradart_google/project.dart';
import 'package:terradart_google/provider.dart';
import 'package:terradart_time/terradart_time.dart';

final class RemoteConfigStack extends Stack {
  RemoteConfigStack({required String projectId})
    : super(
        providers: [
          GoogleProvider(project: projectId, region: 'us-central1'),
          const TimeProvider(),
        ],
      ) {
    // Enable the Firebase Remote Config API and wait for propagation before
    // the template applies.
    final apiDeps = enableApis([
      .firebaseRemoteConfig,
    ], propagationDelay: const Duration(seconds: 60));

    // A condition that fires for users in Japan.
    final japanCondition = FirebaseRemoteConfigRemoteConfigCondition(
      name: .literal('is_japan'),
      expression: .literal("device.country in ['JP']"),
      tagColor: RemoteConfigTagColor.blue,
    );

    add(
      GoogleFirebaseRemoteConfigRemoteConfig(
        'main',
        conditions: [japanCondition],
        parameters: [
          // Boolean feature flag: enable a new checkout flow.
          FirebaseRemoteConfigRemoteConfigParameter(
            parameterName: .literal('enable_new_checkout'),
            valueType: RemoteConfigValueType.boolean,
            defaultValue: .new(value: .literal('false')),
            conditionalValues: [
              // Enable for Japan before global rollout.
              .new(
                conditionName: .literal('is_japan'),
                value: .literal('true'),
              ),
            ],
          ),
          // String parameter: welcome banner text.
          FirebaseRemoteConfigRemoteConfigParameter(
            parameterName: .literal('welcome_banner_text'),
            valueType: RemoteConfigValueType.string,
            defaultValue: .new(value: .literal('Welcome!')),
            conditionalValues: [
              .new(
                conditionName: .literal('is_japan'),
                value: .literal('ようこそ！'),
              ),
            ],
          ),
        ],
        parameterGroups: [
          // Group feature-flag parameters for the Firebase Console display.
          FirebaseRemoteConfigRemoteConfigParameterGroup(
            parameterGroupName: .literal('feature_flags'),
            description: .literal('Progressive feature rollout flags.'),
            parameters: [
              .new(
                parameterName: .literal('enable_dark_mode'),
                valueType: RemoteConfigValueType.boolean,
                defaultValue: .new(value: .literal('false')),
              ),
            ],
          ),
        ],
        dependsOn: apiDeps,
      ),
    );
  }
}
