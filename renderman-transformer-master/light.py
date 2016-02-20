minX = -0.25
maxX = 0.25
minZ = 2
maxZ = 2.5
y = 2

stepX = 0.03
stepZ = 0.03

intensity = 0.02

x = minX


count = 0

f = open("arealight.rib","w")

while x<=maxX:
	z = minZ
	while z<=maxZ:
		f.write("LightSource \"shadowlight\" "+str(count)+" \"intensity\" " +str(intensity)+ " \"lightcolor\" [1 1 1] \"from\" ["+str(x)+" "+str(y)+" "+str(z)+"]\n")		
		z = z+stepZ
		count = count+1

	x=x+stepX