import { Application } from "@hotwired/stimulus"

const application = Application.start()

// Configure Stimulus development experience
application.debug = false
window.Stimulus   = application

export { application }

document.addEventListener("DOMContentLoaded", function() {
    var perPage = window.innerWidth <= 768 ? 2 : 10;
    document.cookie = "per_page=" + perPage;
  });
