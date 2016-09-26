///Inventory_add_item(x,y,item)
var xx = argument[0];
var yy = argument[1];
var add_item = argument[2];

//Check for out of range
if(xx != median(0,xx,Inventory.width -1)) || (yy != median(0,yy,Inventory.height-1))
{
    show_debug_message("The x and y are outside of the range");
    exit;
}

//Get the item count
var item_count = Inventory.count[# xx,yy];

if(item_count == 0)
{
    //Add the item
    Inventory.box[# xx,yy]= add_item

    //Add one to the count
    Inventory.count[# xx,yy]++;

    return true;
} else if (item_count >0)
{
//Item Already there
//Is the item the same?
    if(Inventory.box[# xx,yy] == add_item) {
        Inventory.count[# xx,yy]++
    }
} else 
    show_debug_message("There is already an item there");
    return false;
{
//Our item count is less than zero
//Error
show_error("The item count is less than zero", false);
}
