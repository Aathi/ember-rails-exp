import Ember from 'ember';
import config from './config/environment';

var Router = Ember.Router.extend({
  location: config.locationType
});

Router.map(function() {
	this.resource('speakers', function() {
		this.resource('speakers-index', {path: '/'});
		this.resource('speaker', {path: ':speaker_id'});
	});
	this.route('about');
});

export default Router;
