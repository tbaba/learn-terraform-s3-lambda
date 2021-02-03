const AWS = require('aws');
const util = require('util');
const sharp = require('sharp');

const s3 = new AWS.S3();

exports.handler = async (event, context, callback) => {
  console.log("Reading options from event:\n", util.inspect(event, {depth: 5}));
}
