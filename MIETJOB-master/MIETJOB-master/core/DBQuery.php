<?
Class Query
{
	private $q = '';
	private $db_server = 'localhost';
	private $db_name = 'miet';
	private $db_user = 'miet';
	private $db_password = 'miet';
	private $db = '';
	
	public function __construct() 
	{
		$this->db = mysql_connect($this->db_server, $this->db_user, $this->db_password);
    mysql_select_db($this->db_name, $this->db);
		mysql_query("SET NAMES 'utf8'");
	}
	
	public function Exec($query) 
	{
		$result = mysql_query($query, $this->db); 
		$myrow = mysql_fetch_array($result);
		return $myrow;
	}
	
	public function GetDB()
	{
		return $this->db;
	}
	
	public function Num($num) 
	{
		if((int)$num == $num)
			if(floor($num) == ceil($num))
				return $num;
		return false;
	}
	
	public function Dbl($dbl) 
	{
		if((double)$dbl == $dbl)
				return $dbl;
		return false;
	}
	
	public function Str($str) 
	{
		return trim((string)$str);
	}
	
}
?>