"use strict";

/* global CANNON */

exports.createBody = function(bodyProps){
    return function(){
        return new CANNON.Body(bodyProps);
    };
};

exports.defaultBodyProps = {
    mass: 0.0,
    position: new CANNON.Vec3(),
    fixedRotation: false,
    linearDamping: 0.01,
    material: new CANNON.Material(),
    collisionFilterGroup: 1,
    collisionFilterMask: 1
};

exports.setMass = function(value){
    return function(body){
        return function(){
            body.mass = value;
            body.updateMassProperties();
        };
    };
};


exports.getVelocity = function(body){
    return function(){
        return body.velocity;
    };
};

exports.setVelocity = function(value){
    return function(body){
        return function(){
            body.velocity.copy(value);
        };
    };
};
exports.getPosition = function(body){
    return function(){
        return body.position.clone();
    };
};

exports.setPosition = function(position){
    return function(body){
        return function(){
            body.position.copy(position);
        };
    };
};

exports.applyLocalForce = function(force){
    return function(localPoint){
        return function(body){
            return function(){
                body.applyLocalForce(force, localPoint);
            };
        };
    };
};

exports.applyForce = function(force){
    return function(worldPoint){
        return function(body){
            return function(){
                body.applyForce(force, worldPoint);
            };
        };
    };
};

exports.applyImpulse = function(impulse){
    return function(worldPoint){
        return function(body){
            return function(){
                body.applyImpulse(impulse, worldPoint);
            };
        };
    };
};

exports._addShape = function(shape){
    return function(offset){
        return function(orientation){
            return function(body){
                return function(){
                    body.addShape(shape, offset, orientation);
                };
            };
        };
    };
};

exports.setFixedRotation = function(value){
    return function(body){
        return function(){
            body.fixedRotation = value;
        };
    };
};

exports.updateMassProperties = function(body){
    return function(){
        body.updateMassProperties();
    };
};