$(document).on('turbolinks:load', function() {
    $("#same_address").change(function(){
        if(this.checked){
            $("#permanent-address-fields :input").attr("disabled", true);
            $("#addresses__address_type").val('both');
        }
        else{
            $("#addresses__address_type").val('present');
            $("#permanent-address-fields :input").attr("disabled", false);
        }
    });
});

