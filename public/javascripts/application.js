function mark_for_destroy_id(element, className) {
        $(element).next('.should_destroy').value = 1;
        $(element).next('.should_destroy').up("." + className).hide();
}
