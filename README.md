einstein-beer
=============

# State of the project
This is a longer-term project is temporarily put on hold in favor of other, smaller projects.

# Overview
einstein-beer is a Rails application that makes choosing a beer off of a beer menu an easy task. Simply take a photo of a beer menu and upload it to the app and let einstein-beer tell you all about each beer!

## How it works
  1. takes in a photo of a beer menu as input
  3. attempts to find a matching entry in [breweryDB](http://www.brewerydb.com/) via fuzzy search
  2. parses the text using Tesseract OCR
  4. displays information about each of the beers on the menu

# Planned additions
- sort fuzzy search matches by some ranking algorithm, e.g. Levenshtein Distance.
- allow user-input corrections to fuzzy search matches and recall that in the future (crowd-sourcing adjustments to search algo). i.e. If einstein-beer thinks Foo is Bar, allow the user to correct that and retrieve Bar's data. The next time einstein-beer searches for Bar, it will recall the previous user input and not mistake it for Foo.
- display results as they are calculated, instead of waiting for all results at once (maybe use ReactJS).
