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

import 'dart:convert' as dart_convert;
import 'dart:io';

import 'package:terradart_core/terradart_core.dart';
import 'package:terradart_google/firebase_remote_config.dart';
import 'package:terradart_google/provider.dart';

class RemoteConfigStack extends Stack {
  RemoteConfigStack({required String projectId})
      : super(
          providers: [
            GoogleProvider(project: projectId, region: 'us-central1'),
          ],
        ) {
    // A condition that fires for users in Japan.
    const japanCondition = RemoteConfigCondition(
      name: 'is_japan',
      expression: "device.country in ['JP']",
      tagColor: RemoteConfigTagColor.blue,
    );

    add(
      GoogleFirebaseRemoteConfigRemoteConfig(
        localName: 'main',
        conditions: [japanCondition],
        parameters: [
          // Boolean feature flag: enable a new checkout flow.
          const RemoteConfigParameter(
            parameterName: 'enable_new_checkout',
            valueType: RemoteConfigValueType.boolean,
            defaultValue: RemoteConfigDefaultValue(value: 'false'),
            conditionalValues: [
              // Enable for Japan before global rollout.
              RemoteConfigConditionalValue(
                conditionName: 'is_japan',
                value: 'true',
              ),
            ],
          ),
          // String parameter: welcome banner text.
          const RemoteConfigParameter(
            parameterName: 'welcome_banner_text',
            valueType: RemoteConfigValueType.string,
            defaultValue: RemoteConfigDefaultValue(value: 'Welcome!'),
            conditionalValues: [
              RemoteConfigConditionalValue(
                conditionName: 'is_japan',
                value: 'ようこそ！',
              ),
            ],
          ),
        ],
        parameterGroups: [
          // Group feature-flag parameters for the Firebase Console display.
          const RemoteConfigParameterGroup(
            parameterGroupName: 'feature_flags',
            description: 'Progressive feature rollout flags.',
            parameters: [
              RemoteConfigParameter(
                parameterName: 'enable_dark_mode',
                valueType: RemoteConfigValueType.boolean,
                defaultValue: RemoteConfigDefaultValue(value: 'false'),
              ),
            ],
          ),
        ],
      ),
    );
  }

  @override
  Future<void> synth({required String outDir}) async {
    final result = StackSynth.synth(this);
    await Directory(outDir).create(recursive: true);
    final tfFile = File('$outDir/main.tf.json');
    await tfFile.writeAsString(
      const dart_convert.JsonEncoder.withIndent('  ').convert(result.tfJson),
    );
  }
}
