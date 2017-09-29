<?php
/**
 * pre Measure 0438 -- Population Criteria 1
 *
 * Copyright (C) 2015 - 2017      Suncoast Connection
  * 
 * LICENSE: This Source Code Form is subject to the terms of the Mozilla Public License, v. 2.0
 * See the Mozilla Public License for more details. 
 * If a copy of the MPL was not distributed with this file, You can obtain one at https://mozilla.org/MPL/2.0/.
 * 
 * @author  Art Eaton <art@suncoastconnection.com>
 * @author  Bryan lee <bryan@suncoastconnection.com>
 * @package LibreHealthEHR 
 * @link    http://suncoastconnection.com
 * @link    http://librehealth.io
 *
 * Please support this product by sharing your changes with the LibreHealth.io community.
 */
 
class pre_0438_PopulationCriteria1 implements PQRSPopulationCriteriaFactory
{
    public function getTitle()
    {
        return "Population Criteria 1";
    }
    
    public function createInitialPatientPopulation()
    {
        return new pre_0438_InitialPatientPopulation1();
    }
    
    public function createNumerators()
    {
        return new pre_0438_Numerator1();
    }
    
    public function createDenominator()
    {
        return new pre_0438_Denominator1();
    }
    
    public function createExclusion()
    {
        return new pre_0438_Exclusion1();
    }
}

?>