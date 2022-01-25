clean:
	rm -rf tools/ProperTree

tools/ProperTree:
	git clone https://github.com/corpnewt/ProperTree tools/ProperTree
	chmod +x tools/ProperTree/ProperTree.command
	./tools/ProperTree/Scripts/buildapp-select.command
	cp -R tools/ProperTree/ProperTree.app /Applications/

.PHONY=tools/ProperTree
