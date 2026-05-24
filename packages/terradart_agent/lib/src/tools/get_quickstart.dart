import '../quickstart_scenarios.dart';

class QuickstartResult {
  const QuickstartResult.found(this.scenario)
    : found = true,
      available = const [];
  const QuickstartResult.notFound(this.available)
    : found = false,
      scenario = null;
  final bool found;
  final QuickstartScenario? scenario;
  final List<String> available;
}

QuickstartResult getQuickstart(String scenario) {
  final s = kScenarios[scenario];
  if (s != null) return QuickstartResult.found(s);
  return QuickstartResult.notFound(kScenarios.keys.toList()..sort());
}
