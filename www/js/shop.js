function selectAll(scope)
{
    if(scope) $('#' + scope + ' input').each(function() { $(this).prop("checked", true);});
    else $('input:checkbox').each(function() { $(this).prop("checked", true);});
}

function selectReverse(scope)
{
    if(scope) $('#' + scope + ' input').each(function() { $(this).prop("checked", !$(this).prop("checked"));});
    else $('input:checkbox').each(function(){ $(this).prop("checked", !$(this).prop("checked"));});
}

