$(document).ready(function() {
  
  $('[data-temporary-image-chooser]').on('change', function(event) {
    image = URL.createObjectURL(event.target.files[0]);
    $('#image_preview').attr('src', image)
  });

  $('[data-image_preview__choose_image]').on('click', function() {
    $('[data-temporary-image-chooser]').trigger('click');
  });

  $('.masonry_grid').masonry({
    itemSelector: '.masonry_grid__item',
  });

});
