import { Application } from "@hotwired/stimulus"
import { registerControllers} from 'stimulus-vite-helpers'
import Dropdown from 'stimulus-dropdown'

const application = Application.start()
application.register('dropdown', Dropdown)
// registerControllers 自動引入並註冊所有控制器
registerControllers(application, import.meta.glob('./controllers/*.js'))
const controllers = import.meta.globEager('./**/*_controller.js')

registerControllers(application, controllers)
// Configure Stimulus development experience
application.debug = false
window.Stimulus   = application

export { application }
