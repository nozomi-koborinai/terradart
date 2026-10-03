/// The environment variable that turns questions off, as `--no-input` does.
const noInputVariable = 'TERRADART_NO_INPUT';

/// Variables AI coding agents set in the shells they spawn. Such a shell can
/// be a terminal, where a question would hang the agent.
const agentVariables = [
  'AI_AGENT',
  'CURSOR_AGENT',
  'CLAUDECODE',
  'GEMINI_CLI',
  'CODEX_SANDBOX',
  'CODEX_THREAD_ID',
  'OPENCODE',
];

/// Why the CLI must not ask, even on a terminal: `--no-input`
/// ([noInputFlag]), [noInputVariable], `CI`, or one of [agentVariables];
/// `null` when nothing says so.
String? noInputReason(
  Map<String, String> environment, {
  bool noInputFlag = false,
}) {
  if (noInputFlag) return '--no-input';
  bool set(String name) => switch (environment[name]?.trim().toLowerCase()) {
    null || '' || '0' || 'false' => false,
    _ => true,
  };
  if (set(noInputVariable)) return noInputVariable;
  if (set('CI')) return 'CI';
  for (final name in agentVariables) {
    if (set(name)) return name;
  }
  return null;
}

/// [arguments] as a command line a shell runs as is, with [add] inserted
/// before `--`: the `Next:` line of an error.
String commandLine(List<String> arguments, [List<String> add = const []]) {
  final dashes = arguments.indexOf('--');
  final words = dashes < 0
      ? [...arguments, ...add]
      : [...arguments.take(dashes), ...add, ...arguments.skip(dashes)];
  return ['terradart', ...words.map(_quote)].join(' ');
}

final _plain = RegExp(r'^[A-Za-z0-9_./:=,@%+-]+$');

String _quote(String word) =>
    _plain.hasMatch(word) ? word : "'${word.replaceAll("'", r"'\''")}'";
