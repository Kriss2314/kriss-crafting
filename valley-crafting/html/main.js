window.addEventListener('message', function (event) {
    let item = event.data;
    if(item.status === true) {
        display(true);
    } else {
        display(false);
    }
});

function display(bool) {
    if(bool) {
        $('#container').show();
        $('#przycisk').show();
        $('#gowno').show();
        $('#bron').show();
    } else {
        $('#container').hide();
        $('#przycisk').hide();
        $('#gowno').hide();
        $('#bron').hide();
    };
};

display(false);

document.onkeyup = function (data) {
    if (data.which == 27) {
        let directory = GetParentResourceName()
        $.post('https://'+directory+'/exit', JSON.stringify({}));
        return;
    };
};

function daj(e) {
    let directory = GetParentResourceName()
    $.post('https://'+directory+'/accept', JSON.stringify({
    }))
};