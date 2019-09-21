# Maintainer: cylgom <cylgom@gmail.com>
pkgname=ly
pkgver=0.4.0
pkgrel=1
pkgdesc="TUI display manager"
arch=('i686' 'x86_64')
url="https://github.com/cylgom/ly"
license=('custom:WTFPL')
makedepends=('unzip')
depends=('pam' 'xorg-xauth')
conflicts=('ly-git' 'python-ly-git')
source=('https://github.com/cylgom/ly/releases/download/v0.4.0/ly_0.4.0.zip')
md5sums=('f005fca7f77d1838d72e462cf3be2995')

package() {
	cd ly_0.4.0
	DESTDIR="$pkgdir" ./install.sh
	install -D -m644 license.md "${pkgdir}/usr/share/licenses/${pkgname}/WTFPL"
}
