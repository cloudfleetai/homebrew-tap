# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class CloudfleetCli < Formula
  desc "Cloudfleet Command Line Interface"
  homepage "https://cloudfleet.ai"
  version "0.3.21-test"

  depends_on "kubernetes-cli" => :recommended

  on_macos do
    url "https://downloads.cloudfleet.ai/cli/0.3.21-test/cloudfleet_darwin_all.zip"
    sha256 "86a294eaea986be09f22b9cd9093d3b40bfa4607f080f80ee9a89a6cb9001f24"

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
        url "https://downloads.cloudfleet.ai/cli/0.3.21-test/cloudfleet_linux_amd64.zip"
        sha256 "da140f0c043f1e11891d6d6166c575dd3ab0f6cd961677dce844e84ce0e9008f"

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
        url "https://downloads.cloudfleet.ai/cli/0.3.21-test/cloudfleet_linux_arm64.zip"
        sha256 "a5a5af95bfcdffbe0d87f1c65feeb06770f673d883bf124b2273886ba6e421db"

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
