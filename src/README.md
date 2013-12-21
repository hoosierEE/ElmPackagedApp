#What Is This?

This directory (`src`) holds all my Elm files, a script for compiling them in a certain way,
and a directory called `TheAppItself` which holds all the Chrome Packaged App - related files
such as `manifest.json`, `background.js`, and the main `window.html` file.

### How To Use
* write Elm modules, each with its own `main` function (because each is a self-contained Elm program)
* save Elm programs in the `src` directory (right here)
* compile using `./compilr`
* check to be sure that the JavaScript files have been generated for each module
* compiled `*.js` files will be placed in `src/TheAppItself/vendor/`
* `manifest.json` should reference this path for everything except `background.js`
* finally, load it as an "unpacked extension" in Chrome using [these instructions](http://developer.chrome.com/apps/first_app.html#five)

### Organization
The `src` directory looks like this before running `./compilr`:

```
.
├── App.elm
├── Blocks.elm
├── compilr.sh
├── README.md
└── TheAppItself
    ├── background.js
    ├── img
    │   ├── example128.png
    │   └── example16.png
    ├── manifest.json
    ├── vendor
    │   └── elm-runtime.js
    └── window.html

```

And after running `./compilr` it looks like this:

```
.
├── App.elm
├── Blocks.elm
├── compilr.sh
├── README.md
└── TheAppItself
    ├── background.js
    ├── img
    │   ├── example128.png
    │   └── example16.png
    ├── manifest.json
    ├── vendor
    │   ├── App.js
    │   ├── Blocks.js
    │   ├── elm-runtime.js
    │   ├── start-App.js
    │   └── start-Blocks.js
    └── window.html

```


At the moment I don't see a good way to script the insertion of the Elm `<div>`s into the 
HTML document, since for non-fullscreen Elm programs you want to be able to have some control
over positioning on the screen.  Scripting this part would require something much more advanced.


