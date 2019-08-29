CREATE TABLE IF NOT EXISTS `form_intake`(
`id` 										bigint(20) 		NOT NULL auto_increment,
`date` 										datetime 				default NULL,
`pid`										bigint(20) 				default NULL,
`encounter` 								varchar(100)		 	DEFAULT NULL,
`user` 										varchar(100) 			default NULL,
`groupname` 								varchar(100) 			default NULL,
`authorized` 								tinyint(4) 				default NULL,
`activity` 									tinyint(4) 				default NULL,
`type_of_fluid` 							varchar(100)			default NULL,
`Site__location` 							varchar(100)			default NULL,
`Hourly_volume_infused___ml____`			FLOAT(5,2)   			default NULL,
`Fluid_stop_time` 							time					default NULL,
`Fluid_start_time`							time     				default NULL,
`IV_fluid___in_ml____`						FLOAT(5,2)      		default NULL,
`OR__ED_blood_products___ml____`			FLOAT(5,2)				default NULL,
`IV_meds__Flush___ml____`					FLOAT(5,2)				default NULL,
`Site__location_meds`						varchar(100)			default NULL,	
`type_of_fluid_meds` 						varchar(100)			default NULL,
`other_fluid_additive___medication____`		varchar(100)			default NULL,
`GI_tube_type` 								varchar(100)			default NULL,
`Current_tube_use`							varchar(100)			default NULL,
`GI_tube_status`							varchar(100)			default NULL,
`Date_GI_tube_changed`						datetime				default NULL,
`Reason_tube_changed` 						varchar(100)			default NULL,
`GI_tube_interventions`						varchar(100)			default NULL,
`NG__OG_placement_confirmation`				varchar(100)			default NULL,
`pH_value`									FLOAT(5,2)				default NULL,
`Exit_point_value`	 						int						default NULL,
`Exit_point_marker_visible_at_lip__nare` 	varchar(100)			default NULL,
`GI_tube_site_assessment` 					text					default ''NULL,	
`GI_tube_site_intervention` 				text					default ''NULL,
`Irrigation_in` 							FLOAT(5,2)				default NULL,
`Irrigation_out` 							FLOAT(5,2)      		default NULL,
`PO_amount___ml____` 						FLOAT(5,2)      		default NULL,
`PO_fluids_type` 						    varchar(100)  			default NULL,
`PO_meal_` 									FLOAT(5,2)      		default NULL,
`Line_type` 								varchar(100)      		default NULL,
`Site_assessment`	 						text					default ''NULL,
`site_interventions` 						text					default ''NULL,
`dressing_type` 							text					default ''NULL,
`line_status` 								varchar(100)      		default NULL,
`line_interventions` 						text     				default NULL,
`Cap_change_date` 							datetime      			default NULL,
`dressing_change_date` 						datetime      			default NULL,
`Types_of_draw__stick` 						varchar(100)      		default NULL,
`Draw__stick__attempt_locations` 			varchar(100)      		default NULL,
`number_of_attempts` 						int      				default NULL,
`clinician_attempting` 						text      				default ''NULL,
PRIMARY KEY (id)
)ENGINE=InnoDB;