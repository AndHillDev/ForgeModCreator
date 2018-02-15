package [PackageName].misc;

import net.minecraft.creativetab.CreativeTabs;
import net.minecraft.init.Items;
import net.minecraft.item.Item;

public class Tab extends CreativeTabs {

	public Tab(int id, String name) {
		super(id, name);
	}

	@Override
	public Item getTabIconItem() {
		return Items.diamond;
	}

}
