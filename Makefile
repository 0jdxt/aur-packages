USER = wfxr
REPO = csview
PKGDESC = A high performance csv viewer with cjk/emoji support
PKGVER = 0.3.5
PKGREL = 2

MAINTAINER = $(shell git config user.name) <$(shell git config user.email)>
PKGNAME = $(REPO)
BINNAME = $(REPO)
CONFLICTS = ("$(REPO)-git" "$(REPO)-bin")
PROVIDES = ()

.PHONY: codegen
codegen:
	@sed \
		-e 's#{{USER}}#$(USER)#g' \
		-e 's#{{REPO}}#$(REPO)#g' \
		-e 's#{{MAINTAINER}}#$(MAINTAINER)#g' \
		-e 's#{{PKGNAME}}#$(PKGNAME)#g' \
		-e 's#{{BINNAME}}#$(BINNAME)#g' \
		-e 's#{{PKGDESC}}#$(PKGDESC)#g' \
		-e 's#{{PKGVER}}#$(PKGVER)#g' \
		-e 's#{{PKGREL}}#$(PKGREL)#g' \
		-e 's#{{CONFLICTS}}#$(CONFLICTS)#g' \
		-e 's#{{PROVIDES}}#$(PROVIDES)#g' \
		PKGBUILD.tmpl > PKGBUILD
	@sed -i "s/{{MD5SUM}}/$$(makepkg -g | grep -Po '[0-9a-f]{32}')/g" PKGBUILD
	@makepkg --printsrcinfo > .SRCINFO

package: codegen
	@makepkg -f
