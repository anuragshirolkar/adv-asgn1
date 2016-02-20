shader=/opt/pixar/RenderManProServer-20.7/bin/shader
prman=/opt/pixar/RenderManProServer-20.7/bin/prman -progress 
all: caus.cpm trans.rib body.rib arealight.rib diffusedSurface.slo metal.slo transparentSurface.slo textureSurface.slo shadowlight.slo r2d2body.slo
	${prman} trans.rib
arealight.rib: genarealight.py
	python genarealight.py > arealight.rib
diffusedSurface.slo: diffusedSurface.sl
	${shader} diffusedSurface.sl
textureSurface.slo: textureSurface.sl
	${shader} textureSurface.sl
metal.slo: metal.sl
	${shader} metal.sl
transparentSurface.slo: transparentSurface.sl
	${shader} transparentSurface.sl
shadowlight.slo: shadowlight.sl
	${shader} shadowlight.sl
r2d2body.slo: r2d2body.sl
	${shader} r2d2body.sl
caus.cpm: caus.rib
	${prman} caus.rib
clean:
	rm *.slo arealight.rib caus.cpm display-transformer.tif
.PHONY: all clean
