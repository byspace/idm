$(function(){

    $('.menutree').tree({
        onClick: function(node){
            ajaxSubmit(getUrl("/console/menu/readMenuItem/" + node.id), {}, function(data) {
               console.log(data);
            });
        }
    });
});