$(function () {
   
});


function OnSuccess(response) {
    toastr.success("Enregistrement réussi");
}
function OnFailure(response) {
    toastr.error("Une erreur est survenue");
}

$(document).ajaxStart(function (event, xhr, settings) {
   //Loader show

}).ajaxComplete(function (event, xhr, settings) {
   //Loader hide
});