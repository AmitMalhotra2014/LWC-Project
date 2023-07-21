({
	doSubmithpr : function(cmp) {
          alert('Sir, Please tell me! as you Called..I am from Helper');
		 var enm = cmp.get('v.empName');
        alert(enm);
        var efnm = cmp.get('v.empFatherName');
        alert(efnm);
        var eaddr = cmp.get('v.empAddress');
        alert(eaddr);
        var edpt =  cmp.get('v.empDept');
        alert(edpt);
        var esal = cmp.get('v.empSalary');
        alert(esal);
         var action = cmp.get('c.doInsert'); 
        // params name for my method doInsert
        action.setParams({
            "en" : enm,
            "efn" : efnm,
            "ea" : eaddr,
            "ed" : edpt,
            "es" : esal
        });
        action.setCallback(this, function(yash){
            var state = yash.getState(); // get the response state
            if(state == 'SUCCESS') {
            }
        });
        $A.enqueueAction(action);
	}
})