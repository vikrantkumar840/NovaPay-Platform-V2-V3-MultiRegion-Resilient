# AWS Global Accelerator Failover

## Purpose

AWS Global Accelerator provides global traffic management and rapid failover between NovaPay regions.

## Architecture

Users
|
v
Global Accelerator
|
+----> Primary Region
|
+----> DR Region

## Endpoint Groups

Primary:

* ap-south-1

Disaster Recovery:

* ap-south-2

## Failover Flow

1. Endpoint health monitoring detects failure.
2. Traffic weight for the failed endpoint becomes zero.
3. Traffic shifts automatically to the DR region.
4. Application remains available.

## Benefits

* Faster Recovery
* Global Entry Point
* Reduced DNS Propagation Delays
* Improved User Experience

