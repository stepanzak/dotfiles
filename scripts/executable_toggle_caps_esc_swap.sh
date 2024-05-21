#!/bin/bash

if [ $(
	grep -c ",caps:swapescape" ~/.config/niri/config.kdl
) -eq 1 ]; then
	sed -i s/",caps:swapescape//" ~/.config/niri/config.kdl
else
	sed -i "s/options \"grp:win_space_toggle/&,caps:swapescape/" ~/.config/niri/config.kdl
fi
