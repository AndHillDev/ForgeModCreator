package [PackageName].misc;

import net.minecraft.creativetab.CreativeTabs;
import net.minecraft.init.Items;
import net.minecraft.item.ItemStack;

public class Tab extends CreativeTabs {

	public Tab(int id, String name) {
		super(id, name);
	}

	@Override
	public ItemStack getTabIconItem() {
		return new ItemStack(Items.DIAMOND);		
	}

}
