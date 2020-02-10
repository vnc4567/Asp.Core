$(function () {
   
});


function OnSuccess(response) {
    toastr.success("Enregistrement réussi");
}
function OnFailure(event, xhr, settings) {
    toastr.error(event.responseText);
}

$(document).ajaxStart(function (event, xhr, settings) {
   //Loader show

}).ajaxComplete(function (event, xhr, settings) {
   //Loader hide
});