shader=/opt/pixar/RenderManProServer-20.6/bin/shader
prman=/opt/pixar/RenderManProServer-20.6/bin/prman -progress 
all: scene.rib arealight.rib diffusedSurface.slo metal.slo transparentSurface.slo textureSurface.slo shadowlight.slo r2d2body.slo caustics.cpm 
	${prman} scene.rib
arealight.rib: light.py
	python light.py
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
caustics.cpm: caustics.rib
	${prman} caustics.rib
clean:
	rm *.slo arealight.rib caustics.cpm rendered/*
.PHONY: all clean
