SUBDIRS = lib src doc
dist_doc_DATA = README

EXTRA_DIST = \
	$(top_srcdir)/.version \
	$(top_srcdir)/scripts/git-version-gen
BUILT_SOURCES = $(top_srcdir)/.version	      
$(top_srcdir)/.version:			      
	echo $(VERSION) > $@-t && mv $@-t $@	      
dist-hook:					      
	echo $(VERSION) > $(distdir)/VERSION

EXTRA_DIST += $(top_srcdir)/guix.scm
guix-build-local:
	guix build -f $(top_srcdir)/guix.scm hithere \
	--with-source=hithere=$(top_srcdir)

ACLOCAL_AMFLAGS = -I m4
EXTRA_DIST += m4/gnulib-cache.m4
