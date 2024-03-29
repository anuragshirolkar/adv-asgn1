surface
diffusedSurface
(
    float Ka=1,
          Kd=3,
          Kr=.5,
          Kt=.5,
          Kc=1,
          eta=1.5;
)
{
  normal Nn = normalize(N);
  vector In = normalize(I);

  normal v = faceforward(Nn, In);
  v = normalize(v);
  color local_illumination = Ka * ambient() + Kd * diffuse(Nn);


  Ci += Cs * 1.5 * local_illumination;
  Ci += .75 * indirectdiffuse(P, Nn, 1000);
  Ci += Kc * photonmap("caustics.cpm", P, N, "estimator", 400);
  Oi = Os;
}
