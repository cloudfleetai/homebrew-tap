# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class CloudfleetCli < Formula
  desc "Cloudfleet Command Line Interface"
  homepage "https://cloudfleet.ai"
  version "0.4.0"

  depends_on "kubernetes-cli" => :recommended

  on_macos do
    url "https://downloads.cloudfleet.ai/cli/0.4.0/cloudfleet_darwin_all.zip"
    sha256 "af82120ca9104b41d169bff7666502062f2f1df5196e0428df8e70b464ac5960"

    def install
      bin.install "cloudfleet" => "cloudfleet"

      # Install bash completion
      output = Utils.popen_read("#{bin}/cloudfleet completion bash")
      (bash_completion/"cloudfleet").write output

      # Install zsh completion
      output = Utils.popen_read("#{bin}/cloudfleet completion zsh")
      (zsh_completion/"_cloudfleet").write output
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://downloads.cloudfleet.ai/cli/0.4.0/cloudfleet_linux_amd64.zip"
        sha256 "86f7198645c6492a1b5947ae79a8d139ab43070afec7bc7f71541f019e925584"

        def install
          bin.install "cloudfleet" => "cloudfleet"

          # Install bash completion
          output = Utils.popen_read("#{bin}/cloudfleet completion bash")
          (bash_completion/"cloudfleet").write output

          # Install zsh completion
          output = Utils.popen_read("#{bin}/cloudfleet completion zsh")
          (zsh_completion/"_cloudfleet").write output
        end
      end
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://downloads.cloudfleet.ai/cli/0.4.0/cloudfleet_linux_arm64.zip"
        sha256 "999a03c7f348aba10608491552e4e898342065fcbeb9c7972eda4f3edce097d6"

        def install
          bin.install "cloudfleet" => "cloudfleet"

          # Install bash completion
          output = Utils.popen_read("#{bin}/cloudfleet completion bash")
          (bash_completion/"cloudfleet").write output

          # Install zsh completion
          output = Utils.popen_read("#{bin}/cloudfleet completion zsh")
          (zsh_completion/"_cloudfleet").write output
        end
      end
    end
  end
end
