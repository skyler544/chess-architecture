all: images pdf

images:
	plantuml ./*.plantuml

pdf:
	magick *.png mate-mate-allowed-to-use-specification.pdf

clean:
	rm *.png *.pdf
