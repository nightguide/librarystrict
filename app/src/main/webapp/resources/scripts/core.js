function convertFormToJSON(formSelector){
    var formData = $(formSelector).serializeArray().reduce(function(obj, item) {
        obj[item.name] = item.value;
        return obj;
    }, {});
    return formData;
}

function displayErrorsToForm(formSelector, errors){
    $(formSelector).find('.error_message').hide()
    for(var errorIndex in errors) {
        var error = errors[errorIndex]
        var displayErrorField = $(formSelector).find($('[name=' + error.field + ']')).siblings('p')
        displayErrorField.html(error.defaultMessage)
        displayErrorField.show()
    }
}