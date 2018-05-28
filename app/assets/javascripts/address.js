$(document).on('turbolinks:load', function() {
    if ($("#address_type_0").val() == 'both'){
        $("#same_address").attr('checked', true);
        $("#permanent-address-fields :input").attr("disabled", true);
    }
    $("#same_address").change(function(){
        if(this.checked){
            $("#permanent-address-fields :input").attr("disabled", true);
            $("#address_type_0").val('both');
        }
        else{
            $("#address_type_0").val('present');
            $("#permanent-address-fields :input").attr("disabled", false);
        }
    });
});

