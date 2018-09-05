

struct PhysPreset
{
  const char *name;
  int type;
  float mass;
  float bounce;
  float friction;
  float bulletForceScale;
  float explosiveForceScale;
  const char *sndAliasPrefix;
  float piecesSpreadFraction;
  float piecesUpwardVelocity;
  bool tempDefaultToCylinder;
  char pad[3];
};
