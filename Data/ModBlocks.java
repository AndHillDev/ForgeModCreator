package [PackageName].init;

import [PackageName].misc.References;
import net.minecraft.block.Block;
import net.minecraft.client.Minecraft;
import net.minecraft.client.resources.model.ModelResourceLocation;
import net.minecraft.item.Item;

public class ModBlocks {
	
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
	
	private static void registerRender(Block block) {
		Minecraft.getMinecraft().getRenderItem().getItemModelMesher().register(Item.getItemFromBlock(block), 0, new ModelResourceLocation(References.MODID+':'+block.getUnlocalizedName().substring(5), "inventory"));
	}
	
}