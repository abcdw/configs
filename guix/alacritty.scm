(use-modules (guix packages)
             (guix git-download)
             (guix download)
             (guix build-system cargo)
             (guix licenses))

(define-public
  alacritty
  (package
   (name "alacritty")
   (version "0.3.0")
   (source (origin
            (method git-fetch)
            (uri (git-reference
                  (url "https://github.com/jwilm/alacritty.git")
                  (commit (string-append "v" version))))
            (sha256
             (base32 "0d9qnymi8v4aqm2p300ccdsgavrnd64sv7v0cz5dp0sp5c0vd7jl"))))
   (build-system cargo-build-system)
   (synopsis "A cross-platform, GPU-accelerated terminal emulator ")
   (description "A cross-platform, GPU-accelerated terminal emulator ")
   (home-page "https://github.com/qwilm/alacritty")
   (license asl2.0)
   ))




alacritty
