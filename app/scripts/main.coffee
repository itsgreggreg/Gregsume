# Extracts a query param from the URL by name
getParameterByName = (name) ->
    name = name.replace(/[\[]/, "\\[").replace(/[\]]/, "\\]")
    regex = new RegExp("[\\?&]" + name + "=([^&#]*)")
    results = regex.exec(location.search)
    if results == null then "" else decodeURIComponent(results[1].replace(/\+/g, " "))

$ ->
  # Inserts a phone number if one has been specified in the query param
  # Use %2b for '+'
  if phone = getParameterByName("phone")
    $("#phone").html phone
