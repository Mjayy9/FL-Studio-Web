var acc = document.getElementsByClassName("accordion");
        var i;
        
        for (i = 0; i < acc.length; i++) {
          acc[i].addEventListener("click", function() {
            this.classList.toggle("active");
            var panel = this.nextElementSibling;
            if (panel.style.display === "block") {
              panel.style.display = "none";
            } else {
              panel.style.display = "block";
            }
          });
        }

function myalert() 
{
  alert("Thank you for your purchase\n"+"Info on the following process can be found in your email inbox\n"+"<3");
}

function contact() {
  var menoPriezvisko = document.querySelector(".formular input[type='text']").value.trim();
  var email = document.getElementById("emailInput").value;
  var poziadavka = document.querySelector(".formular textarea").value.trim();
  var consentCheckbox = document.getElementById("consentCheckbox");

  if (menoPriezvisko === '') {
      alert("Please, write down your name and surname");
      return;
  }
  if (poziadavka === '') {
    alert("Please, write down text in request");
    return;
  }
  if (isValidEmail(email) && consentCheckbox.checked) {
      window.location.href = "ThankYouPage.html";
  } else {
      if (!isValidEmail(email)) {
          alert("Invalid email address");
      } else {
          alert("You must consent to the processing of personal data");
      }
  }
}

function isValidEmail(email) {
  var emailRegex = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
  return emailRegex.test(email);
}

function skrytDiv() {
  var cookieConsentDiv = document.querySelector('.cookie-consent');
  cookieConsentDiv.style.display = 'none';
}

function popup() {
  var popup = document.getElementById("myPopup");
  popup.classList.toggle("show");
}