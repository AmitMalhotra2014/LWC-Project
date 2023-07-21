({
    render : function(cmp,hpr) {
  	  var returnVal = this.superRender();
    	alert('Yes, I am from Render Method..');
    	return returnVal;
},
 afterRender : function(cmp,hpr) {
    	this.superAfterRender();
    	alert('Yes, I called from AfterRender method..');
},
rerender : function(cmp, hpr) {
        this.superRerender();
        alert('Yes, I am from Rerender method..');
        
},
unRender : function(cmp,hpr) {
       this.superUnrender();
       alert('Yes, I called from Unrender method..');
}
})