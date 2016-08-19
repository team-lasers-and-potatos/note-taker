if process.env.APP_ENVIRONMENT is 'production'
  host = 'http://localhost:5000'
else
  host = 'http://localhost:5000'


exports.config =
  modules:
    definition: false
    wrapper: false

  plugins:
    assetsmanager:
      copyTo:
        '/': ['app/modules/**/*.html']
    replace:
      encoding: 'utf8'
      log: true
      mappings:
        'api_host': host
      paths: [
        'public/js/app.js'
      ]
      replacePrefix: '{!'
      replaceSuffix: '!}'
    sass:
      options:
        includePaths: [
          'bower_components/bourbon/app/assets/stylesheets',
          'bower_components/neat/app/assets/stylesheets'
        ]

  files:
    javascripts:
      joinTo:
        'js/app.js': /^bower_components|app/
      order:
        before: [
          /^bower_components(\/|\\)jquery(\/|\\)dist(\/|\\)jquery.js$/,
          /^bower_components(\/|\\)angular(\/|\\)angular.js$/,
          /^app(\/|\\)modules(\/|\\)(.+)(\/|\\)(.+)-module.js$/,
          /^app(\/|\\)modules(\/|\\)(.+)(\/|\\)(.+).js$/,
          'app/app.js'
        ]
    stylesheets:
      defaultExtension: 'scss'
      joinTo:
        'css/app.css': /^(app|vendor|bower_components)/
    templates:
      joinTo: 'js/app.js'
