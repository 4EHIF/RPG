///Inventory_pickup_item(item)

var add_item = argument[0];

//Check for item in inventory slot
for (var yy =0; yy < Inventory.height; yy++)
{
    for(var xx = 0; xx < Inventory.width; xx++)
    {
        if(Inventory.box[# xx,yy] == add_item)
        {
        Inventory.count[# xx,yy]++;
        return true;
        }
    }
}
for (var yy =0; yy < Inventory.height; yy++)
{
    for(var xx = 0; xx < Inventory.width; xx++)
    {
        if(Inventory.box[# xx, yy] == item.none)
        {
        Inventory.box[# xx, yy] = add_item;
        Inventory.count[# xx, yy]++;
        return true;
        }
    }
}

