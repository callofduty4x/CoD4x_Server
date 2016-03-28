void Cvar_DisplayFlags_f();
void Cvar_SetFlags_f();

	Cmd_AddCommand ("cvarflags", Cvar_DisplayFlags_f);
	Cmd_AddCommand ("cvarsetflags", Cvar_SetFlags_f);


void Cvar_DisplayFlags_f()
{
	cvar_t	*var;

	if(Cmd_Argc() != 2)
	{
		Com_Printf("Usage: cvarflags <cvarname>\n");
		return;
	}
	var = Cvar_FindVar(Cmd_Argv(1));

	if (!var)
		return;

	Com_Printf("Flags are: %d\n", var->flags);
}


void Cvar_SetFlags_f()
{
	cvar_t	*var;
	short flags;

	if(Cmd_Argc() != 3)
	{
		Com_Printf("Usage: cvarsetflags <cvarname> <flags>\n");
		return;
	}
	var = Cvar_FindVar(Cmd_Argv(1));

	if (!var)
		return;

	flags = atoi(Cmd_Argv(2));
	var->flags = flags;
	Com_Printf("Flags updated\n");
}