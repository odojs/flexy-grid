gulp = require 'gulp'
rename = require 'gulp-rename'
sourcemaps = require 'gulp-sourcemaps'
stylus = require 'gulp-stylus'
autoprefixer = require 'gulp-autoprefixer'
minifycss = require 'gulp-minify-css'

gulp.task 'default', ->
  gulp.src 'flexy-grid.styl'
    .pipe sourcemaps.init()
    .pipe stylus()
    .pipe rename "flexy-grid.min.css"
    .pipe autoprefixer browsers: ['last 2 versions']
    .pipe minifycss()
    .pipe sourcemaps.write './'
    .pipe gulp.dest './'