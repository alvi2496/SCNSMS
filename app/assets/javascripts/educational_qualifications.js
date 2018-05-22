$(document).on('turbolinks:load', function() {
    for(var k=1;k<5;k++){
        $("#form_table_"+k+" :input").attr("disabled", true);
        $("#form_table_"+k+' tr:last').after(
            "<tr>" +
            "<td>" +
            "<button name=\"button\" type=\"submit\" class=\"btn-danger\">" +
            "Remove" +
            "</button>" +
            "</td>" +
            "</tr>"
        );
        $(".btn-danger").attr("class", "btn btn-danger pull-left remove-form");
    }
    $('#add-row').click(function(){
        for(var i=0;i<5;i++){
            var ele = $('#form_table_'+i);
            if(ele.is(':hidden')){
                $("#form_table_"+i+" :input").attr("disabled", false);
                ele.show();
                break;
            }
        }
    });

    $('.remove-form').click(function(){
        $(this).closest ('table :input').attr("disabled", true);
        $(this).closest ('table').hide();
    });
});

