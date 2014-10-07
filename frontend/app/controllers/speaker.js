import Ember from 'ember'

export default Ember.ObjectController.extend({
	isEditing: false,
	actions: {
		save: function() {
		},
	   	delete: function() {
			var self = this;
			this.get('content').destroyRecord().then(function(p) {
				self.transitionToRoute('speakers-index');
			}, function(reason) {
				alert('cannot delete');
			})
		}
	}
});
