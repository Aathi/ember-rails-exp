import Ember from 'ember';

export default Ember.Route.extend({
  model: function() {
    return this.store.createRecord('speaker');
  },
  deactivate: function() {
		var content = this.controllerFor('speakers.new').get('content');
		if (content.get('isDirty')) {
			content.rollback();
		}
	}
});

