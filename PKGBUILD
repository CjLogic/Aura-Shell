pkgname=aura-shell
pkgdesc='Aura Shell - QuickShell-based desktop shell for Aura'
pkgver=1.0
pkgrel=1
arch=('x86_64')
url='https://github.com/CjLogic/Aura-Shell'
license=('GPL-3.0-only')
depends=('quickshell-git' 'aura-cli' 'ddcutil' 'brightnessctl' 'app2unit' 'libcava' 'networkmanager' 'lm-sensors' 'fish' 'aubio' 'libpipewire' 'glibc' 'qt6-declarative' 'gcc-libs' 'material-symbols' 'caskaydia-cove-nerd' 'swappy' 'libqalculate' 'bash' 'qt6-base' 'qt6-declarative')

prepare() {
  # Copy local files to srcdir (only if not already there)
  if [ "$BUILDDIR" != "$srcdir" ]; then
    # Preserve full layout, hidden files, symlinks and permissions
    cp -a "$BUILDDIR/." "$srcdir/" 2>/dev/null || true
  fi
}

package() {
  # Install all files directly to usr/share/aura-shell
  install -dm755 "$pkgdir/usr/share/aura-shell"
  cp -a "$srcdir/." "$pkgdir/usr/share/aura-shell/"
}
