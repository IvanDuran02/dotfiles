#!/bin/bash

echo "Enabling and linking PipeWire services to graphical-session.target..."

systemctl --user enable pipewire.service --now
systemctl --user enable wireplumber.service --now
systemctl --user enable pipewire-pulse.service --now

mkdir -p ~/.config/systemd/user/graphical-session.target.wants

ln -sf ../pipewire.service ~/.config/systemd/user/graphical-session.target.wants/
ln -sf ../wireplumber.service ~/.config/systemd/user/graphical-session.target.wants/
ln -sf ../pipewire-pulse.service ~/.config/systemd/user/graphical-session.target.wants/

echo "Done. Reboot or re-login to test."
