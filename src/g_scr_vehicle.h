
struct vehicle_info_t
{
  char name[64];
  uint16_t type;
  uint16_t pad2;
  int steerWheels;
  int texScroll;
  int quadBarrel;
  int bulletDamage;
  int armorPiercingDamage;
  int grenadeDamage;
  int projectileDamage;
  int projectileSplashDamage;
  int heavyExplosiveDamage;
  float texScrollScale;
  float maxSpeed;
  float accel;
  float rotRate;
  float rotAccel;
  float maxBodyPitch;
  float maxBodyRoll;
  float collisionDamage;
  float collisionSpeed;
  float suspensionTravel;
  char turretWeapon[64];
  float turretHorizSpanLeft;
  float turretHorizSpanRight;
  float turretVertSpanUp;
  float turretVertSpanDown;
  float turretRotRate;
  char sndNames[6][64];
  char sndIndices[6];
  short pad;
  float engineSndSpeed;
};


extern struct vehicle_info_t s_vehicleInfos[32];

