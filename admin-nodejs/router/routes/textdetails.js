/*eslint no-console: 0, no-unused-vars: 0, no-shadow: 0, newcap: 0*/
"use strict";
var express = require("express");
module.exports = () => {

	var app = express.Router();
	//Hello Router
	app.get("/", (req, res) => {
		res.send("Hello World Node.js");
	});

	//Database Call Stored Procedure With Inputs
	app.get("/get/:UUID?", (req, res) => {
		var client = req.db;
		var hdbext = require("@sap/hdbext");
		var UUID = req.params.UUID;
		var inputParams = "";
		var procedure = "";
		if (typeof UUID === "undefined" || UUID === null) {
			procedure = "get_textdetails";
			inputParams = {};
		} else {
			procedure = "get_textdetails_by_uuid";
			inputParams = {
				IM_UUID: UUID
			};
		}

		//(cleint, Schema, Procedure, callback)
		hdbext.loadProcedure(client, null, procedure, (err, sp) => {
			if (err) {
				res.type("text/plain").status(500).send(`ERROR: ${err.toString()}`);
				return;
			}
			//(Input Parameters, callback(errors, Output Scalar Parameters, [Output Table Parameters])
			sp(inputParams, (err, parameters, results) => {
				if (err) {
					res.type("text/plain").status(500).send(`ERROR: ${err.toString()}`);
				}
				var result = JSON.stringify({
					EX_TEXTDETAILS: results
				});
				res.type("application/json").status(200).send(result);
			});
		});
	});

	return app;
};