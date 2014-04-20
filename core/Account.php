<?
Class Account
{
	private $login = '';
	private $name = '2';
	private $privileges = '';

	public function __construct() 
	{
		if ($this->IsLogin()){
			$this->SetInformation($_SESSION['account_id']);
      return true;
      }
    return false;
	}
	
	public function GetLogin()
	{
		return $this->login;
	}
	
	public function GetName()
	{
		return $this->name;
	}
	
	public function GetPrivileges()
	{
		return $this->privileges;
	}
	
	public function SetLogin($login)
	{
		$this->login = $login;
	}
	
	public function SetName($name)
	{
		$this->name = $name;
	}
	
	public function SetPrivileges($privileges)
	{
		$this->privileges = $privileges;
	}
	
	public function SetInformation($uid)
	{
		global $q;
		$qRes = $q->Exec("SELECT * FROM users WHERE u_id = '{$q->Num($uid)}'");
		$this->name = $qRes['username'];
		$this->login = $qRes['login'];
	}
	
	public function CheckPassword($login, $password)
	{
		global $q;
		$password = md5($password);
		$qRes = $q->Exec("SELECT * FROM users WHERE login = '{$q->Str($login)}' AND password = '{$q->Str($password)}'");
		if(empty($qRes))
			return false;
		return $qRes['u_id'];
	}
	
	public function Login($login, $password) 
	{
    $uid = $this->CheckPassword($login, $password);
		if ($uid){ 	 
			$_SESSION['account_id'] = $uid;
      return true;
			}
    return false;
	}
	
	public function IsLogin()
	{
		if (isset($_SESSION['account_id'])) 	 
			return true;
    return false;
	}
	
	public function Logout()
	{
		$_SESSION = array();
		session_destroy();
	}
}
?>