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
pin "@editorjs/editorjs", to: "https://ga.jspm.io/npm:@editorjs/editorjs@2.28.2/dist/editorjs.mjs"
pin "@editorjs/header", to: "https://ga.jspm.io/npm:@editorjs/header@2.8.1/dist/header.mjs"
pin "@editorjs/checklist", to: "https://ga.jspm.io/npm:@editorjs/checklist@1.6.0/dist/checklist.mjs"
pin "@editorjs/embed", to: "https://ga.jspm.io/npm:@editorjs/embed@2.7.0/dist/embed.mjs"
pin "@editorjs/link", to: "https://ga.jspm.io/npm:@editorjs/link@2.6.2/dist/link.mjs"
pin "@editorjs/list", to: "https://ga.jspm.io/npm:@editorjs/list@1.9.0/dist/list.mjs"
pin "@editorjs/paragraph", to: "https://ga.jspm.io/npm:@editorjs/paragraph@2.11.3/dist/paragraph.mjs"
pin "@editorjs/quote", to: "https://ga.jspm.io/npm:@editorjs/quote@2.6.0/dist/quote.mjs"
pin "@editorjs/code", to: "https://ga.jspm.io/npm:@editorjs/code@2.9.0/dist/code.mjs"
pin "highlight.js", to: "https://ga.jspm.io/npm:highlight.js@11.9.0/es/index.js"
