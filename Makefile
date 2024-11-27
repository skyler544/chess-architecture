all: images pdf

images:
	plantuml ./*.plantuml

pdf:
	magick *.png result.pdf

clean:
	rm *.png *.pdf
