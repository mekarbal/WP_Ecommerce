import { observable, action, computed } from 'mobx'

export default class ConfirmationDialog {
	@observable
	state = false
	@observable
	message = ''
	@observable
	title = ''
	@observable
	action = null;
	@observable
	actionProps = null;
	@action
	setTitle(title) {
		this.title = title;
	}
	@action
	setMessage(message) {
		this.message = message;
	}
	@action
	setState(state) {
		this.state = state;
	}
	@action
	resetState() {
		this.title = '';
		this.message = '';
		this.state = false;
		this.action = null;
		this.actionProps = null;
	}
	@action
	setAction(action) {
		this.action = action
	}
	@action
	setActionProps(props) {
		this.actionProps = props
	}
}
