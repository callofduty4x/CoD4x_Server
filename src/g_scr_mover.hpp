#pragma once
#include "scr_vm.hpp"


extern "C"
{
    void ScriptEntCmd_MoveTo(scr_entref_t entref);
    void ScriptEntCmd_MoveX(scr_entref_t entref);
    void ScriptEntCmd_MoveY(scr_entref_t entref);
    void ScriptEntCmd_MoveZ(scr_entref_t entref);
    void ScriptEntCmd_GravityMove(scr_entref_t entref);
    void ScriptEntCmd_RotateTo(scr_entref_t entref);
    void ScriptEntCmd_RotatePitch(scr_entref_t entref);
    void ScriptEntCmd_RotateYaw(scr_entref_t entref);
    void ScriptEntCmd_RotateRoll(scr_entref_t entref);
    void ScriptEntCmd_DevAddPitch(scr_entref_t entref);
    void ScriptEntCmd_DevAddYaw(scr_entref_t entref);
    void ScriptEntCmd_DevAddRoll(scr_entref_t entref);
    void ScriptEntCmd_Vibrate(scr_entref_t entref);
    void ScriptEntCmd_RotateVelocity(scr_entref_t entref);
    void ScriptEntCmd_Solid(scr_entref_t entref);
    void ScriptEntCmd_NotSolid(scr_entref_t entref);
    void ScriptEntCmd_SetCanDamage(scr_entref_t entref);
    void ScriptEntCmd_PhysicsLaunch(scr_entref_t entref);
}
