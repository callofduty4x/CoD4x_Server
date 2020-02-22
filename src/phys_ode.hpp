#pragma once


extern "C"
{
    extern int g_phys_maxMsecStep[3];
    extern int g_phys_minMsecStep[3];
    extern int g_phys_msecStep[3];

    extern int physInited;
    extern char Phys_Go_f_VAR[0x14];
    extern char Phys_Stop_f_VAR[0x68];
    extern int phys_drawDebugInfo;
    extern int phys_gravityChangeWakeupRadius;
    extern int phys_drawCollisionObj;
    extern int phys_drawCollisionWorld;
    extern char physGlob[0x23cd0];
    extern int phys_contact_cfm;
    extern int phys_contact_erp;
    extern int phys_drawcontacts;
    extern int phys_jitterMaxMass;
    extern int phys_noIslands;
    extern int phys_autoDisableAngular;
    extern int phys_autoDisableLinear;
    extern int phys_autoDisableTime;
    extern int phys_bulletSpinScale;
    extern int phys_bulletUpBias;
    extern char phys_cfm[0x1c];
    extern int phys_collUseEntities;
    extern int phys_contact_cfm_ragdoll;
    extern int phys_contact_erp_ragdoll;
    extern int phys_csl;
    extern int phys_dragAngular;
    extern int phys_dragLinear;
    extern int phys_drawAwake;
    extern int phys_drawAwakeTooLong;
    extern int phys_dumpcontacts;
    extern int phys_erp;
    extern int phys_frictionScale;
    extern int phys_gravity;
    extern int phys_interBodyCollision;
    extern int phys_joint_cfm;
    extern int phys_joint_stop_cfm;
    extern int phys_joint_stop_erp;
    extern int phys_mcv;
    extern int phys_mcv_ragdoll;
    extern int phys_minImpactMomentum;
    extern int phys_narrowObjMaxLength;
    extern int phys_qsi;
    extern int phys_reorderConst;
    extern int phys_visibleTris;
} // extern "C"
