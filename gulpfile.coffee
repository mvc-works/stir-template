
gulp = require 'gulp'

gulp.task 'script', (cb) ->
  script = require 'gulp-coffee'

  gulp
  .src 'src/*.coffee'
  .pipe script(bare: yes)
  .pipe gulp.dest('lib/')
