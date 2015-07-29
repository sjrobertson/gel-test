'use strict';

module.exports = function (grunt) {
    grunt.config('sass', {
        dist: {
            expand: true,
            cwd: '<%= dir.static_sass %>',
            src: ['**/*.scss', '!**/_*.scss'],
            dest: '<%= dir.static_css %>',
            ext: '.css',
            options: {
                style: 'compressed',
                defaultEncoding: 'UTF-8'
            }
        },
        development: {
            expand: true,
            cwd: '<%= dir.static_sass %>',
            src: ['**/*.scss', '!**/_*.scss'],
            dest: '<%= dir.static_css %>',
            ext: '.css',
            options: {
                update: true,
                debugInfo: false,
                lineNumbers: true,
                defaultEncoding: 'UTF-8',
                style: 'expanded'
            }
        }
    });
};