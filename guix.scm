(use-modules (guix)
	     (guix build-system gnu)
	     (guix licenses))
;; guix build -f guix.scm -K
(package 
 (name "hithere")
 (version "0.0.2-f59d")
 (source (origin
	  (method url-fetch)
	  (uri
	   (string-append
	    "http://www2.bteco.ltd.uk/t/4/" name "-" version ".tar.gz"))
	   (sha256
	    (base32
	     "1bynvdmrlbszjsjgqdwyci5swsd71lwdb8c4qpwq27sfa2ms1djc"))))
 (build-system gnu-build-system)
 (synopsis "hithere: aclocal, autoconf, autoheader, automake, autotest")
 (description
  "This is from the GNU autotools manual. This exercises these toold.
Dealing with producing a standard distribution.
This is experimental, only. The aim is to find proper procedures.")
 (home-page "https://some.where.there")
 (license gpl3+))


