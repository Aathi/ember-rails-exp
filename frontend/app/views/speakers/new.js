import Ember from "ember";

export default Ember.View.extend({
  classNames : ['modal'],
  attributeBindings: ['data-backdrop', 'data-keyboard'],
  'data-backdrop': "static",
  'data-keyword' : 'false',
  didInsertElement : function() {
    this.$().modal('show');
  },
  willDestroyElement: function() {
    this.$().modal('hide');
  }
});

