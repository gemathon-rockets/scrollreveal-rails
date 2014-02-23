# Scrollreveal-Rails 

A Ruby wrapper to integrate [scrollReveal](https://github.com/julianlloyd/scrollReveal.js) - A small library to create and maintain how elements fade in, triggered when they enter the viewport.

## Installation

Add the gem to the Gemfile:

    gem "scrollreveal-rails"    

## Usage

In your JavaScript manifest (e.g. `application.js`):

    //= require scrollReveal


Load scrollreveal in your Dom

	$(function() {
	  window.scrollReveal = new scrollReveal();
	});

In your View

	#index.html.haml

	scroll_reveal(content: 'hello',animation: "enter right after 4s")


## Licensing


The gem itself is released under the MIT license

:pray:
