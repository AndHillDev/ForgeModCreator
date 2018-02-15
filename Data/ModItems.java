package [PackageName].init;

import [PackageName].misc.References;
import net.minecraft.client.Minecraft;
import net.minecraft.client.resources.model.ModelResourceLocation;
import net.minecraft.item.Item;

public class ModItems {

	// Itemdeklaration hier
	
	// Initialisieren von Blöcken
	public static void init() {
		
	}
	
	// Registrieren von Blöcken
	public static void register() {
		
	}
	
	// Registrieren der Renderer
	public static void registerRenderer() {
	
	}
	
	private static void registerRender(Item item) {
		Minecraft.getMinecraft().getRenderItem().getItemModelMesher().register(item, 0, new ModelResourceLocation(References.MODID+':'+item.getUnlocalizedName().substring(5), "inventory"));
	}
	
}