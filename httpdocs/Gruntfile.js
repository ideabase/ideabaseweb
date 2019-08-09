module.exports = function (grunt) {
  grunt.initConfig({
    pkg: grunt.file.readJSON('package.json'),
    sass: {
      dist: {
        options: {
          style: 'compressed'
        },
        files: {
          'css/style.css': 'scss/styles.scss',
          'css/proposals.css': 'scss/proposals.scss'
        }
      }
    },
    postcss: {
      options: {
        map: false,
        processors: [
          require('pixrem')(),
          require('autoprefixer')(),
          require('cssnano')()
        ]
      },
      dist: {
        src: 'css/*.css',
      }
    },
    criticalcss: {
      custom: {
        options: {
          url: "http://ideabase.web/",
          width: 1500,
          height: 1200,
          outputfile: "css/critical.css",
          filename: "css/style.css",
          buffer: 800 * 1024,
          ignoreConsole: false
        }
      }
    },
    uglify: {
      my_target: {
        files: {
          'js/min/custom-scripts-min.js': ['js/jquery.min.js', 'js/jquery.easing.1.3.js', 'js/scrollreveal.min.js', 'js/flickity.min.js', 'js/jquery.fitvids.js', 'js/prism.js', 'js/jquery.lazyload.min.js', 'js/picturefill.min.js', 'js/custom-scripts.js'],
          'js/min/project-scripts-min.js': ['js/project-scripts.js']
        }
      }
    },
    watch: {
      css: {
        files: '**/scss/**/*.scss',
        tasks: ['sass', 'postcss'],
        options: {
          livereload: true
        }
      },
      js: {
        files: '**/js/*.js',
        tasks: ['uglify'],
        options: {
          livereload: true
        }
      }
    }
  });

  // Plugins
  grunt.loadNpmTasks('grunt-contrib-sass');
  grunt.loadNpmTasks('grunt-contrib-uglify');
  grunt.loadNpmTasks('grunt-contrib-watch');
  grunt.loadNpmTasks('grunt-criticalcss');
  grunt.loadNpmTasks('grunt-postcss');

  // Tasks
  grunt.registerTask('default', ['watch']);
  grunt.registerTask('critical', ['criticalcss', 'postcss']);
};
