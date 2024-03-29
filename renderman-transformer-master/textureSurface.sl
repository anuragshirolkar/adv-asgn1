surface
textureSurface
(
    float Ka=1,
          Kd=3,
          Kr=.5,
          Kt=.5,
          Kc=1,
          eta=1.5;
    string tex="floor.tex";
)
{
  normal Nn = normalize(N);
  vector In = normalize(I);

  normal v = faceforward(Nn, In);
  v = normalize(v);
  color local_illumination = Ka * ambient() + Kd * diffuse(Nn);


  Ci += Cs * 0.75 * local_illumination;
  Ci += .75 * indirectdiffuse(P, Nn, 1000);
  Ci += Kc * photonmap("caustics.cpm", P, N, "estimator", 400);
  color t = texture(tex);
  float r = Ci[0] * t[0];
  float g = Ci[1] * t[1];
  float b = Ci[2] * t[2];
  Ci = (r,g,b);
  Oi = Os;
}
