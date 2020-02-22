#include "phys_ode.hpp"


extern "C"
{
    int g_phys_maxMsecStep[3] = { 0x43, 0x43, 0x22 };
    int g_phys_minMsecStep[3] = { 0x11, 0x11, 0x11 }; // rest are 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
    int g_phys_msecStep[3] = { 0x11, 0x11, 0x11 };


    int physInited;
    char Phys_Go_f_VAR[0x14];
    char Phys_Stop_f_VAR[0x68];
    int phys_drawDebugInfo;
    int phys_gravityChangeWakeupRadius;
    int phys_drawCollisionObj;
    int phys_drawCollisionWorld;
    char physGlob[0x23cd0];
    int phys_contact_cfm;
    int phys_contact_erp;
    int phys_drawcontacts;
    int phys_jitterMaxMass;
    int phys_noIslands;
    int phys_autoDisableAngular;
    int phys_autoDisableLinear;
    int phys_autoDisableTime;
    int phys_bulletSpinScale;
    int phys_bulletUpBias;
    char phys_cfm[0x1c];
    int phys_collUseEntities;
    int phys_contact_cfm_ragdoll;
    int phys_contact_erp_ragdoll;
    int phys_csl;
    int phys_dragAngular;
    int phys_dragLinear;
    int phys_drawAwake;
    int phys_drawAwakeTooLong;
    int phys_dumpcontacts;
    int phys_erp;
    int phys_frictionScale;
    int phys_gravity;
    int phys_interBodyCollision;
    int phys_joint_cfm;
    int phys_joint_stop_cfm;
    int phys_joint_stop_erp;
    int phys_mcv;
    int phys_mcv_ragdoll;
    int phys_minImpactMomentum;
    int phys_narrowObjMaxLength;
    int phys_qsi;
    int phys_reorderConst;
    int phys_visibleTris;
} // extern "C"
