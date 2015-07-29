module.exports = function (grunt) {
    require('jit-grunt')(grunt);

    grunt.initConfig({
       pkg: grunt.file.readJSON('package.json'),
       dir: {
           static_sass: 'assets/sass',
           static_css: 'assets/css'
       }
    });

    grunt.registerTask('default', ['sass:development']);
    grunt.registerTask('watch', ['sass:development', 'watch']);
    grunt.registerTask('production', ['sass:dist']);

    grunt.loadTasks('tasks/grunt');
};