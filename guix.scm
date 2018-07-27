(use-modules (guix)
	     (guix build-system gnu)
	     (guix licenses))
;; guix build -f guix.scm -K
(package 
 (name "hithere")
 (version "v0.0.9-rc1")
 (source (origin
	  (method url-fetch)
	  (uri
	   (string-append
	    "http://www2.bteco.ltd.uk/t/4/" name "-" version ".tar.gz"))
	   (sha256
	    (base32
	     "0r206p6df2ihzhyg6ijzyj1gcw027d6d6krvhlvqhphm0kja5c2s"))))
 (build-system gnu-build-system)
 (synopsis "hithere: aclocal, autoconf, autoheader, automake, autotest")
 (description
  "This is from the GNU autotools manual. This exercises these toold.
Dealing with producing a standard distribution.
This is experimental, only. The aim is to find proper procedures.")
 (home-page "https://some.where.there")
 (license gpl3+))


