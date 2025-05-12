#pragma semicolon 1
#include <sourcemod>

public Plugin myinfo = 
{
    name = "Redirect Players Server",
    author = "Paralhama",
    description = "Move todos para outro servidor exatamente como especificado",
    version = "1.1",
    url = ""
};

public void OnPluginStart()
{
    RegAdminCmd("sm_server", Command_Server, ADMFLAG_GENERIC, "Move todos para IP:PORTA");
}

public Action Command_Server(int client, int args)
{
    if(args < 1) return Plugin_Handled;
    
    char serverInfo[64];
    GetCmdArgString(serverInfo, sizeof(serverInfo));
    
    // Remove quaisquer espaços extras
    TrimString(serverInfo);
    
    for(int i = 1; i <= MaxClients; i++)
    {
        if(IsClientInGame(i) && !IsFakeClient(i))
        {
            ClientCommand(i, "connect %s", serverInfo);
        }
    }
    
    return Plugin_Handled;
}