Gregsume
========
https://github.com/itsgreggreg/Gregsume/  
example: http://itsgreggreg.com

**What**  
A straight forward resume template and build environment leveraging modern web dev conveniences that is desktop and mobile friendly. Includes styles for responsive site width scaling down nicely to phone and tablet browsers as well as an optimized print style sheet so that all you have to do is print the site to have paper resumes on hand. Phone number and email can also optionally be loaded through URL params keeping your info (somewhat) safe from bots while still allowing you to give it to potential employers.

**Huh?**  
Built on top of bower and grunt this project compiles your Jade templates, SASS, coffescript, and YAML automatically. It will also live update while you dev so there's no need to restart the server. Try print-previewing or printing to PDF to see the print styles. Add 'phone' or 'email' query params to the URL to see it insert those fields. For example: ?phone=909-555-1234&email=example%40example.com.

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
`grunt build` will create an optimized distribution in ./dist.
