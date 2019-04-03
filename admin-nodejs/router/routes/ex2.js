/*eslint no-console: 0, no-unused-vars: 0, no-shadow: 0, newcap: 0*/
"use strict";
var express = require("express");
module.exports = () => {
	
	var app = express.Router();
	//Hello Router
	app.get("/", (req, res) => {
		res.send("Hello World Node.js");
	});
	
	//Simple Database Select Via Client Wrapper/Middelware - Promises
	app.get("/promises", (req, res) => {
		const dbClass = require(global.__base + "utils/dbPromises");
		let db = new dbClass(req.db);
		db.preparePromisified(`SELECT SESSION_USER, CURRENT_SCHEMA 
				            	 FROM "DUMMY"`)
			.then(statement => {
				db.statementExecPromisified(statement, [])
					.then(results => {
						let result = JSON.stringify({
							Objects: results
						});
						return res.type("application/json").status(200).send(result);
					})
					.catch(err => {
						return res.type("text/plain").status(500).send(`ERROR: ${err.toString()}`);
					});
			})
			.catch(err => {
				return res.type("text/plain").status(500).send(`ERROR: ${err.toString()}`);
			});
	});
	
	//Simple Database Call Stored Procedure
	app.get("/procedures", (req, res) => {
		var client = req.db;
		var hdbext = require("@sap/hdbext");
		//(client, Schema, Procedure, callback)
		hdbext.loadProcedure(client, null, "get_errorMessages_data", (err, sp) => {
			if (err) {
				res.type("text/plain").status(500).send(`ERROR: ${err.toString()}`);
				return;
			}
			//(Input Parameters, callback(errors, Output Scalar Parameters, [Output Table Parameters])
			sp({}, (err, parameters, results) => {
				if (err) {
					res.type("text/plain").status(500).send(`ERROR: ${err.toString()}`);
				}
				var result = JSON.stringify({
					EX_ERRORMESSAGES: results
				});
				res.type("application/json").status(200).send(result);
			});
		});
	});
	
	return app;
};