package [PackageName];

import [PackageName].misc.References;
import [PackageName].proxies.CommonProxy;
[BlockPackage]
[ItemPackage]
[RecipePackage]
[TabPackage]
[CreativeTab]
[GUIHandler]
[ConfigHandler]
[EventListener]
import cpw.mods.fml.common.Mod;
import cpw.mods.fml.common.Mod.EventHandler;
import cpw.mods.fml.common.Mod.Instance;
import cpw.mods.fml.common.SidedProxy;
import cpw.mods.fml.common.event.FMLInitializationEvent;
import cpw.mods.fml.common.event.FMLPostInitializationEvent;
import cpw.mods.fml.common.event.FMLPreInitializationEvent;
[NetworkRegistry]
[Configuration]
[MinecraftForge]

@Mod(modid=References.MODID, name=References.MODNAME, version=References.MODVERSION, acceptedMinecraftVersions=References.MCVERSIONS[GuiFactory])
public class [MainClass] {
	
	@Instance
	public static [MainClass] instance;
	
	@SidedProxy(clientSide=References.CLIENT_PROXY, serverSide=References.SERVER_PROXY)
	public static CommonProxy proxy;
	
[Tab]

[Config]
	
	@EventHandler
	public void preInit(FMLPreInitializationEvent event) {
[PreInit]
	}
	
	@EventHandler
	public void init(FMLInitializationEvent event) {
		proxy.init();
[Init]
	}
	
	@EventHandler
	public void postInit(FMLPostInitializationEvent event) {
		
	}
}
