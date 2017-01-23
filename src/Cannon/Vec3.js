"use strict";

/* global CANNON */

exports.createVec3 = function(x){
    return function(y){
        return function(z){
            return function(){
                return new CANNON.Vec3(x, y, z);
            };
        };
    };
};

exports.runVec3 = function(v){
    return function(){
        return { x: v.x, y: v.y, z: v.z };
    };
};

exports.toVec3 = function(v){
    return function(){
        return new CANNON.Vec3(v.x, v.y, v.z);
    };
};

exports.unit = function(vec){
    return function(){
        return vec.unit();
    };
};

exports.scale = function(t){
    return function(vec){
        return function(){
            return vec.scale(t);
        };
    };
};

exports.length = function(vec){
    return function(){
        return vec.length();
    };
};
