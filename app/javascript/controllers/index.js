// This file is auto-generated by ./bin/rails stimulus:manifest:update
// Run that command whenever you add a new controller or create them with
// ./bin/rails generate stimulus controllerName

import { Application } from '@hotwired/stimulus'
import ContentLoader from 'stimulus-content-loader'

const application = Application.start()
application.register('content-loader', ContentLoader)

import { application } from "./application"

import FlexmasonryController from "./flexmasonry_controller"
application.register("flexmasonry", FlexmasonryController)

import HelloController from "./hello_controller"
application.register("hello", HelloController)

import RefreshListController from "./refresh_list_controller"
application.register("refresh-list", RefreshListController)
