(use-modules (guix)
	     (gnu packages linux)
	     (guix git-download)
	     (guix build-system gnu)
	     (guix licenses))
;; guix build -f ./guix.scm --with-sources=$( pwd )/ -K
(package 
 (name "hithere")
 (version "0.1")
 (source #f)
 (build-system gnu-build-system)
 (inputs
  `(("ncurses" ,ncurses)))
 (native-inputs
  `(("autoconf",autoconf)
    ("automake",automake)))
 (synopsis "hithere: aclocal, autoconf, autoheader, automake, autotest")
 (description
  "This is from the GNU autotools manual")
 (home-page "https://some.where.there")
 (license gpl3+))


