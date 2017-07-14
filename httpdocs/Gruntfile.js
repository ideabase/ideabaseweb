
module.exports = function(grunt) {

  // Configuration
  grunt.initConfig({
    pkg: grunt.file.readJSON('package.json'),
    sass: {
      dist: {
        options: {
          style: 'compressed'
        },
        files: {
        'css/style.css': 'scss/styles.scss',
        '../craft/templates/_includes/critical-home.css': '../craft/templates/_includes/critical-home.css'
        }
      }
    },
    criticalcss: {
      home: {
        options: {
          url: "http://ideabase.web",
                width: 1500,
                height: 1200,
                outputfile: "../craft/templates/_includes/critical-home.css",
                filename: "css/style.css", // Using path.resolve( path.join( ... ) ) is a good idea here
                buffer: 800*1024,
                ignoreConsole: true,
                restoreFontFaces: true
        }
      },
    },
    uglify: {
      my_target: {
        files: {
          'js/custom-scripts-min.js': ['js/jquery.min.js','js/jquery.easy.1.3.js','js/scrollreveal.min.js','js/flickity.min.js','js/jquery.fitvids.js','js/jquery.lazyload.min.js','js/picturefill.min.js','js/custom-scripts.js'],
          'js/project-scripts-min.js': ['js/project-scripts.js']
        }
      }
    },
    autoprefixer: {
      your_target: {
        files: {
          'css/style.css': 'css/style.css'
        }
      },
    },
    watch: {
      css: {
				files: '**/scss/*.scss',
				tasks: ['sass', 'autoprefixer'],
        options: {
          livereload: true,
        },
			},
      js: {
				files: '**/js/*.js',
				tasks: ['uglify'],
        options: {
          livereload: true,
        },
			},
    }
  });

  // Plugins
  grunt.loadNpmTasks('grunt-autoprefixer');
  grunt.loadNpmTasks('grunt-contrib-imagemin');
  grunt.loadNpmTasks('grunt-contrib-sass');
  grunt.loadNpmTasks('grunt-criticalcss');
  grunt.loadNpmTasks('grunt-contrib-uglify');
  grunt.loadNpmTasks('grunt-contrib-watch');
  grunt.loadNpmTasks('grunt-shell');

  // Tasks
  grunt.registerTask('default', ['watch']);
  grunt.registerTask('critical', ['criticalcss']);
};
