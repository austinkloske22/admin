/* global QUnit */
QUnit.config.autostart = false;

sap.ui.getCore().attachInit(function () {
	"use strict";

	sap.ui.require([
		"admin/web/test/integration/AllJourneys"
	], function () {
		QUnit.start();
	});
});