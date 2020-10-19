# Pair Programming Challenge - Tea Shoppe

You've been assigned to fix up an old website called the Tea Shoppe. The website is meant as a database where users register their tea blends but it's currently missing the most important part: the teas!

## Getting Started

Clone the repository and `cd` into it followed by `bundle install`. There is no seed data but you can feel free to go ahead and build users for yourself and your partner.

## Models

There's only one model to worry about, the Tea model, which should have these attributes:

```
name => string, names should be unique, required
category => string (examples: oolong, herbal, green), required
description => string
```

Tea names need to be unique, additionally a tea shouldn't be created without a name or category.

## Controller

You'll need to build out a teas controller with these actions: index, show, new, create. The index and show should be business as usual and show teas for the current user.

Creating a new tea should associate that tea with the user. If the tea is created without a name, category, or a non-unique name then it needs to re-render the form to create a tea. Otherwise it needs to go to the show page for that tea.

## BONUS

Build an additional route that only shows teas of a specific category. For instance, the `/teas/oolong` should show every tea that is an oolong.

Additionally, build out links to every defined category on the index page.

HINT: There's a way you can build out these routes without needing to build any additional views. How can we best recycle the index page?
