// contents flags are seperate bits
// a given brush can contribute multiple content bits
// multiple brushes can be in a single leaf

// these definitions also need to be in q_shared.h!

// lower bits are stronger, and will eat weaker brushes completely
#define PLAYER_SOLIDMASK	    0x00600000

#define CONTENTS_SOLID          1       // an eye is never valid in a solid

#define CONTENTS_NONCOLLIDING   4           //Never used
#define CONTENTS_LAVA           8         //Never used. So it can be assumed to be used as dummy

#define CONTENTS_WATER          0x20
#define CONTENTS_CANSHOTCLIP    0x40
#define CONTENTS_MISSILECLIP    0x80
#define CONTENTS_VEHICLECLIP	0x200
#define CONTENTS_ITEMCLIP       0x400
#define CONTENTS_SKY            0x800
#define CONTENTS_AI_NOSIGHT     0x1000  // AI cannot see through this
#define CONTENTS_CLIPSHOT       0x2000  // stops bullets
#define CONTENTS_MOVER          0x4000  // Could be wrong
#define CONTENTS_PLAYERCLIP     0x10000
#define CONTENTS_MONSTERCLIP    0x20000

//bot specific contents types - they are not used in CoD4 maps
#define CONTENTS_TELEPORTER     0x40000
#define CONTENTS_JUMPPAD        0x80000
#define CONTENTS_CLUSTERPORTAL  0x100000
#define CONTENTS_DONOTENTER     0x200000   //Used by player content
#define CONTENTS_DONOTENTER_LARGE 0x400000   //Used by player content


#define CONTENTS_MANTLE         0x1000000
#define CONTENTS_DETAIL         0x8000000   // brushes not used for the bsp - don't include in structural bsp
#define CONTENTS_STRUCTURAL     0x10000000  // brushes used for the bsp - force into structural bsp even if trnas
#define CONTENTS_TRANSPARENT    0x20000000  //Cod2 unverified
#define CONTENTS_NODROP         0x80000000


#define CONTENTS_TRIGGER        0x40000000

#define CONTENTS_BODY           0x2000000   // should never be on a brush, only in game


/* Probably not. Just here so botlib compiles */

#define CONTENTS_SLIME          0x10
#define CONTENTS_FOG            0x40


#define SURF_NODAMAGE           0x1     // never give falling damage
#define SURF_SLICK              0x2     // effects game physics
#define SURF_SKY                0x4     // lighting from environment map
#define SURF_LADDER             0x8
#define SURF_NOIMPACT           0x10    // don't make missile explosions
#define SURF_NOMARKS            0x20    // don't leave missile marks
#define SURF_NODRAW             0x80    // don't generate a drawsurface (or a lightmap)
#define SURF_NOPENETRATE        0x100
#define SURF_NOLIGHTMAP         0x400   // surface doesn't need a lightmap
#define SURF_NOSTEPS            0x2000  // no footstep sounds
#define SURF_NONSOLID           0x4000  // don't collide against curves with this set
#define SURF_NODLIGHT           0x20000 // don't dlight even if solid (solid lava, skies)
#define SURF_NOCASTSHADOW       0x40000
#define SURF_MANTLEON           0x2000000
#define SURF_MANTLEOVER         0x4000000
#define SURF_PORTAL             0x80000000


#define SURF_BARK               0x100000
#define SURF_BRICK              0x200000
#define SURF_CARPET             0x300000
#define SURF_CLOTH              0x400000
#define SURF_CONCRETE           0x500000
#define SURF_DIRT               0x600000
#define SURF_FLESH              0x700000
#define SURF_FOLIAGE            0x800000
#define SURF_GLASS              0x900000
#define SURF_OPAQUEGLASS        SURF_GLASS
#define SURF_GRASS              0xa00000
#define SURF_GRAVEL             0xb00000
#define SURF_ICE                0xc00000
#define SURF_METAL              0xd00000
#define SURF_MUD                0xe00000
#define SURF_PAPER              0xf00000
#define SURF_PLASTER            0x1000000
#define SURF_ROCK               0x1100000
#define SURF_SAND               0x1200000
#define SURF_SNOW               0x1300000
#define SURF_WATER              0x1400000
#define SURF_WOOD               0x1500000
#define SURF_ASPHALT            0x1600000
#define SURF_CERAMIC            0x1700000
#define SURF_PLASTIC            0x1800000
#define SURF_RUBBER             0x1900000
#define SURF_CUSHION            0x1a00000
#define SURF_FRUIT              0x1b00000
#define SURF_PAINTEDMETAL       0x1c00000

#define TOOL_ORIGIN             0x4
#define TOOL_PHYSICSGEOM        0x400
#define TOOL_LIGHTPORTAL        0x2000


/*

struct infoParm_t
{
  char *name;
  int clearSolid;
  int surfaceFlags;
  int contents;
  int toolFlags;
};

struct infoParm_t infoParms[59] =
{
  { "bark", 0, SURF_BARK, 0, 0 },
  { "brick", 0, SURF_BRICK, 0, 0 },
  { "carpet", 0, SURF_CARPET, 0, 0 },
  { "cloth", 0, SURF_CLOTH, 0, 0 },
  { "concrete", 0, SURF_CONCRETE, 0, 0 },
  { "dirt", 0, SURF_DIRT, 0, 0 },
  { "flesh", 0, SURF_FLESH, 0, 0 },
  { "foliage", 1, SURF_FOLIAGE, 2, 0 },
  { "glass", 1, SURF_GLASS, 16, 0 },
  { "opaqueglass", 0, SURF_OPAQUEGLASS, 0, 0 },
  { "grass", 0, SURF_GRASS, 0, 0 },
  { "gravel", 0, SURF_GRAVEL, 0, 0 },
  { "ice", 0, SURF_ICE, 0, 0 },
  { "metal", 0, SURF_METAL, 0, 0 },
  { "mud", 0, SURF_MUD, 0, 0 },
  { "paper", 0, SURF_PAPER, 0, 0 },
  { "plaster", 0, SURF_PLASTER, 0, 0 },
  { "rock", 0, SURF_ROCK, 0, 0 },
  { "sand", 0, SURF_SAND, 0, 0 },
  { "snow", 0, SURF_SNOW, 0, 0 },
  { "water", 1, SURF_WATER, CONTENTS_WATER, 0 },
  { "wood", 0, SURF_WOOD, 0, 0 },
  { "asphalt", 0, SURF_ASPHALT, 0, 0 },
  { "ceramic", 0, SURF_CERAMIC, 0, 0 },
  { "plastic", 0, SURF_PLASTIC, 0, 0 },
  { "rubber", 0, SURF_RUBBER, 0, 0 },
  { "cushion", 0, SURF_CUSHION, 0, 0 },
  { "fruit", 0, SURF_FRUIT, 0, 0 },
  { "paintedmetal", 0, SURF_PAINTEDMETAL, 0, 0 },


  { "clipmissile", 1, 0, CONTENTS_MISSILECLIP, 0 },
  { "ai_nosight", 1, 0, CONTENTS_AI_NOSIGHT, 0 },
  { "clipshot", 1, 0, CONTENTS_CLIPSHOT, 0 },
  { "playerclip", 1, 0, CONTENTS_PLAYERCLIP, 0 },
  { "monsterclip", 1, 0, CONTENTS_MONSTERCLIP, 0 },
  { "vehicleclip", 1, 0, CONTENTS_VEHICLECLIP, 0 },
  { "itemclip", 1, 0, CONTENTS_ITEMCLIP, 0 },
  { "nodrop", 1, 0, CONTENTS_NODROP, 0 },

  { "portal", 1, SURF_PORTAL, 0, 0 },
  { "nonsolid", 1, SURF_NONSOLID, 0, 0 },
  { "detail", 0, 0, CONTENTS_DETAIL, 0 },
  { "structural", 0, 0, CONTENTS_STRUCTURAL, 0 },
  { "canshootclip", 0, 0, CONTENTS_CANSHOTCLIP, 0 },
  { "origin", 1, 0, 0, TOOL_ORIGIN },
  { "sky", 0, SURF_SKY, CONTENTS_SKY, 0 },
  { "nocastshadow", 0, SURF_NOCASTSHADOW, 0, 0 },
  { "physicsGeom", 0, 0, 0, TOOL_PHYSICSGEOM },
  { "lightPortal", 0, 0, 0, TOOL_LIGHTPORTAL },
  { "slick", 0, SURF_SLICK, 0, 0 },
  { "noimpact", 0, SURF_NOIMPACT, 0, 0 },
  { "nomarks", 0, SURF_NOMARKS, 0, 0 },
  { "nopenetrate", 0, SURF_NOPENETRATE, 0, 0 },
  { "ladder", 0, SURF_LADDER, 0, 0 },
  { "nodamage", 0, SURF_NODAMAGE, 0, 0 },
  { "mantleOn", 0, SURF_MANTLEON, CONTENTS_MANTLE, 0 },
  { "mantleOver", 0, SURF_MANTLEOVER, CONTENTS_MANTLE, 0 },
  { "nosteps", 0, SURF_NOSTEPS, 0, 0 },
  { "nodraw", 0, SURF_NODRAW, 0, 0 },
  { "nolightmap", 0, SURF_NOLIGHTMAP, 0, 0 },
  { "nodlight", 0, SURF_NODLIGHT, 0, 0 }
};
*/
