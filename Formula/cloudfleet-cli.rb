# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class CloudfleetCli < Formula
  desc "Cloudfleet Command Line Interface"
  homepage "https://cloudfleet.ai"
  version "0.5.2"

  depends_on "kubernetes-cli" => :recommended

  on_macos do
    url "https://downloads.cloudfleet.ai/cli/0.5.2/cloudfleet_darwin_all.zip"
    sha256 "3d4516c7acf6aa57f92b089b37c693c7922b2c6fc03fbbcf63c94a6b1d3d8b6c"

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
        url "https://downloads.cloudfleet.ai/cli/0.5.2/cloudfleet_linux_amd64.zip"
        sha256 "5b315832e2733cc2dd6ecfa1acaa0b7abab17aa4153462fd7416a69a9d017a10"

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
        url "https://downloads.cloudfleet.ai/cli/0.5.2/cloudfleet_linux_arm64.zip"
        sha256 "7bf117840b6777ea09ebcb141aa0c47a7527c3288b87d1f5babfac3a4e91a5a1"

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
