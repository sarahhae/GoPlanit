Goplanit App
=============

## Summary

This project aims to build a web application, using Ruby on Rails. Goplanit is a web application where users can log in their trips and itinerary.

## Key functionalities

Users can sign up for a profile and sign in to start logging their trips. The trips and trip details can be edited and deleted through their account. By using Cloudinary, users can add their profile photo to their account.

## Design Layout - CSS

The overall layout aimed to design a simple yet welcoming layout. The format has multiple grids and hover effects in the form and profile card to show user action.

## Features

* CRUD systems
* Sign up page - form
* Sign-in page - homepage, form
* Sign out - redirect to sign-in page
* Profile page - username, name, dob, email
* Users page - admin only
* Trips detail page
* Edit trips page - form
* Edit detail page - form
* Delete trip

## Blockers

Working on multiple forms and linking each newly created trip ids with new items was the tricky part to do. Initially, my thought process was to append items to trips in the items controller create, like so...

```
@current_user.trips << item
```

However, because the item is unaware of which trip id to land on, item will always appear as nil. With multiple trial and errors, the solution to this was entirely out of my knowledge. See below for the solution...

In items form:

```
<%= hidden_field_tag :trip_id, params[:trip_id] %>
```
Then in items controller create:
```
trip = Trip.find params[:trip_id]
trip.items << item
```

## Future Improvements

My initial and final goal is to create a web application where users can not only log trips and details but create groups to share itineraries amongst each other for group travelling. The web application will have a group split payment system. Using a chatbox API, users can message amongst each with in the web application.

## Heroku site

Goplanit: https://goplanit.herokuapp.com/login
