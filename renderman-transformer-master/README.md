Global Illumination with Renderman
Ranveer Aggarwal (120050020)
Abhinav Gupta (120050029)

===

##Introduction
We generate a scene with a few objects and a transformer developed previously, in renderman.
Then we experiment with various Global Illumination phenomena like Color Bleeding, caustics, soft and hard shadows etc.

HTML Report: http://ranveeraggarwal.com/graphics/global-illumination-renderman

##Dependencies
Renderman Pro Server 19
python 2.\*

##How to run
Execute make by 

	make

in this directory to generate the file `display-transformer.tif`. This is the final rendered file containing the scene.

##File structure
The main code begins from trans.rib. Then we use separate files to generate the transformer (body.rib), the are lights (arealights.rib), the caustics and of course the shaders.

##Shaders
We use the following shaders in this assignment:
* shadowlight: This is a light source shader which causes local illumination at a point only when the poing is unoccluded by any other object.
* diffsurf: This is a surface shader with local illumination, indirect lighting and caustics (From a cuastic map).
* texsurf: This is a surface shader much like diffsurf, except, the illumination is used as a weight for a color obtained from a texture map
* metal: This is a surface shader which has a high specular component and high reflectivity. The shader calls the trace function to raytrace the reflection.
* transparent: This is a surface shader with very low local illumination and reflection. Most of the light is refracted and raytraced.

##Effects
The following required effects were achieved in the assignment:
* Color Bleeding: Using indirect illumination in the diffsurf and texsurf shaders.
* Area Lights and Soft Shadows: Placing multiple point lights closely.
* Texture Mapping: Using the texture function in texsurf shader.
* Caustics: Photon mapping the scene to generate a caustic map and then adding it to the illumination.
* Transparent and Metallic Surfaces: Using the transparent and metal shaders respectively.

##Credits
* Pixar!
* The RenderMan Docs
* Rohan Prinja

Note: No plagiarism in the assignment. No extra days were used for the assignment.
