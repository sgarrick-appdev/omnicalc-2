# Omnicalc 2

## Target

The username and password is on Canvas — here is our target:

[https://omnicalc-2.matchthetarget.com/](https://omnicalc-2.matchthetarget.com/)

## Query strings

The essential piece: add a **query string** onto _any_ URL in your Rails app, e.g.

```
/rock?dessert=Ice cream&color=Orange
```

and watch what happens in your server log when you visit that URL.

Rails parses any query string parameters and puts them into a special Hash called `params`. You have access to `params` in the action.

With that simple fact, combined with the way that HTML forms behave, we can invent ways to make any forms we want work!

## Your first task

Wire up the following 4 RCAVs and add `<h1>` elements to each that say "Addition", "Subtraction", "Multiplication", and "Division":

 - `/add`
 - `/subtract`
 - `/multiply`
 - `/divide`

Use the [slides](https://slides.com/raghubetina/07-routing?token=Qj5aA5z3), [chapter](https://chapters.firstdraft.com/chapters/779), and your RPS RCAV workspace as a reference.

## Your second task

Visit your `/add` URL, but type a query string on to the end: `?first_num=3&second_num=4`. So, the whole path should be:

```
/add?first_num=3&second_num=4
```

First pull up the Terminal tab running your server and Cmd-K or Ctrl-K to clear it out, then visit that URL again. Scroll to the top of the Terminal tab. Read the log — what do you notice?

The `params` Parameters `Hash`! Use the `params` hash in the action you defined to calculate a result and display it in the view template you created. Make the markup [match the target](https://form-intro.matchthetarget.com/add?first_num=3&second_num=4).

## Do the other 3

Do the same thing for 

 - `/subtract`,
 - `/multiply`,
 - and `/divide`.

## Review form attributes

Remember when we [reverse engineered HTML forms](https://slides.com/raghubetina/04-essential-html-and-css?token=TunUbuP_#/11)? Review and remind yourself what each attribute does — `action`, `id`, `for`, `value`, `type`, `placeholder`, `name`.

## Add forms

Now, make it easier on your users. They should not have to type into the address bar of their browsers to access these useful calculations.

Can you invent a way to make it easier for them using what you've learned about RCAV, `params`, and what we reverse-engineered about how HTML forms work?

## Google Cloud Translate

 - [Google Cloud Translation](https://cloud.google.com/translate)

Here's the crux of using the official gem:

Add the gem to your Gemfile:

```ruby
# /Gemfile
gem "google-cloud-translate"
```

Then `bundle install` and restart your web server.

You now have access to the `Google::Cloud::Translate` class. To use it:

```ruby
require "google/cloud/translate"
gt_client = Google::Cloud::Translate.new({ :version => :v2 })
translation = gt_client.translate("Hello, world!", { :to => "es" })
```

Amazing!

To list all available languages,

```ruby
languages = gt_client.languages("en") # The argument determines what language to list the other language names in
languages.size #=> 104
languages[0].code #=> "af"
languages[0].name #=> "Afrikaans"
```

Read more at the gem docs:

 - [Ruby gem documentation](https://googleapis.dev/ruby/google-cloud-translate/latest/index.html#Using_the_legacy_v2_client)

## Specs
<details>
  <summary>Click here to see names of each test</summary>
  
/add has a functional Route Controller Action View   
  
/add has an `<h1>` with the text 'Addition'   
  
/add has a `<form>` element   
  
/add has a label with the text 'Add this:'   
  
/add has a label with the text 'to this:'   
  
/add has two `<input>` elements   
  
/add has a button element with text 'Add!'   
  
/add has a `<form>` element with an 'action' attribute   
  
/subtract has a functional Route Controller Action View   
  
/subtract has an `<h1>` with the text 'Subtraction'   
  
/subtract has a `<form>` element   
  
/subtract has a label with the text 'Subtract this:'   
  
/subtract has a label with the text 'from this:'   
  
/subtract has two `<input>` elements   
  
/subtract has a button element with text 'Subtract!'   
  
/subtract has a `<form>` element with an 'action' attribute   
  
/multiply has a functional Route Controller Action View   
  
/multiply has an `<h1>` with the text 'Multiplication'   
  
/multiply has a `<form>` element   
  
/multiply has a label with the text 'Multiply this:'   
  
/multiply has a label with the text 'by this:'   
  
/multiply has two `<input>` elements   
  
/multiply has a button element with text 'Multiply!'   
  
/multiply has a `<form>` element with an 'action' attribute   
  
/divide has a functional Route Controller Action View   
  
/divide has an `<h1>` with the text 'Division'   
  
/divide has a `<form>` element   
  
/divide has a label with the text 'Divide this:'   
  
/divide has a label with the text 'by this:'   
  
/divide has two `<input>` elements   
  
/divide has a button element with text 'Divide!'   
  
/divide has a `<form>` element with an 'action' attribute   
  
/add has a form that submits to a valid route   
  
/add displays the first number entered when the form is submitted   
  
/add displays the second number entered when the form is submitted   
  
/add displays the sum when the form is submitted   
  
/subtract has a form that submits to a valid route   
  
/subtract displays the first number entered when the form is submitted   
  
/subtract displays the second number entered when the form is submitted   
  
/subtract displays the result of the subtraction when the form is submitted   
  
/multiply has a form that submits to a valid route   
  
/multiply displays the first number entered when the form is submitted   
  
/multiply displays the second number entered when the form is submitted   
  
/multiply displays the sum when the form is submitted   
  
/divide has a form that submits to a valid route   
  
/divide displays the first number entered when the form is submitted   
  
/divide displays the second number entered when the form is submitted   
  
/divide displays the sum when the form is submitted   
  
/coords_to_weather/new displays the latitude  displays the longitude  displays the current temperature  displays the current summary  displays the outlook for the next sixty minutes  displays the outlook for the next several hours  displays the outlook for the next several days   
  
/street_to_coords/new displays the street address  displays the latitude  displays the longitude   
  
/street_to_weather/new displays the street address  displays the current temperature  displays the current summary  displays the outlook for the next sixty minutes  displays the outlook for the next several hours  displays the outlook for the next several days   
  
</details>