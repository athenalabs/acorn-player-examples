module.exports = (grunt) ->

  # libraries
  libs = [
    'lib/jquery/jquery-1.8.2.min.js',
    'lib/jquery/jquery.fullscreen.min.js',
    'lib/bootstrap/bootstrap.noicons.min.js',
    'lib/underscore/underscore-min.js',
    'lib/backbone/backbone-min.js',
    'lib/marked/marked.js',
    'lib/athena-lib/athena.lib.min.js',
  ]

  # Project configuration.
  grunt.initConfig

    pkg: grunt.file.readJSON('package.json')

    uglify:
      options:
        banner: '/* <%= pkg.name %> <%= pkg.version %> */\n'
      libs:
        files:
          'build/acorn.player.libs.min.js': libs
      player:
        files:
          'build/acorn.player.min.js': 'lib/acorn-player/acorn.player.min.js'

    clean: ['build']

  # load tasks
  grunt.loadNpmTasks 'grunt-contrib-clean'
  grunt.loadNpmTasks 'grunt-contrib-coffee'
  grunt.loadNpmTasks 'grunt-contrib-uglify'

  # default task
  grunt.registerTask 'default', ['uglify']
