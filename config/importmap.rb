# frozen_string_literal: true

# Pin npm packages by running ./bin/importmap

pin "application", preload: true
pin "@hotwired/turbo-rails", to: "turbo.min.js", preload: true
pin "@hotwired/stimulus", to: "stimulus.min.js", preload: true
pin "@hotwired/stimulus-loading", to: "stimulus-loading.js", preload: true
pin_all_from "app/javascript/controllers", under: "controllers"
pin "motion", to: "https://ga.jspm.io/npm:motion@10.16.4/dist/main.es.js"
pin "@motionone/animation", to: "https://ga.jspm.io/npm:@motionone/animation@10.16.3/dist/index.es.js"
pin "@motionone/dom", to: "https://ga.jspm.io/npm:@motionone/dom@10.16.4/dist/index.es.js"
pin "@motionone/easing", to: "https://ga.jspm.io/npm:@motionone/easing@10.16.3/dist/index.es.js"
pin "@motionone/generators", to: "https://ga.jspm.io/npm:@motionone/generators@10.16.4/dist/index.es.js"
pin "@motionone/types", to: "https://ga.jspm.io/npm:@motionone/types@10.16.3/dist/index.es.js"
pin "@motionone/utils", to: "https://ga.jspm.io/npm:@motionone/utils@10.16.3/dist/index.es.js"
pin "hey-listen", to: "https://ga.jspm.io/npm:hey-listen@1.0.8/dist/index.js"
pin "tslib", to: "https://ga.jspm.io/npm:tslib@2.6.2/tslib.es6.mjs"
pin "sortablejs", to: "https://ga.jspm.io/npm:sortablejs@1.15.0/modular/sortable.esm.js"
