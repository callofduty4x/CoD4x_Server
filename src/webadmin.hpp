/*
 *  webadmin.h
 *  CoD4X18-Server_testing
 *
 */
#pragma once
#include "qshared.hpp"

struct ftRequest_t;
struct msg_t;
struct httpPostVals_t;

qboolean HTTPCreateWebadminMessage(ftRequest_t* request, msg_t* msg, char* sessionkey, httpPostVals_t* values);
