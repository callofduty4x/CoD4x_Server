
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



struct vehicle_node_t
{
  uint16_t name;
  uint16_t target;
  uint16_t script_linkname;
  uint16_t script_noteworthy;
  int16_t index;
  uint16_t pad;
  int rotated;
  float speed;
  float lookAhead;
  vec3_t origin;
  vec3_t dir;
  vec3_t angles;
  float length;
  int16_t nextIdx;
  int16_t prevIdx;
};

struct vehicle_pathpos_t
{
  int16_t nodeIdx;
  int16_t endOfPath;
  float frac;
  float speed;
  float lookAhead;
  float slide;
  vec3_t origin;
  vec3_t angles;
  vec3_t lookPos;
  vehicle_node_t switchNode[2];
};

struct vehicle_physic_t
{
  vec3_t origin;
  vec3_t prevOrigin;
  vec3_t angles;
  vec3_t prevAngles;
  vec3_t maxAngleVel;
  float yawAccel;
  float yawDecel;
  char inputAccelerationOLD;
  char inputTurning;
  uint16_t pad;
  float driverPedal;
  float driverSteer;
  int onGround;
  vec3_t colVelDelta;
  vec3_t mins;
  vec3_t maxs;
  vec3_t vel;
  vec3_t bodyVel;
  vec3_t rotVel;
  vec3_t accel;
  float maxPitchAngle;
  float maxRollAngle;
  vec4_t wheelZVel;
  vec4_t wheelZPos;
  int wheelSurfType[4];
  vec3_t worldTilt;
  vec3_t worldTiltVel;
};


enum VehicleMoveState
{
  VEH_MOVESTATE_STOP = 0x0,
  VEH_MOVESTATE_MOVE = 0x1,
  VEH_MOVESTATE_HOVER = 0x2,
};

enum VehicleTurretState
{
  VEH_TURRET_STOPPED = 0x0,
  VEH_TURRET_STOPPING = 0x1,
  VEH_TURRET_MOVING = 0x2,
};

struct VehicleTurret
{
  int fireTime;
  int fireBarrel;
  float barrelOffset;
  int barrelBlocked;
  VehicleTurretState turretState;
};


struct VehicleJitter
{
  int jitterPeriodMin;
  int jitterPeriodMax;
  int jitterEndTime;
  vec3_t jitterOffsetRange;
  vec3_t jitterDeltaAccel;
  vec3_t jitterAccel;
  vec3_t jitterPos;
};

struct VehicleHover
{
  float hoverRadius;
  float hoverSpeed;
  float hoverAccel;
  vec3_t hoverGoalPos;
  int useHoverAccelForAngles;
};


struct VehicleRideSlot_t
{
  unsigned int tagName;
  int boneIdx;
  int entNum;
};

struct VehicleTags
{
  VehicleRideSlot_t riderSlots[3];
  int detach;
  int popout;
  int body;
  int turret;
  int turret_base;
  int barrel;
  int flash[5];
  int wheel[4];
};

struct scr_vehicle_s
{
  vehicle_pathpos_t pathPos;
  vehicle_physic_t phys;
  int entNum;
  int16_t infoIdx;
  uint16_t pad;
  int flags;
  int team;
  VehicleMoveState moveState;
  int16_t waitNode;
  uint16_t pad2;
  float waitSpeed;
  VehicleTurret turret;
  VehicleJitter jitter;
  VehicleHover hover;
  int drawOnCompass;
  uint16_t lookAtText0;
  uint16_t lookAtText1;
  int manualMode;
  float manualSpeed;
  float manualAccel;
  float manualDecel;
  float manualTime;
  float speed;
  float maxDragSpeed;
  float turningAbility;
  int hasTarget;
  int hasTargetYaw;
  int hasGoalYaw;
  int stopAtGoal;
  int stopping;
  int targetEnt;
  int lookAtEnt;
  vec3_t targetOrigin;
  vec3_t targetOffset;
  float targetYaw;
  vec3_t goalPosition;
  float goalYaw;
  float prevGoalYaw;
  float yawOverShoot;
  int yawSlowDown;
  float nearGoalNotifyDist;
  vec2_t joltDir;
  float joltTime;
  float joltWave;
  float joltSpeed;
  float joltDecel;
  int playEngineSound;
  int idleSndEnt;
  int engineSndEnt;
  float idleSndLerp;
  float engineSndLerp;
  VehicleTags boneIndex;
  int turretHitNum;
  float forcedMaterialSpeed;
};

extern struct vehicle_info_t s_vehicleInfos[32];
