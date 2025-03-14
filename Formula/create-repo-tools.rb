class CreateRepoTools < Formula
  desc "CLI tools to create GitHub/GitLab repos and auto-sync them via cron"
  homepage "https://github.com/justrunme/create-repo-auto"
  url "https://github.com/justrunme/create-repo-auto/archive/refs/tags/v1.0.1.tar.gz"
  sha256 "REPLACE_ME_WITH_ACTUAL_SHA256"
  license "MIT"

  def install
    bin.install "create-repo"
    bin.install "update-all.sh"
  end

  def caveats
    <<~EOS
      🧠 После установки:
        - Используй `create-repo` для создания и добавления папок в авто-слежение
        - Скрипт сам предложит добавить cron для автообновления
        - Можно запускать `update-all.sh` вручную или через cron
    EOS
  end
end
