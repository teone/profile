module.exports = function(grunt) {
    // Project configuration.
    grunt.initConfig({
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
    });
    grunt.loadNpmTasks('grunt-todo');
}