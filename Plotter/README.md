# Anet A8 Plotter

## Position the model
* set the y position to around `-40`

## Edit the GCODE 

* #### Comment out the temp lines:

      ;T0
      ;M109 S0

* #### Add the negative offset after the Homing:

      G92 Z-5 ;5mm offset

* #### Split the first move into two lines:

##### change this:

	G0 F3600 X91.552 Y93.321 Z0.3

##### to this:

	G0 F3600 X91.552 Y93.321
	G0 Z0.3
