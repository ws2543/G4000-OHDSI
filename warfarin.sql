/* Find other drugs that contains Warfarin AND Dabigratran */
SELECT max_levels_of_separation, c.* 
FROM concept_ancestor ca, concept c 
WHERE ca.ancestor_concept_id = 1310149 /* Warfarin */
	AND ca.descendant_concept_id = c.concept_id 
ORDER BY max_levels_of_separation;
