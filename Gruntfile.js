module.exports = function(grunt) {
    // Project configuration.
    grunt.initConfig({
        //search for todo comment
        todo: {
            options: {
                file: "TODO.md",
            },
            src: [
               'frontend/app/scripts/*',
               'frontend/app/views/*',
               'frontend/app/styles/*'
            ],
        },
        //documenti cooffeScript Files
        codo: {
          options:{
            name: "Profile",
            title: "Profile API Documentation",
            output: "frontend/app/doc/api"
          },
          src: [
            "frontend/app/scripts/**/*"
          ],
          
        },
    });
    grunt.loadNpmTasks('grunt-todo');
    grunt.loadNpmTasks('grunt-codo');
}