DRAWIO:=/Applications/draw.io.app/Contents/MacOS/draw.io
EXPORT_DIAGRAM=$(DRAWIO) -x -f png -o res

setup:
	pip3 install -r requirements.txt

export_diagrams:
	$(EXPORT_DIAGRAM) multimedia_architecture.drawio
	$(EXPORT_DIAGRAM) multimedia_architecture_adc.drawio
	$(EXPORT_DIAGRAM) multimedia_architecture_codec.drawio
	$(EXPORT_DIAGRAM) multimedia_architecture_muxing.drawio
	$(EXPORT_DIAGRAM) multimedia_architecture_streaming.drawio
	$(EXPORT_DIAGRAM) image_2d.drawio

export_slides:
	jupyter nbconvert --to slides *.ipynb