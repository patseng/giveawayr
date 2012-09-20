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

// jQuery(init);

// Anonymous functions
