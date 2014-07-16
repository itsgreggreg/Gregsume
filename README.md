Gregsume
========
https://github.com/itsgreggreg/Gregsume/
example: http://itsgreggreg.com

**What**
A straight forward resume template and build environment leveraging modern web dev conveniences that is desktop and mobile friendly.

**Huh?**
Built ontop of bower and grunt this project compiles your Jade templates, SASS, coffescript, and YAML data automatically. It will also live update while you dev so there's no need to restart the server. 

**Setup**
If you get build errors try updating node and NPM

 - `git clone https://github.com/itsgreggreg/Gregsume.git` 
 - `cd Gregsume`
 - `npm install`
 - `bower intsall`
 - `grunt serve`

 
**Dev**

 `grunt serve` starts the auto updating server on port 9000. If you want to keep your data separate from your templates you can edit resume.yaml and it will be automatically compiled into the template. All the other site data is in ./app.
 
**Build**
`grunt build` will create a compressed distribution in ./dist. 
