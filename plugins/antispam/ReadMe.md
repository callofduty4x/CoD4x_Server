# Cod4X Antispam plugin
### Intelligently reduces chat spam in servers
------------------------------------------------------------------------------------------------------------
Have a better control over your server chat.
## Features include :  
- ```Prevents individual players from filling up the message box```
- ```Detects bind spamming and penalizes players by prohibiting them to chat```
- ```Customize the behaviour of the plugin simply by changing Cvars to suitable values ```
----------------------------------------------------------------------------------------------------------
|CVAR | DESCRIPTION|
|------------- | --------------------------|
__antispam_maxMessagesPerMinute__ | ```Count of maximum messages a player can send in a minute. 0 disables the chat completely. Value Range : (0 - 30)```|
|__antispam_minAdminPower__ | ```Minimum power points which disable the spam-control. 0 means enabled for everyone. Value Range : (0 - 100)```|
|__antispam_minMessageDelay__ | ```Amount of time after sending a message after which the player can chat again. 0 disables the limit``` Value Range : (0 - 60)|
|__antispam_renewedMessageDelay__ | ```Penalize players and add penalty time if player chats before minMessageDelay. Value Range : (0 - 1)```|
|__antispam_bindspamLimit__ | ```Amount of detected bind spams for which player is chatbanned for messages sent in the last 2 minutes. Value Range : (3 - 30)```|
|__antispam_chatBanDuration__ | ```The duration of a chat ban in seconds. Value Range : (0 - 3600)```|


----------------------------------------------------------------------------------------------------
## How to Install :

- Put the plugin file in the serverpath/plugins. If you dont have one, just create it.
- In config set the CVAR Values E.G ```set antispam_MaxMessagesPerMinute "4"```.
- In your config place ```loadplugin antispam```.
- *Note* If you do not specifiy cvar values in config, default values will be loaded.
- *Note* In your config place the cvar values __before__ you load the plugin. If you do not do so default values will be used instead of the ones provided.
