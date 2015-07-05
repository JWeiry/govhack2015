/**
 * Created by jweir on 03/07/2015.
 */
$(document).ready(function(){
    // Loaded from patents.js directly
    // Normally we would ajax call the data
    setPatents(patentData);
/*
    $.getJSON( "/assets/js/patents.json", function( data ) {
            d = JSON.parse(data)
            setPatents(d);
        });
    .fail(function( jqxhr, textStatus, error ) {
        var err = textStatus + ", " + error;
        console.log( "Request Failed: " + err );
    })
*/
    $("#query").on('keypress', function(e){
        if (e.keyCode == 13) {
            e.preventDefault();
            $("#search").click();
        }
    });
    $("#search").click(function(){
        var doma = $("#query").val();
        $.ajax({
            type: 'POST',
            url: '/search',
            data: {"0": doma},
            dataType: 'json',
            success: function (data) {
                setResult(data);
            },
            fail: function (data) {
                console.log('api call failed');
                console.log(data);
            }
        });
    });
    $(".instructions.one").typed({strings: ["Have you ever wanted to find out who owns what patent?"],typeSpeed: 0});
    $(".instructions.two").typed({strings: ["^4000Or even wanted to know who invented the Hill's Hoist?"],typeSpeed: 0});
    $(".instructions.three").typed({strings: ["^8000Enter your search term below and start investigating!"],typeSpeed: 0});

    setTimeout(function(){
        var query = $("#query");
        if( query.val() == "" ){
            query.typed({
                strings: ["Commonwealth Bank"],
                typeSpeed: 0
            });
        }
    }, 14000);
});
$("#result table.cats").hide();
var oTable = $("#result table.cats");
var prefill = function( query ){
    $("#query").val(query);
}

var setPatents = function(data) {
    var examples = $("#examples");
    var i = 0;
//    var arr = array_shuffle(data);
    $.each(data, function(){
console.log(this);
        if( this.patentno < 1990000000 ){ return true; }
//        if( i >= 6 ){ return false; }
        examples.append(
            '<div class="col-xs-12 col-sm-4">' +
                '<button class="btn" onclick="prefill('+this.patentno+')">' +
                this.title +
                '</button>' +
            '<div>'
        );
        i++;
    });

}
var setResult = function(data) {
    oTable.hide()
    if( $.fn.DataTable.isDataTable(oTable) ){
        oTable.fnClearTable()
    }
    if( ! $.fn.DataTable.isDataTable(oTable) ){
        oTable.dataTable({
            "oLanguage": { "sSearch": "Filter:" }
        });
    }
    oTable.show('fast');
    $.each(data, function(){
        oTable.fnAddData([
            '<a target="_blank" href="http://pericles.ipaustralia.gov.au/ols/auspat/applicationDetails.do?applicationNo='+this.australian_appl_no+'">'+this.australian_appl_no+'</a>',
            this.abn,
            this.source,
            this.name
        ]);
    });
}

var array_shuffle = function(array) {
  var currentIndex = array.length, temporaryValue, randomIndex ;

  // While there remain elements to shuffle...
  while (0 !== currentIndex) {

    // Pick a remaining element...
    randomIndex = Math.floor(Math.random() * currentIndex);
    currentIndex -= 1;

    // And swap it with the current element.
    temporaryValue = array[currentIndex];
    array[currentIndex] = array[randomIndex];
    array[randomIndex] = temporaryValue;
  }

  return array;
}
