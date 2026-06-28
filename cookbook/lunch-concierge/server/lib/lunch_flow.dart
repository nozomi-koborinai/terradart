import 'package:genkit/genkit.dart';
import 'package:genkit_vertexai/genkit_vertexai.dart';
import 'package:lunch_concierge_shared/generated/lunch_stack.app.dart';
import 'package:lunch_concierge_shared/schema.dart';

import 'db.dart';

final class LunchFlowBundle {
  LunchFlowBundle({required this.ai, required this.flow});

  final Genkit ai;
  final Flow<LunchRequest, LunchResponse, void, void> flow;
}

Future<LunchFlowBundle> createLunchFlow() async {
  final repository = LunchHistoryRepository();
  final ai = Genkit(
    plugins: [
      vertexAI(
        projectId: LunchStackExports.PROJECT_ID,
        location: LunchStackExports.REGION,
      ),
    ],
  );

  final flow = ai.defineFlow(
    name: 'suggestLunch',
    inputSchema: LunchRequest.$schema,
    outputSchema: LunchResponse.$schema,
    fn: (input, _) async {
      final response = await ai.generate(
        model: vertexAI.gemini('gemini-2.5-flash'),
        prompt:
            '''
あなたは日本のランチ相談に乗るコンシェルジュです。

エリア: ${input.area}
気分: ${input.mood}
予算: ${input.budgetYen}円

条件に合うランチ候補を3つ提案してください。
理由は短く、午後の仕事や勉強に戻りやすい観点も入れてください。
''',
        outputSchema: LunchResponse.$schema,
      );
      final output = response.output;
      if (output == null) {
        throw GenkitException(
          'Gemini response did not match LunchResponse schema.',
          status: StatusCodes.INTERNAL,
        );
      }

      await repository.save(input, output);
      return output;
    },
  );

  return LunchFlowBundle(ai: ai, flow: flow);
}
