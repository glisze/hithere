(use-modules (guix)
	     (guix build-system gnu)
	     (guix licenses))
;; guix build -f guix.scm -K
(package 
 (name "hithere")
 (version "0.0-dirty")
 (source (origin
	  (method url-fetch)
	  (uri
	   (string-append
	    "http://www2.bteco.ltd.uk/t/4/" name "-" version ".tar.gz"))
	   (sha256
	    (base32
	     "1sdcx55pf554m2m60aqplgs6w1wlfn0ihdinddbhwrarhj2x7w9b"))))
 (build-system gnu-build-system)
 (synopsis "hithere: aclocal, autoconf, autoheader, automake, autotest")
 (description
  "This is from the GNU autotools manual. This exercises these toold.
Dealing with producing a standard distribution.
This is experimental, only. The aim is to find proper procedures.")
 (home-page "https://some.where.there")
 (license gpl3+))


