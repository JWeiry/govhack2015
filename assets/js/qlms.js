/**
 * Created by jweir on 20/07/2014.
 */

$(document).ready(function(){
    $("#shorten").click(function(){
        var doma = $("#url").val();
        $.ajax({
            type: 'POST',
            url: '/shorten',
            data: {"0": doma},
            success: function (data) {
                console.log(data);
                obj = $.parseJSON(data);
                console.log(obj);
                setResult(obj);
            },
            fail: function (data) {
                console.log('api call failed');
                console.log(data);
            }
        });
    });
});
var setResult = function(data) {
    $("#result .short").text("http://ql.ms/"+data.url);
}