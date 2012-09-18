$(function() {
  $('body').prepend('<div id="fb-root"></div>');
  
  $.ajax({
    url: "//connect.facebook.net/en_US/all.js",
    dataType: 'script',
    cache: true
  });
  
  window.fbAsyncInit = function() {  
    FB.init({
      appId: '106230092864568',
      cookie: true
    });
    
    $('#sign_in').click(function(e) {
      e.preventDefault();
      FB.login(function(response) {
        // redirect
        if (response.authResponse) {
          window.location = '/auth/facebook/callback';
        }
      }, { scope: 'email' });
    });
    
    $('#sign_out').click(function(e) {
      FB.getLoginStatus(function(response) {
        if (response.authResponse) {
          FB.logout();
        }
        
        debugger;
        
        return true;
      });
    });

  };
  
});