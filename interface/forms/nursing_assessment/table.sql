CREATE TABLE IF NOT EXISTS `form_nursing_assessment`(
`id` 								bigint(20) NOT NULL auto_increment,
`date` 								datetime default NULL,
`pid`								bigint(20) default NULL,
`encounter` 						varchar(255) DEFAULT NULL,
`user` 								varchar(255) default NULL,
`groupname` 						varchar(255) default NULL,
`authorized` 						tinyint(4) default NULL,
`activity` 							tinyint(4) default NULL,
`remarks_or_comments` 				longtext,
`reason_for_communication` 			longtext,
`provider_name_or_role` 			longtext,
`reason_for_communication` 			longtext,
`Method_of_communication` 			varchar(255),
`response` 							varchar(255),
`temperature` 						FLOAT(5,2)    default 0,
`temp_source` 						varchar(255),
`pulse`								FLOAT(5,2)      default 0,
`respiratory_rate`					FLOAT(5,2)      default 0,
`SpO2`								FLOAT(5,2)      default 0,
`FiO2`								FLOAT(5,2)      default 0,
`room_air` 							boolean,
`O2_delivery_method`				varchar(255),
`O2_flow_rate`						longtext,
`blood_pressure`					longtext,
`BP_mean`							varchar(255),
`BP_location`						varchar(255),
`BP_patient_position`				varchar(255),
`blood_glucose_level`				longtext,
`related_interventions`				varchar(255),
`patient_behavior`					varchar(255),
`patient_support`					varchar(255),
`patient_response`					varchar(255),
`patient_location`					varchar(255),
`patient_activity`					varchar(255),
`patient_position`					varchar(255),
`care_elements_performed`			varchar(255),
`bath_or_shower`					varchar(255),
`bed_position`						varchar(255),
`ADL_assistance_evel`				varchar(255),
`mobilization`						varchar(255),
`SCDs_or_ted_hose`					varchar(255),
`pain_scale`						varchar(255),
`patient_gain_goal`					varchar(255),
`pain_rating`						tinyint(4),
`pain_location`						varchar(255),
`pain_description`					varchar(255),
`pain_frequency`					varchar(255),
`pain_interventions`				varchar(255),	
`medication_side_effects`			varchar(255),
`pasero_sedation_score `			varchar(255),
`respiratory_pattern`				varchar(255),
`thermoregulation_type`				varchar(255),
`NM_location`						varchar(255),
`NM_limb_movements`					varchar(255),
`NM_motor_strength`					varchar(255),
`NM_sensation`						varchar(255),
`GCS_eye_opening`					tinyint(4),
`GCS_best_verbal`					tinyint(4),
`GCS_best_motor`					tinyint(4),
`GCS_total_score`					tinyint(4),
`GCS_comments_or_remarks`			varchar(255),
`NE_orientation`					varchar(255),
`NE_cry`							varchar(255),
`NE_pupil_reaction_or_bilat`		varchar(255),
`NE_pupil_reaction_or_left`			varchar(255),
`NE_pupil_reaction_or_right`		varchar(255),
`NE_oculomotor`						varchar(255),
`NE_fontanel`						varchar(255),
`NE_reflexes`						tinyint(4),
`NE_seizure_activity`				boolean,				
`NE_neuro_monitoring`				varchar(255),
`NE_c-collar`						varchar(255),
`Psy_orientation`					varchar(255),
`Psy_mood/affect`					varchar(255),
`Psy_concentration/memory`			varchar(255),
`Psy_appearance`					varchar(255),
`Psy_behavior`						varchar(255),
`Psy_eye_contact`					varchar(255),
`Psy_thought`						varchar(255),
`Psy_insight_judgement`				varchar(255),
`Psy_pt_caregiver_interactions`		varchar(255),
`Psy_ongoing_risk_precautions`		varchar(255),
`Psy_escalated_behavior`			varchar(255),
`cardio_heart_sounds`				varchar(255),
`cardio_PMI`						varchar(255),
`cardio_rhythm`						varchar(255),
`cardio_arrythmia`					varchar(255),
`cardio_arrythmia_frequency`		varchar(255),
`cardio_interventions`				varchar(255),
`cardio_cap_refill_central`			varchar(255),
`cardio_cap_refill_peripheral`		varchar(255),
`cardio_cap_refill_RUE`				varchar(255),
`cardio_cap_refill_LUE`				varchar(255),
`cardio_cap_refill_RLE`				varchar(255),
`cardio_cap_refill_LLE`				varchar(255),
`cardio_color_temp_RUE`				varchar(255),
`cardio_color_temp_LUE`				varchar(255),
`cardio_color_temp_RLE`				varchar(255),
`cardio_color_temp_LLE`				varchar(255),
`cardio_central_pulses`				varchar(255),
`cardio_peripheral pulses`			varchar(255),
`cardio_pulse_RUE`					varchar(255),
`cardio_pulse_LUE`					varchar(255),
`cardio_pulse_RLE`					varchar(255),
`cardio_pulse_LLE`					varchar(255),
`RS_Respiratory pattern`			varchar(255),
`RS_Retractions`					varchar(255),
`RS_cough`							varchar(255),
`RS_appearance`						varchar(255),
`RS_Breath_sounds_all_lobes`		varchar(255),
`RS_Breath_sounds_RUL`				varchar(255),
`RS_Breath_sounds_RML`				varchar(255),
`RS_Breath_sounds_RLL`				varchar(255),
`RS_Breath_sounds_LUL`				varchar(255),
`RS_Breath_sounds_LLL`				varchar(255),
`RS_respiratory_interventions`		varchar(255),
`RS_suctioning_type`				varchar(255),
`RS_oral_secretions`				varchar(255),
`RS_nasal_secretions`				varchar(255),
`RS_airway_secretions`				varchar(255),
`GI_Abd_assessment`					varchar(255),
`GI_Abd_girth`						FLOAT(5,2),
`GI_liver_position`					varchar(255),
`GI_symptoms`						varchar(255),
`GI_interventions`					varchar(255),
`GI_Bowel_sounds_all_quadrants`		varchar(255),
`GI_BS_RUQ`							varchar(255),
`GI_BS_RLQ`							varchar(255),
`GI_BS_LUQ`							varchar(255),
`GI_BS_LLQ`							varchar(255),
`GI_Epigastric`						varchar(255),
`GU_symptoms`						varchar(255),
`GU_interventions`					varchar(255),
`GU_bladder_scan_residual_amount`	FLOAT(5,2),
`GU_perineal_drainage`				varchar(255),
`GU_describe_genitalia`				longtext,
`MSK_deficit_location`				longtext,
`MSK_girth_circum_location`			longtext,
`MSK_girth_circumference`			tinyint(4);
`MSK_muscle_tone`					varchar(255),
`MSK_motion`						varchar(255),
`MSK_appearance`					varchar(255),
`MSK_support_device`				varchar(255),
`MSK_weight_bearing`				varchar(255),
`MSK_CPM_degree`					longtext,
`MSK_CPM_on_off`					boolean,
`MSK_traction`						FLOAT(5,2);
`MSK_traction_assessment`			varchar(255),
`MSK_cap_refill`					FLOAT(5,2),
`MSK_motion_sensation`				varchar(255),
`MSK_extremity_color_temp`			varchar(255),
`MSK_CMS_check_intervention`		varchar(255),
`skin_assessment`					varchar(255),
`edema_location`					longtext,
`edema_description`					varchar(255),
`rash_location`						longtext,
`rash_description`					varchar(255),
`laceration_assessment`				longtext,
`nodule_bump_location`				longtext,
`nodule_bump_description`			varchar(255),
`wound_location`					longtext,
`wound_description`					varchar(255),
`wound_appearance`					varchar(255),
`wound_time_first_noticed`			longtext,
`wound_date_first_noticed`			longtext,
`wound_interventions`				varchar(255),
`wound_dressing`					varchar(255),
`wound_drainage`					varchar(255),
`wound_topical_treatment`			varchar(255),
`wound_date_dressing_applied_changed`  longtext,
`skin_Comments_Remarks`				longtext,
PRIMARY KEY (id)
)ENGINE=InnoDB;