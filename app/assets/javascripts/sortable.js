$( document ).ready(function() {
    console.log( "ready!" );
    $( function() {
      $( ".sortable" ).sortable();
      $( ".sortable" ).disableSelection();
    } );

    // $(function() {
    //   $( ".sortable" ).sortable({
    //       revert: true
    //   });
    //   $( ".draggable" ).draggable({
    //       connectToSortable: ".sortable",
    //       // helper: "clone",
    //       revert: true
    //   });
    //   $( "ul, li" ).disableSelection();
    // });

});

