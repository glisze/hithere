(use-modules (guix)
	     (gnu packages linux)
	     (guix git-download)
	     (guix build-system gnu)
	     (guix licenses))
;; guix build -f ./guix.scm --with-sources=$( pwd )/ -K
(package 
 (name "hithere")
 (version "0.0.5")
 (source #f)
 (build-system gnu-build-system)
 (native-inputs ;; these are needed in the early stages of developing this
  `(("autoconf",autoconf)
    ("automake",automake)
    ("aclocal",aclocal)
    ("m4",m4)))
  (synopsis "hithere: aclocal, autoconf, autoheader, automake, autotest")
 (description
  "This is from the GNU autotools manual. This exercises these toold.
Dealing with producing a standard distribution.
This is experimental, only. The aim is to find proper procedures.")
 (home-page "https://some.where.there")
 (license gpl3+))


