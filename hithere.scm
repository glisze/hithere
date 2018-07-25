(define-module (gnu packages hithere)
  #:use-module (guix licenses)
  #:use-module (guix packages)
  #:use-module (guix download)
  #:use-module (guix build-system gnu))

;; GUILE_LOAD_PATH=./:$GUILE_LOAD_PATH
;; guix build hithere --with-source=hithere=./

;; or, as aimed for
;; guix build -f ./guix.scm --with-source=hithere=./
(define-public hithere
  (package 
   (name "hithere")
   (version "0.0.6")
   (source #f)
   (build-system gnu-build-system)
   (synopsis "hithere: aclocal, autoconf, autoheader, automake, autotest")
   (description
    "This is from the GNU autotools manual. This exercises these toold.
Dealing with producing a standard distribution.
This is experimental, only. The aim is to find proper procedures.")
   (home-page "https://some.where.there")
   (license gpl3+)))


