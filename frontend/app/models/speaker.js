import DS from 'ember-data';

export default DS.Model.extend({
	name          : DS.attr(),
	presentations : DS.hasMany('presentation')
});
