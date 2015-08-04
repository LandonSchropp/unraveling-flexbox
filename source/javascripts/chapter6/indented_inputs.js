$('input[type="checkbox"]:not([data-parent])').click(function() {
  var $indentedChildren = $('[data-parent="' + $(this).attr('id') + '"]');
  $indentedChildren.attr("disabled", !$(this).is(':checked'));
});
