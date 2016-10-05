# Contributor: zhuqin <zhuqin83@gmail.com>
pkgname=lensfun-git
_gitname=lensfun
pkgver=0.3.2.r751.geced8c7
pkgrel=1
pkgdesc="Library to correct optical lens defects and lens database"
arch=(i686 x86_64)
url="http://lensfun.sourceforge.net"
license=('LGPL3')
depends=('glibc' 'glib2')
makedepends=('python2' 'libpng' 'cmake')
provides=('lensfun=0.3.0')
conflicts=('lensfun')
source=("lensfun::git://git.code.sf.net/p/lensfun/code")
sha256sums=('SKIP')

pkgver() {
  cd $_gitname
  git describe --long | sed -r 's/^v//;s/([^-]*-g)/r\1/;s/-/./g'
}

build() {
    cd $_gitname
    cmake -DCMAKE_INSTALL_PREFIX=$pkgdir/usr \
          -DCMAKE_INSTALL_LIBDIR=lib \
          -DCMAKE_BUILD_TYPE=Release \
          .
    make
}

package() {
  cd $_gitname
  make INSTALL_PREFIX="$pkgdir/" install
}
