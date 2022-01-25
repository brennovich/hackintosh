clean:
	rm -rf tools/ProperTree \
		tools/gfxutil* \
		tools/MountEFI

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

.PHONY=tools/ProperTree \
	tools/gfxutil  \
	tools/MountEFI

