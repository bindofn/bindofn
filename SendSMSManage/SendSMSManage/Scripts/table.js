var highlightcolor = '#c1ebff';
var clickcolor = '#51b2f6';
var cs;
var source;
function changeto() {
    source = event.srcElement;
    if (source.tagName == "TR" || source.tagName == "TABLE" || source.tagName == "TH")
        return;
    while (source.tagName != "TD")
        source = source.parentElement;
    source = source.parentElement;
    cs = source.children;
    if (cs[1].style.backgroundColor != highlightcolor && source.id != "nc" && cs[1].style.backgroundColor != clickcolor)
        for (i = 0; i < cs.length; i++) {
            cs[i].style.backgroundColor = highlightcolor;
        }
}

function changeback() {
    if (event.fromElement.contains(event.toElement) || source.contains(event.toElement) || source.id == "nc")
        return
    if (cs != undefined && event.toElement != source && cs[1].style.backgroundColor != clickcolor)
        for (i = 0; i < cs.length; i++) {
            cs[i].style.backgroundColor = "";
        }
}
function IsNumber(value) {
    if (!/^[0-9]+$/.test(value)) {
        alert("请输入数字");
        return false;
    }
    else {
        return true;
    }
}
function message() {
    $("<div class=\"datagrid-mask\"></div>").css({ display: "block", width: "100%", height: $(window).height() }).appendTo("#UpdatePanel1");
    $("<div class=\"datagrid-mask-msg\"></div>").html("正在查询，请稍后...").appendTo("#UpdatePanel1").css({ display: "block", left: ($("#UpdatePanel1").width() - 164) / 2, top: $("#UpdatePanel1").height() == 0 ? 85 : ($("#UpdatePanel1").height() + 138) / 2 });
}
function isNum() 
{
    if (IsNumber($('.txtpage').val())) {
        message(); return true;
    }
    else {
        return false; 
    }
}