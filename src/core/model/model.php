<?php

namespace Model;

class Model
{
	protected $db;

	const MILEFACTOR = 0.621371192;

	function __construct( $db )
	{
		$this->db = $db;
	}

	public function search($formData = null)
	{
		$formData = is_array($formData) ? array_filter($formData) : $formData;

		$params = array();
		$query = 'SELECT *';
		if(isset($formData['lat']) && isset($formData['lng']))
		{
			$query .= ',((ACOS(SIN(? * PI() / 180) * SIN(latitude * PI() / 180) + COS(? * PI() / 180) * COS(latitude * PI() / 180) * COS((? - longitude) * PI() / 180)) * 180 / PI()) * 60 * 1.1515) AS distance';
			$params[] = $formData['lat'];
			$params[] = $formData['lat'];
			$params[] = $formData['lng'];
		}
		$query .= ' FROM offices';
		
		if(!$formData) {
			// query is good to go
		} else {
			if(isset($formData['lat']) && isset($formData['lng']))
			{
				$query .= ' HAVING distance <= ?';
				$params[] = isset($formData['distance']) ? $this->mileIze($formData['distance']) : $this::MILEFACTOR;
			} else {
				$query .= ' WHERE 1';
			}
			if(isset($formData['is_open_on_weekends']))
			{
				$query .= ' AND is_open_in_weekends = ?';
				$params[] = $this->yesOrNo($formData['is_open_on_weekends']);
			}
			if(isset($formData['has_support_desk']))
			{
				$query .= ' AND has_support_desk LIKE ?';
				$params[] = $this->yesOrNo($formData['has_support_desk']);
			}
		}

		return (array) $this->db->fetchAll($query, $params);
	}

	private function mileIze($input)
	{
		return $this::MILEFACTOR * $input;
	}

	private function yesOrNo($bool)
	{
		return (bool) $bool ? 'Y' : 'N';
	}

	private function likeIze($term, $pre = '%', $post = '%')
	{
		return $pre . $term . $post;
	}
}