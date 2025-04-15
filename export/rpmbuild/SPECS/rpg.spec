Name:           rpg
Version:        1.0
Release:        1%{?dist}
Summary:        Your RPG Game

License:        MIT
URL:            http://example.com
Source0:        %{name}-%{version}.tar.gz

BuildArch:      x86_64
Requires:       vulkan-loader mesa-libGLU libXcursor libXinerama libXrandr libXi alsa-lib pulseaudio-libs

# Disable all debug processing
%global _enable_debug_package 0
%global debug_package %{nil}
%global __os_install_post /usr/lib/rpm/brp-compress %{nil}
%global __strip /bin/true
%define _build_id_links none

# Skip all rpm checks
%global __requires_exclude_from ^/usr/share/rpg/.*$
%global __provides_exclude_from ^/usr/share/rpg/.*$

%description
Your RPG game created with Godot Engine.

%prep
%setup -q

%build
# Nothing to build

%install
mkdir -p %{buildroot}/usr/bin
mkdir -p %{buildroot}/usr/share/applications
mkdir -p %{buildroot}/usr/share/%{name}

# Copy all files
cp -r * %{buildroot}/usr/share/%{name}/

# Create desktop file
cat > %{buildroot}/usr/share/applications/%{name}.desktop << EOF2
[Desktop Entry]
Type=Application
Name=Your RPG Game
Comment=A game created with Godot Engine
Exec=/usr/share/%{name}/RPG.x86_64
Icon=/usr/share/%{name}/icon.png
Categories=Game;
EOF2

# Create symlink
ln -s /usr/share/%{name}/RPG.x86_64 %{buildroot}/usr/bin/%{name}

%files
%{_bindir}/%{name}
%{_datadir}/applications/%{name}.desktop
%{_datadir}/%{name}

%changelog
* Sun Mar 02 2025 Your Name <your.email@example.com> - 1.0-1
- Initial package
