function convertFormToJSON(formSelector){
    var formData = $(formSelector).serializeArray().reduce(function(obj, item) {
        obj[item.name] = item.value;
        return obj;
    }, {});
    return formData;
}