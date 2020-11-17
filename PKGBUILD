# Maintainer: Alexandros Theodotou <alex at zrythm dot org>
pkgname=zrythm
pkgver=1.0.0
pkgrel=2
pkgdesc='a highly automated and intuitive digital audio workstation'
arch=('x86_64' 'i686')
url="https://www.zrythm.org"
license=('AGPL3')
depends=('gtk3' 'lilv' 'libx11' 'jack' 'libsndfile' 'libyaml' 'libsamplerate' 'alsa-lib' 'fftw'
         'suil' 'breeze-icons' 'lv2' 'rubberband' 'python-sphinx-intl')
makedepends=(
  'python' 'gettext' 'sed'
  'meson' 'ninja' 'help2man' 'python-sphinx'
  'ladspa' 'lv2' 'gtksourceview3')
optdepends=('portaudio: portaudio backend'
            'qt5-base: for embedding qt5 plugin UIs')
conflicts=('zrythm-git')
source=("https://www.zrythm.org/releases/$pkgname-$pkgver-alpha.5.0.1.tar.xz"{,.asc})
sha256sums=('089251987b3f0fdd378ac2014aa01904669fd70d89774bdc4358cc7bfc206cf1' 'SKIP')
validpgpkeys=('48132384AD3DF7D86E254B83022EAE42313D70F3')
build() {
  cd "$pkgname-$pkgver-alpha.4.0.1"
  meson build --buildtype=release --prefix=/usr \
    -Denable_tests=true -Duser_manual=true \
    -Dmanpage=true
  ninja -C build
}

check() {
  cd "$pkgname-$pkgver-alpha.4.0.1"
  ninja -C build test
}

package() {
  cd "$pkgname-$pkgver-alpha.4.0.1"
  install -vDm 644 AUTHORS CONTRIBUTING.md \
    CHANGELOG.md README.md THANKS TRANSLATORS \
    -t "${pkgdir}/usr/share/doc/${pkgname}/"
  DESTDIR="${pkgdir}/" ninja -C build install
}
