#!/usr/bin/python

import bpy
import math

def my_handler(scene):
    print("Update Frame Change", scene.frame_current)
    angle = scene.frame_current/250.0*2.0*math.pi
    #
    s1 = bpy.data.objects['original']
    s1.rotation_euler = Euler((0.0,0.0,angle),'XYZ')
    #s1.scale = Vector((1.0,1.0,1.0))
    #
    x = math.cos(angle)
    y = math.sin(angle)
    newX = x - y
    newY = x + y
    newAngle = math.atan2(newY,newX)
    #
    s2 = bpy.data.objects['mapping']
    s2.rotation_euler = Euler((0.0,0.0,newAngle),'XYZ')
    s2.scale = Vector((newY/newX,1.0,1.0))
    
def linearTransformation(x,y):
    # v1 = [2 -1]'
    # v2 = [-1,3]'
    return([0.8*x+0.6*y,-0.9*x-1.3*y])

def mappingDriver(angle):
    #
    #s1 = bpy.data.objects['original']
    #angle = s1.rotation_euler[0][2]
    #
    x = math.cos(angle)
    y = math.sin(angle)
    [newX,newY] = linearTransformation(x,y)
    newAngle = math.atan2(newY,newX)
    #
    return(newAngle)

def mappingMagnitude(angle):
    #
    #s1 = bpy.data.objects['original']
    #angle = s1.rotation_euler[0][2]
    #
    x = math.cos(angle)
    y = math.sin(angle)
    [newX,newY] = linearTransformation(x,y)
    #
    return(math.sqrt(newX*newX+newY*newY))


bpy.app.driver_namespace['mappingDriver'] = mappingDriver
bpy.app.driver_namespace['mappingMagnitude'] = mappingMagnitude

#bpy.app.handlers.frame_change_post.clear()
#bpy.app.handlers.frame_change_pre.append(my_handler)

