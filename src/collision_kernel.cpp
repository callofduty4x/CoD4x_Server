#include "collision_kernel.hpp"

extern "C"
{
    int num_user_classes;
    int colliders_initialized;
    char user_classes[0x80];
    char colliders[0x860];
} // extern "C"
