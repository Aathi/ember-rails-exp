import Ember from 'ember'

export default Ember.ObjectController.extend({
	isEditing: false,
	actions: {
		save: function() {
			var self = this;
			this.get('content').save().then(function(p) {
				self.set('isEditing', false);
			}, function(reason) {
				alert('cannot update!');
			});
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
