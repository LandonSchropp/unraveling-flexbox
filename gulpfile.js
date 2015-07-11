var browserSync = require('browser-sync');
var del = require('del');
var gulp = require('gulp');
var plugins = require('gulp-load-plugins')();
var runSequence = require('run-sequence');

var paths = {
  images: "source/**/*.{png,svg,jpg}",
  styles: "source/**/*.{css,scss}",
  templates: "source/**/*.swig",
  source: "source",
  tmp: ".tmp",
  build: "build",
  layout: "source/shared/layout.swig"
};

// Optimize images and copy them to the build directory
gulp.task('images', function () {
  return gulp.src(paths.images)
    .pipe(plugins.cache(plugins.imagemin({ progressive: true, interlaced: true })))
    .pipe(gulp.dest('build'));
});

// Compile styles and copy them to the build directory.
gulp.task('styles', function () {
  return gulp.src(paths.styles)
    .pipe(plugins.sourcemaps.init())
    .pipe(plugins.sass({ precision: 10, onError: plugins.util.log }))
    .pipe(plugins.autoprefixer({ browsers: [ 'ie >= 10', 'android >= 4.1' ] }))
    .pipe(plugins.sourcemaps.write())
    .pipe(gulp.dest('.tmp'))
    .pipe(plugins.csso())
    .pipe(gulp.dest('build'));
});

// Compile templates and copy them to the build directory.
gulp.task('templates', function() {
  return gulp.src(paths.templates)
    .pipe(plugins.frontMatter({ property: 'data' }))
    .pipe(plugins.wrap({ src: paths.layout }))
    .pipe(plugins.swig({ defaults: { cache: false } }))
    .on("error", plugins.util.log)
    .on("error", function() { this.emit("end"); })
    .pipe(gulp.dest(paths.tmp))
    .pipe(plugins.minifyHtml())
    .pipe(gulp.dest(paths.build));
});

// Remove the build directory.
gulp.task('clean', del.bind(null, [ paths.tmp, paths.build ], { dot: true }));

// Watch files for changes and reload the page in the browser when they do.
gulp.task('watch', [ 'images', 'styles', 'templates' ], function() {
  browserSync({ notify: false, server: [ paths.tmp, paths.source ] });
  gulp.watch([ paths.templates ], [ 'templates', browserSync.reload ]);
  gulp.watch([ paths.styles ], [ 'styles', browserSync.reload ]);
  gulp.watch([ paths.images ], browserSync.reload);
});

// Build the source and serve the result.
gulp.task('watch:build', [ 'build' ], function () {
  browserSync({ notify: false, server: 'build' });
});

// Build the source.
gulp.task('build', [ 'clean' ], function (callback) {
  runSequence([ 'styles', 'templates', 'images' ], callback);
});

gulp.task('default', [ 'watch' ]);
