# Generar PDF

dependencias:
	sudo pacman -S pandoc pandoc-citeproc texlive-core
	
informe:
	pandoc informe.md metadata-informe.yml --template=informe \
	-o output/lisandro_fernandez-informe.pdf \
	-s --csl=vendor/iso690-author-date-es.csl \
	--filter=pandoc-citeproc \
	--toc 
