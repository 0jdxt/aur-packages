# Maintainer: éclairevoyant
# Contributor: Balló György <ballogyor+arch at gmail dot com>

_gitname=FOSStriangulator
pkgname=fosstriangulator
pkgver=2.0.0
pkgrel=2
pkgdesc='Tool for making triangulated illustrations out of photos'
arch=('any')
url="https://github.com/FOSStriangulator/$_gitname"
license=('CCPL:by-sa-4.0' 'GPL2' 'LGPL2.1' 'MIT')
depends=('hicolor-icon-theme' 'java-runtime')
_jarname='org.enjoyingfoss.FOSStriangulator'
source=("$url/releases/download/v$pkgver/${_gitname}_jar.zip"
        "$pkgname.sh"
        "$pkgname.LICENSE::$url/raw/v$pkgver/LICENSE.md"
        "$url/raw/v$pkgver/meta/linux/$_jarname.desktop"
        "$url/raw/v$pkgver/meta/linux/$_jarname.metainfo.xml"
        "$url/raw/v$pkgver/meta/linux/$_jarname.svg"
        "$url/raw/v$pkgver/meta/linux/$_jarname-symbolic.svg")
b2sums=('22a94cda5610fb336c61459f472e576f28a8e9b2610a4dee2d1199eb91899a25ace0b794eaba3bc53b7785c7062e2154a6357a7e7027611f4a82763885956bad'
        '5cabda66d2fca945f47bf4433323e3ffb333190075dbbdb6ef94d10922fa069c8b52bfc9a10756c157714c846e8af3259e07ea246e6d06c39d77158f2ac37f9d'
        'f0df6bc5f1c1b8d1a0e9c54dab70836c95c17c49a234f6df5395fcf8f86cc25d3033deace3a4eb93a4b4a8fe9373494478e3b6f3caf65dc7bdd963b6514b2db2'
        '18abafef10bb3b4feb098375e2079298158eb58aaa4923ee2f46c91b43df68810addeb254c53dba1c9f0875a1812466044e79aebaff9614812ba1be6306383a8'
        '55cddb0b96db19ee5db1df0e59c0b98f15a2484bf32f19f04449dd8d0e9f3f8bed2ae38d07b0f9fdb9ef59a0c44b57fb7c8a5d8e7dd531d513210f97d4010362'
        '8b7aff869ff8d6b22fe804fefe05cf331f3b3e065510bb4ffe1b637d474a4b3a0aa4f7b2fa2ab470331bc9ab60a671b46a0041dce34cb4e5c2fbacda74598417'
        '21ed85dabcb785d0b181ad471c1fd5f8c77ac375466ce975119edb55f2db61b80ce8f765d5c01e2de6ec0796588106b9174180b1caeb2f38a2cda3130856600a')

package() {
	install -Dm755 $pkgname.sh "$pkgdir/usr/bin/$_gitname"
	install -Dm644 $_gitname.jar -t "$pkgdir/usr/share/java/$pkgname/"
	install -Dm644 assets/* -t "$pkgdir/usr/share/java/$pkgname/assets/"
	install -Dm644 $_jarname.desktop -t "$pkgdir/usr/share/applications/"
	install -Dm644 $_jarname.metainfo.xml -t "$pkgdir/usr/share/metainfo/"
	install -Dm644 $_jarname.svg -t "$pkgdir/usr/share/icons/hicolor/scalable/apps/"
	install -Dm644 $_jarname-symbolic.svg -t "$pkgdir/usr/share/icons/hicolor/symbolic/apps/"
	install -Dm644 $pkgname.LICENSE "$pkgdir/usr/share/licenses/$pkgname/LICENSE"
}
