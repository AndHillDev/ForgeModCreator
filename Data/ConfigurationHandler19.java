package [PackageName].handlers;

import java.io.File;

import net.minecraftforge.fml.client.event.ConfigChangedEvent;
import net.minecraftforge.fml.common.eventhandler.SubscribeEvent;
import [PackageName].misc.References;
import net.minecraftforge.common.config.Configuration;

public class ConfigurationHandler {

	public static Configuration config;
	
	// Define your config variables
	
	public static void init(File configFile) {
		config = new Configuration(configFile);
		config.load();
		
		// initialize your config variables for creating
		
		config.save();
	}
	
	@SubscribeEvent
	public void onConfigurationChangedEvent(ConfigChangedEvent.OnConfigChangedEvent event) {
		if(event.getModID().equalsIgnoreCase(References.MODID)) {
			loadConfiguration();
		}
	}
	
	public void loadConfiguration() {
		
		// Initialize your config variables for loading (should be the same as for creating)
		
		if (config.hasChanged()) {
			config.save();
		}
	}
	
}