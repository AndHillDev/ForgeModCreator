package [PackageName].handlers;

import [PackageName].[MainClass];
import net.minecraft.entity.player.EntityPlayer;
import net.minecraft.world.World;
import net.minecraftforge.fml.common.network.IGuiHandler;
import net.minecraftforge.fml.common.network.NetworkRegistry;

public class GuiHandler implements IGuiHandler {
	
	public GuiHandler() {
		NetworkRegistry.INSTANCE.registerGuiHandler([MainClass].instance, this);
	}

	@Override
	public Object getServerGuiElement(int ID, EntityPlayer player, World world, int x, int y, int z) {
		return null;
	}

	@Override
	public Object getClientGuiElement(int ID, EntityPlayer player, World world, int x, int y, int z) {
		return null;
	}

}
