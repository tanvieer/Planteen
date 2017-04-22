# Planteen


http://coreui.io/docs/getting-started/static-version

* Node.js: https://nodejs.org/en/
* npm: https://npmjs.com
* Gulp: http://gulpjs.com
* Bower: https://bower.io



Installing Node.js
If you’re using OS X or Windows, the best way to install Node.js is to use one of the installers from the Node.js download page. If you’re using Linux, you can use the installer, or you can check NodeSource’s binary distributions to see whether or not there’s a more recent version that works with your system.

Test:

Copy
$ node -v
The version should be higher than v0.10.32.

Updating npm
Node comes with npm installed so you should have a version of npm. However, npm gets updated more frequently than Node does, so you’ll want to make sure it’s the latest version.


$ npm install npm@latest -g
Test:


$ npm -v
The version should be higher than 2.1.8.

Installing Gulp and project dependencies

$ npm install
Installing Bower and 3rd party plugins & components
Bower is a command line utility. Install it with npm.

#Install Bower

$ npm install -g bower
Install 3rd party plugins & components

$ bower install
Run project
Go to project directory


$ cd Static_Full_Project_GULP
or


$ cd Static_Starter_GULP
Start local server and Gulp scripts


$ gulp serve
Your project is ready. Go to following url http://localhost:3000.
