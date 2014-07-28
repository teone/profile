#MY PROFILE

This is project is the repository of my personal profile. I'm going to deploy this application as soon it get to a stable point.

##Site Map

- Bio + Skills -> This will be the home page, and it will containt a short biography and a list of technical skills.
- About This -> This section will contain a technical description of the project, the language choosen, the development flow etc..
- Usefull Stuff -> This will be (as first) a simple bookmarklet, the idea is to evolve it in a small blog, anyway will not be present in the first version.
- Contacts -> Simple Mail Form and connection to LinkedIn and Github.

##Structure

This application will be a MEAN full-stack Application, splitted in a public frontend, a Node backend and a private Control Panel. The structure will be more or less this:

.
+-- frontend
    +-- app (public frontend)
    +-- test
    +-- Gruntfile.js
+-- backend
    +-- app (node backend)
    +-- config (configuration for backend enviroments)
    +-- public (control panel)
+-- INSTRUCTIONS.md
+-- TODO.md
+-- README.md

##Technologies

A brief description of language and powertools I'm going to use in this app.

###Frontend

The public application is an AngularJS application, but I've decided that has come the time to give a try to (CoffeScript)[http://coffeescript.org/], as I've been listen a lot about it.

The application structure is scaffholded using (Yeoman)[http://yeoman.io/] and the (generator-angular)[https://github.com/yeoman/generator-angular].

~~As I would like to try out new stuff in this project I would also give a try to a semantic css framework, (Semantic-UI)[http://semantic-ui.com/]~~

After reading some more about Semantic-UI, I prefer to swith to a pure Scss framework, so I decided to give a try to Bourbon [http://bourbon.io/], used toghete with Neat and Bitter. I choose not to use Refills as it require jQuery and I would like to avoid using it in this project.

###Backend

After some month in the MEAN world I decided to give a try to the (meanjs generator)[http://meanjs.org/generator.html]. In this case I prefer to write the code directly in Javascript as I'm less confident with NodeJs.

To keep stuff simple on this side I choose to use Bootstrap as Css Framework as I feel really confident with it, the style is not so important in private Control Panel, and I don't want to waist time on this side.

##Tools

Since when I discover them I can't live without anymore. I'm goig to use (bower)[http://bower.io/] as package manager and (grunt)[http://gruntjs.com/] as task runner.

Of course I'm going to use git as versioning tool, approching this project with the "Feature Branch Workflow" as described in (this interesting article)[https://www.atlassian.com/git/workflows#!workflow-gitflow] from Atlassian.

To speed-up my development flow I discovered today about git hooks, so I writed one that runs before commit that basically call a (grunt task)[https://www.npmjs.org/package/grunt-todo] that basically cicle trough you file looking for //TODO comment and create a TODO.md file, then add it to the commit, so I can easily track any next task. ~~I'll be more precise on this later.~~

###How to auto-update TODO.md file on commit

Create a ```.git/hooks/pre-commit``` file.

Run ```chmod u+x .git/hooks/pre-commit``` to set the execution permission.

Paste this content in:
```
#!/bin/sh

#running todo task
echo "Running Grunt Todo"
grunt todo

#creating readme file
echo "Creating Readme File"
cat /dev/null > README.md
cat INSTRUCTIONS.md > README.md
cat TODO.md >> README.md

#Adding files to commit
echo "Adding file to commit"
git add TODO.md README.md
```
and then just commit!




#TODO

