
var
  gulp $ require :gulp

gulp.task :script $ \ (cb)
  var
    script $ require :gulp-cirru-script

  ... gulp
    src :src/*.cirru
    pipe $ script
    pipe $ gulp.dest :lib/
