/// Renders a Homebrew formula Ruby file from release asset metadata.
///
/// Pure string rendering — no IO. The IO wrapper lives in render_to_file.dart.
String renderFormula({
  required String className,
  required String binName,
  required String desc,
  required String version,
  required String testCmd,
  required Map<String, (String, String)> assets,
}) {
  final arm64 = assets['darwin-arm64']!;
  final amd64 = assets['darwin-amd64']!;
  final linux = assets['linux-amd64']!;

  return '''
class $className < Formula
  desc "$desc"
  homepage "https://github.com/nozomi-koborinai/terradart"
  version "$version"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "${arm64.$1}"
      sha256 "${arm64.$2}"
    else
      url "${amd64.$1}"
      sha256 "${amd64.$2}"
    end
  end

  on_linux do
    url "${linux.$1}"
    sha256 "${linux.$2}"
  end

  def install
    if OS.mac?
      if Hardware::CPU.arm?
        bin.install "$binName-darwin-arm64" => "$binName"
      else
        bin.install "$binName-darwin-amd64" => "$binName"
      end
    else
      bin.install "$binName-linux-amd64" => "$binName"
    end
  end

  test do
    assert_match "$binName", shell_output("#{bin}/$binName $testCmd")
  end
end
''';
}
