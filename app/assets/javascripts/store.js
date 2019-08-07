function decreaseItem(line_item_id) {
    console.log("EEREERE BALSAL");
    $.ajax({
        url: '/line_items/' + line_item_id,
        method: 'PUT',
        type: 'script',
        success: function(data){
            console.log(data);
        }
    })
}