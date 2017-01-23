"use strict";

/* global CANNON */

exports.createSphere = function(radius){
    return function(){
        return new CANNON.Sphere(radius);
    };
};

exports.createBox = function(halfExtents){
    return function(){
        return new CANNON.Box(halfExtents);
    };
};

exports.createCylinder = function(radiusTop){
    return function(radiusBottom){
        return function(height){
            return function(numSegments){
                return function(){
                    return new CANNON.Cylinder(radiusTop, radiusBottom, height, numSegments);
                };
            };
        };
    };
};

exports.createPlane = function(){
    return new CANNON.Plane();
};

exports.createMaterial = function(options){
    return function(){
        return new CANNON.Material(options);
    };
};






