"use strict";

/* global CANNON */

exports.addBody = function(body){
    return function(world){
        return function(){
            world.addBody(body);
        };
    };
};

exports.createWorld = function(){
    return new CANNON.World();
};



exports.removeBody = function(body){
    return function(world){
        return function(){
            world.removeBody(body);
        };
    };
};

exports.step = function(fixedTimeStep){
    return function(dt){
        return function(maxSubSteps){
            return function(world){
                return function(){
                    world.step(fixedTimeStep, dt, maxSubSteps);
                };
            };
        };
    };
};


exports.setGravity = function(vector){
    return function(world){
        return function(){
            world.gravity = vector;
        };
    };
};

exports.getBodies = function(world){
    return function(){
        return world.bodies;
    };
};


exports.raycastClosest = function(from){
    return function(to){
        return function(options){
            return function(result){
                return function(world){
                    return function(){
                        return world.raycastClosest(from, to, options, result);
                    };
                };
            };
        };
    };

};