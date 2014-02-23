# Scrollreveal-Rails 

A Ruby wrapper to integrate [scrollReveal](https://github.com/julianlloyd/scrollReveal.js) - A small library to create and maintain how elements fade in, triggered when they enter the viewport.


See the [demo application](http://fast-waters-6745.herokuapp.com) in action. 
## Installation

Add the gem to the Gemfile:

    gem "scrollreveal-rails"    

## Usage

Add ScrollReveal to your JS
Append the following lines to your app/assets/javascripts/application.js file:

	//= require scrollReveal

	$(function() {
	  window.scrollReveal = new scrollReveal();
	});


Basic Usage
-----------

In your view `*.html.erb` or `*.html.haml`

	<!-- Reveal using defaults. -->
	scroll_reveal content: 'Holla!'

**But wait!** It’s more fun if you define your own reveal animation parameters, which you can do using using natural, declarative language:

	<!-- Reveal using custom parameters. -->
	scroll_reveal content: 'Foo', animation: 'enter left and move 50px over 1.33s'
	scroll_reveal content: 'Bar', animation: 'enter from the bottom after 1s'
	scroll_reveal content: 'Baz' animation: 'wait 2.5s and then ease-in-out 100px'

Getting Started
---------------
What you enter into the `data-scrollReveal` attribute is parsed for specific words:

- **keywords** that expect to be followed by a **value**.<br><br>
- **fillers** as natural language sugar. (optional)

#### Keywords and Values
These specific **keyword** / **value** pairs allow you to describe basic reveal animation behavior.
***
**keyword:** `enter` — Controls the vector origin of your reveal animation.<br>
**value:** `top` | `right` | `bottom` | `left`<br><br>
*Example:*

	<!-- Reveal your element with a downward motion. -->

	scroll_reveal content: 'Foo', animation: 'enter top'

***
**keyword:** `move` — The distance your revealing element travels.<br>
**value:** [ integer ]px.

*Example:*

	scroll_reveal content: 'Foo', animation: 'move 24px'

***
**keyword:** `over` — The duration of your reveal animation.<br>
**value:** [ decimal ]s


*Example:*

	scroll_reveal content: 'Foo', animation: 'over 1.66s'

***
**keyword:** `after/wait` — The duration before your reveal begins.<br>
**value:** [ decimal ]s


*Example:*

	<!-- Both are accepted. -->

	scroll_reveal content: 'Mel', animation: 'after 0.33s'
	scroll_reveal content: 'Mel', animation: 'wait 0.33s'

####Combining Keyword/Value Pairs
You can easily combine the above pairs to create more dynamic reveal animations.

*Example:*

	scroll_reveal content: 'Foo', animation: 'enter top move 50px'
	scroll_reveal content: 'Bar', animation: 'enter top move 50px, after 0.3s'
	scroll_reveal content: 'Baz', animation: 'enter top move 50px, after 0.6s'
	scroll_reveal content: 'Mel', animation: 'enter top move 50px, after 0.9s'

####Passing Blocks
You can easily pass a block too.

*Example:*

	scroll_reveal animation: 'enter top move 50px' do 
	  image_tag 'foo.jpg'
	end
	

#### Fillers (optional)
You can use conjoining filler words for more readable language.

- `from`
- `the`
- `and`
- `then`
- `but`
- `with`
- `,`

*Example*:

	<!-- These 4 lines are equivalent. -->

	scroll_reveal content: 'Foo', animation: 'wait 0.3s, then enter left and move 40px over 2s'
	scroll_reveal content: 'Bar', animation: 'enter from the left after 0.3s, move 40px, over 2s'
	scroll_reveal content: 'Baz', animation: 'enter left move 40px over 2s after 0.3s'
	scroll_reveal content: 'Mel', animation: 'enter left, move 40px, over 2s, wait 0.3s'


## Licensing


The gem itself is released under the MIT license

:pray:
	