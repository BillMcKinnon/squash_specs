// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

import './stylesheets/application.scss'
require("@rails/ujs").start()
require("turbolinks").start()
require("@rails/activestorage").start()
require("channels")
require("jquery")


// Uncomment to copy all static images under ../images to the output folder and reference
// them with the image_pack_tag helper in views (e.g <%= image_pack_tag 'rails.png' %>)
// or the `imagePath` JavaScript helper below.
//
// const images = require.context('../images', true)
// const imagePath = (name) => images(name, true)

import 'bootstrap'

$(document).ready(function() {

  // - User clicks filter button, get query params.
  // - If an inactive button is clicked, append the selected value to query
  // params, redirect the user using the new query params.
  // - If an active button is clicked, filter out the selected value, append the
  // remaining values to the query params and redirect the user accordingly.

  $('[data-filter]').click(function(e) {
    e.preventDefault();
    var queryParams = new URLSearchParams(window.location.search);
    var queryArray = [];

    if($(this).data('state') === "inactive") {
      queryParams.append($(this).data('filter') + "[]", e.target.textContent);
      window.location = "?" + queryParams.toString();
    } else {
      for(var pair of queryParams.entries()) {
        queryArray.push([pair[0], pair[1]]);
      }

      var filteredArray = queryArray.filter(value => !value[1].includes(e.target.textContent));
      var filteredParams = new URLSearchParams(filteredArray);
      window.location = "?" + filteredParams.toString();
    }
  });
});

