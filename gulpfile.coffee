
gulp = require 'gulp'

gulp.task 'script', (cb) ->
  script = require 'gulp-coffee'

  gulp
  .src 'src/*.cirru'
  .pipe script()
  .pipe gulp.dest('lib/')
