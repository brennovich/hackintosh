clean:
	rm -rf tools/ProperTree \
		tools/gfxutil* \
		tools/MountEFI \
		tools/USBMap \
		tools/GenSMBIOS

tools/ProperTree:
	git clone https://github.com/corpnewt/ProperTree tools/ProperTree
	chmod +x tools/ProperTree/ProperTree.command
	./tools/ProperTree/Scripts/buildapp-select.command
	cp -R tools/ProperTree/ProperTree.app /Applications/

tools/gfxutil:
	curl -Lo tools/gfxutil.zip 'https://github.com/acidanthera/gfxutil/releases/download/1.82b/gfxutil-1.81b-RELEASE.zip'
	cd tools/ && unzip gfxutil.zip gfxutil

tools/MountEFI:
	git clone https://github.com/corpnewt/MountEFI tools/MountEFI
	cd tools/MountEFI && chmod +x MountEFI.command

tools/USBMap:
	git clone https://github.com/corpnewt/USBMap tools/USBMap
	cd tools/USBMap && chmod +x USBMap.command

tools/GenSMBIOS:
	git clone https://github.com/corpnewt/GenSMBIOS tools/GenSMBIOS
	cd tools/GenSMBIOS && chmod +x GenSMBIOS.command

tools/CPUFriendFriend:
	git clone https://github.com/corpnewt/CPUFriendFriend tools/CPUFriendFriend
	cd tools/CPUFriendFriend && chmod +x CPUFriendFriend.command

configure/fonts:
	defaults -currentHost write -globalDomain AppleFontSmoothing -int 3

install/colorprofile: ./Assets/T460s_FHD_N140HCE_EAA.icm
	cp ./$< ~/Library/ColorSync/Profiles/$$(basename $<)

.PHONY=tools/ProperTree \
	tools/gfxutil  \
	tools/MountEFI \
	tools/USBMap \
	tools/GenSMBIOS

