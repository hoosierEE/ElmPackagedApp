#What Is This?

This `src` directory holds all my Elm files, a script for compiling them,
and a directory called `TheAppItself` which holds all the important files
for the Chrome Packaged App such as `manifest.json`, `background.js`, and the 
main `html` file.

### How To Use
* Put the Elm files here
* compile using `./compilr`
* compiled `*.js` files will be placed in `src/vendor/`
* `manifest.json` should reference this path for everything except `background.js`

There is probably more, working on it...

### Organization
The `src` directory looks like this:

```
.
├── App.elm
├── Blocks.elm
├── buildr.sh
├── compilr.sh
├── README.md
├── screenshot.png
└── TheAppItself
    ├── background.js
    ├── img
    │   ├── example128.png
    │   └── example16.png
    ├── manifest.json
    ├── vendor
    │   ├── App.js
    │   ├── Blocks.js
    │   ├── call-App.js
    │   └── elm-runtime.js
    └── window.html

```

Right now I am inserting the code for each Elm program into `window.html` manually, and adding
JavaScript variables to `call-App.js` for each Elm program I want to invoke.  Later this might be
part of the regular build process.  Working on a start to this in the `buildr.sh` script.
