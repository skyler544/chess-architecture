all: images pdf

images:
	plantuml ./*.plantuml

pdf:
	magick *.png mate-mate-dependency-graph.pdf

clean:
	rm *.png *.pdf
