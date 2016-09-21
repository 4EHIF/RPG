///inventory_remove_item(x,y);
var xx = argument[0];
var yy = argument[1];

//Check for out of range
if(xx != median(0,xx,Inventory.width -1)) || (yy != median(0,yy,Inventory.height-1))
{
    show_debug_message("The x and y are outside of the range");
    exit;
}

//Get the item count
var item_count = Inventory.count[# xx,yy];

//Make sure we have items
if(item_count > 0)
{
    //Take one from the item count
    Inventory.count[# xx,yy]--;
    
    //Get acces to remove item
    var remove_item = Inventory.box[# xx,yy];
    
    //check for last item
    if(item_count == 1) 
    {
        //set item box to empty
        Inventory.box[# xx,yy] = item.none;
    }
    
    //return item removed
    return remove_item;
    
}  else if(item_count == 0)
{
        return item.none;
        
} else {
//Error
show_error("The item count is less than zero",false);
}
