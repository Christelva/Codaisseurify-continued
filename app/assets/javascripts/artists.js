function createSong(title) {
  var newSong = { title: title, artist: artist, completed: false };

  $.ajax({
    type: "POST",
    url: "/artists.json",
    data: JSON.stringify({
      song: newSong
    }),
    contentType: "application/json",
    dataType: "json"
  })
  .done(function(data) {
    console.log(data);

    var checkboxId = data.id;

    var label = $('<label></label>')
      .attr('for', checkboxId)
      .html(title);

    var checkbox = $('<input type="checkbox" value="1" />')
      .attr('id', checkboxId)
      .bind('change', toggleDone);

    var tableRow = $('<tr class="artist"></td>')
      .attr('data-id', checkboxId)
      .append($('<td>').append(checkbox))
      .append($('<td>').append(label));

    $("#artistList").append(tableRow);

    updateCounters();
  })

  .fail(function(error) {
    console.log(error)
    error_message = error.responseJSON.title[0];
    showError(error_message);
  });
}

function toggleDone() {
  var checkbox = this;
  var tableRow = $(this).parent().parent();

  var artistId = tableRow.data('id');
  var isCompleted = !tableRow.hasClass("success");

  $.ajax({
    type: "PUT",
    url: "/artists/" + artistId + ".json",
    data: JSON.stringify({
      artist: { completed: isCompleted }
    }),
    contentType: "application/json",
    dataType: "json"
  })
  .done(function(data) {
    console.log(data);

    tableRow.toggleClass("success", data.completed);

    updateCounters();
  });
}

function cleanUpSongs(event) {
  event.preventDefault();

  $.each($(".success"), function(index, tableRow) {
    songId = $(tableRow).data('id');
    deleteSong(songId);
  });
}

function deleteSong(songId) {
  $.ajax({
    type: "DELETE",
    url: "/artists/" + artistId + ".json",
    contentType: "application/json",
    dataType: "json"
  })
  .done(function(data) {
    $('tr[data-id="'+artistId+'"]').remove();
    updateCounters();
  });
}
