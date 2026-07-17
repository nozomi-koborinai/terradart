import 'dart:io';

import 'package:genkit/genkit.dart';
import 'package:genkit_vertexai/genkit_vertexai.dart';
import 'package:lunch_concierge_shared/generated/lunch_stack.app.dart';
import 'package:lunch_concierge_shared/schema.dart';

import 'db.dart';

final class LunchFlowBundle {
  const LunchFlowBundle({required this.ai, required this.flow});

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
      stderr.writeln(
        'suggestLunch started: area=${input.area}, mood=${input.mood}, '
        'budgetYen=${input.budgetYen}',
      );
      final GenerateResponseHelper<LunchResponse> response;
      try {
        response = await ai.generate(
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
      } catch (error, stackTrace) {
        stderr.writeln('suggestLunch generate failed: $error');
        stderr.writeln(stackTrace);
        rethrow;
      }
      final LunchResponse output;
      switch (response.output) {
        case final LunchResponse value:
          output = value;
        case null:
          stderr.writeln('suggestLunch generate returned null schema output');
          throw GenkitException(
            'Gemini response did not match LunchResponse schema.',
            status: StatusCodes.INTERNAL,
          );
      }
      stderr.writeln(
        'suggestLunch generated ${output.suggestions.length} items',
      );

      try {
        await repository.save(input, output);
        stderr.writeln('suggestLunch history saved');
      } catch (error, stackTrace) {
        stderr.writeln('suggestLunch history save failed: $error');
        stderr.writeln(stackTrace);
      }
      return output;
    },
  );

  return LunchFlowBundle(ai: ai, flow: flow);
}
