;;; 20220807 (C) Gunter Liszewski, Emacs pov-mode package for Guix -*- mode: scheme; -*-

(define-module (gnu packages xen-0-emacs-abc)
  #:use-module ((guix licenses) #:prefix license:)
  #:use-module (guix packages)
  #:use-module (guix download)
  #:use-module (guix gexp)
  #:use-module (guix git-download)
  #:use-module (guix build-system emacs)
  #:use-module (gnu packages)
  #:use-module (gnu packages emacs)
  #:use-module (gnu packages texinfo)
  #:use-module (gnu packages povray-here)
  #:use-module (guix utils)
  #:use-module (srfi srfi-1)
  #:use-module (ice-9 match))

;;;
;;; Emacs and POV-ray
;;;

(define-public emacs-pov-mode
  (package
    (name "emacs-pov-mode")
    (version "v3.3")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/emacsmirror/pov-mode")
             (commit version)))
       (file-name (git-file-name name version))
       (sha256
        (base32 "0p5cwx0xwva4ajgj8hnrk8bx6n3hv1z7aqs4zivp81crnq4077yw"))))
    (build-system emacs-build-system)
    (arguments
     '(#:phases
       (modify-phases %standard-phases
         ;; Move the source files to the top level, which is included in
         ;; the EMACSLOADPATH.
         (add-after 'unpack 'move-source-files
           (lambda _
             (let ((el-files (find-files "./elisp" ".*\\.el$")))
               (for-each (lambda (f)
                           (rename-file f (basename f)))
                         el-files))))
         (add-before 'install 'make-info
           (lambda _
             (with-directory-excursion "info"
               (invoke "makeinfo" "--no-split"
                       "-o" "pov-mode.info" "pov-mode.texi")))))))
    (native-inputs
     (list texinfo))
    (home-page "https://github.com/emacsmirror/pov-mode")
    (synopsis "Major mode for editing POV-Ray scene files")
    (description
     "This major mode for GNU Emacs provides support for editing Povray
;; scene files, rendering and viewing them.  It automatically indents
;; blocks, both {} and #if #end.  It also provides context-sensitive
;; keyword completion and font-lock highlighting, as well as the
;; ability to look up those keywords in the povray documentation.")
    (license license:gpl-3)))
