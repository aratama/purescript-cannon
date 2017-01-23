"use strict";

/* global CANNON */

exports.createRaycastResult = function(){
    return new CANNON.RaycastResult();
};

exports.body = function(result){
    return function(){
        return result.body;
    };
};