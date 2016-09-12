# Maintainer: Aaron Abbott <aabmass@gmail.com>
# Contributer: fleischie
pkgname=hyperterm
pkgver=0.7.1
pkgrel=4
epoch=
pkgdesc="A terminal emulator built with JS/HTML/CSS on electron"
arch=('any')
url="https://hyperterm.org/"
license=('MIT')
groups=()
depends=('nodejs' 'electron')
makedepends=('npm' 'python2')
checkdepends=()
optdepends=()
provides=()
conflicts=()
replaces=()
backup=()
options=()
install=
changelog=
source=(
    "https://github.com/zeit/$pkgname/archive/${pkgver}.tar.gz"
    "autohide-menu.patch"
)
noextract=()
md5sums=('f06827cbae82f13237cc20dfd0ee170d'
         'f5ca4b1eed8199186edfed94dd137dbc')
validpgpkeys=()

prepare() {
	cd "$pkgname-$pkgver"

    # this patch temporarily "fixes" https://github.com/zeit/hyperterm/issues/158
    # thanks @fleischie
    patch -p1 < ../autohide-menu.patch

    npm install
}

build() {
	cd "$pkgname-$pkgver"
    npm run pack
}

package() {
    cd "$pkgname-$pkgver"

    _appdir="/usr/lib/$pkgname"
    _libinstall="${pkgdir}${_appdir}"

    mkdir -p "$pkgdir/usr/bin" "$_libinstall"
    cp -R dist/linux/* "$_libinstall"

    # link the binary to /usr/bin
    cd $pkgdir/usr/bin
    ln -s "../lib/$pkgname/HyperTerm" HyperTerm

    # # TODO: remove included electron libs and use the system ones by symlink
    # cd "$_libinstall"
    # rm libnode.so libffmpeg.so
    # ln -s /usr/share/electron/lib{node,ffmpeg}.so .
}
