$(function() {
  
});

jQuery(function() {
  
  function one(callback) {
    alert("one was called");
    var message = "Hey Mike";
    callback(message);
  }
  
  function two(message) {
    alert("two was called");
    alert(message);
    return two;
  }
    
  one(two("first message"));
});

init = function() {
  alert("page loaded");
};

function init() {
  alert("page loaded");

}

function test() {
	if (condition) {
		var x = 9;
	} else {
		var x = 7;
	}
	
	var x;
	if (condition) {
		x = 9
	} else {
		x = 7;
	}
}

// jQuery(init);

// Anonymous functions
