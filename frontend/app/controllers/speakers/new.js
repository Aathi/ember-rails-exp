import Ember from 'ember';

export default Ember.ObjectController.extend({
  actions: {
    close: function() {
      this.transitionToRoute('speakers-index');
    },
    save: function() {
      var self = this;
      var content = this.get('content.name');
      if (Ember.isEmpty(content)) {
		  alert('please insert name!');
      } else {
        this.get('content').save().then(function() {
          self.transitionToRoute('speakers-index');
        }, function() {
			alert('cannot saved');
        });
      }
    }
  }
});
