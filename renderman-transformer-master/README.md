#CS775 - Advanced Graphics
Rendering of Star Wars Droid Scene Using Pixar's Renderman

Prateek Chandan (120050042)

Anurag Shirolkar (120050003)

===

HTML Report: http://anuragshirolkar.github.io/adv-asgn1/

##Dependencies
Renderman Pro Server 20
python 2.\*

##How to run
Open make file and edit variables prman and shader to the correct binaries

Execute make by 

	make


##Output Images
The images are rendered in the folder "rendered" with names scene-c0.tif , scene-c2.tif.. scene-c4.tif

##Description of Files
We use the following shaders in this assignment:
### Rib Files
* scene.rib - Main file which contains the whole scene and camera placements
* transformer.rib - Contains description of transformer
* r2d2.rib - Contains description of R2D2
* arm.rib - contains description of arm of R2D2
* cube.rib - Unit Cube used at multiple places
* envbox.rib - Rib file which contains the planes of the environment box
* feet.rib - Contains description of the feet of r2d2
* prism.rib - contains prism description
* caustics.rib - Photon map to create caustics
* arealight.rib - Collection of pointlights

### Shaders
* diffusedSurface.sl - (Surface Shader) - This contains illumination due to the local illumination , indirect illumination (used for color bleeding) and illumination due to photon mapping
* metal.sl - (Surface Shader) - This shader is used to create illumination due to mettalic surface , it is used in path tracing for multiple depth. It has only reflected component
* shadowlight.sl - (Light Shader) - it generates illumination and also see if light is reachable to create shadows
* textureSurface.sl - (Surface Shader) - Similar to diffusedSurface with little less localillumination and mainly used to map the wooden texture on the floor
* r2d2body.sl - (Surface Shader) - Similar to diffusedSurface  used to map the body of R2D2
* transparentSurface.sl -  (Surface Shader) - This is similar to metal shader but along it smaller reflection component it has high refraction component

### Textures
* wood.tex - wooden texture used on surface
* r2d2.tex - texture on body of r2d2



##Effects
* Indirect Illumination(Color bleeding) - achieved by diffused surface , mainly seen on wall and body od bots
* area light and soft shadow - collection of point lights created the soft shadows 
* textures
* Used a metallic ball and transparent ball
* used a transparent prism to get the image of bot on prism by refraction

##Credits
* Wooden texture - google images 
* r2d2 body texture - PhotoBucket.com - ttp://s228.photobucket.com/user/freezen2001/media/r2d2bodycropped.jpg.html
* The RenderMan Docs
* Ranveer Aggarwal for guide on arealights and caustics

