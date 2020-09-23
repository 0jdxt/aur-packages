PKGVER = 0.3.4
PKGREL = 4

.PHONY: codegen
codegen:
	@sed -e 's/{{PKGVER}}/$(PKGVER)/g' \
		-e 's/{{PKGREL}}/$(PKGREL)/g' \
		PKGBUILD.tmpl > PKGBUILD
	@sed -i "s/{{MD5SUM}}/$$(makepkg -g | grep -Po '[0-9a-f]{32}')/g" PKGBUILD
	@makepkg --printsrcinfo > .SRCINFO
