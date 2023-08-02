#include <sourcemod>
#pragma semicolon 1
public void OnMapStart()
{
	char mapismi[128];
	GetCurrentMap(mapismi, sizeof(mapismi));
	if (StrContains(mapismi, "aim_", false))
	{
		SetFailState("[AİM] aim haritalarinda model0 calismaktadir");
	}
}
public void OnPluginStart()
{
HookEvent("round_start", OnRoundStart, EventHookMode_PostNoCopy);

}
public OnRoundStart(Handle:event, const String:name[], bool:dontBroadcast)
{
		PrintToChatAll("[SM] \x10 Model0 komudu kullanıldı.");
		ServerCommand("sm_model0");
}


