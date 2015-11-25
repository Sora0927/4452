<?php
namespace JoinUs\Controller;
use Common\Controller\MemberbaseController;
class JoinUsController extends MemberbaseController{
	
	protected $JoinUs_model;
	
	function _initialize() {
		parent::_initialize();
		$this->JoinUs_model=D("Common/JoinUs");
	}
	
	function index(){
		$uid=sp_get_current_userid();
		$where=array("uid"=>$uid);
		
		$count=$this->JoinUs_model->where($where)->count();
		
		$page=$this->page($count,20);
		$page->setLinkWraper("li");
		
		$JoinUs=$this->JoinUs_model->where($where)
		->order("createtime desc")
		->limit($page->firstRow . ',' . $page->listRows)
		->select();
		
		$this->assign("pager",$page->show("default"));
		$this->assign("JoinUs",$JoinUs);
		$this->display(":index");
	}
	
	function post(){
		/* if($_SESSION['_verify_']['verify']!=I("post.verify")){
			$this->error("验证码错误！");
		} */
		
		if (IS_POST){
			
			$post_table=sp_authcode($_POST['post_table']);
			
			$_POST['post_table']=$post_table;
			
			$url=parse_url(urldecode($_POST['url']));
			$query=empty($url['query'])?"":"?{$url['query']}";
			$url="{$url['scheme']}://{$url['host']}{$url['path']}$query";

			$_POST['url']=sp_get_relative_url($url);
			
			if(isset($_SESSION["user"])){//用户已登陆,且是本站会员
		
		
			
				$uid=$_SESSION["user"]['id'];
				
				if($uid)
		{
		$joinusmodel=	D("Common/JoinUs");
		$where=array("uid"=>$uid,"post_id"=>intval($_POST['post_id']));
		$count=$joinusmodel->where($where)->count();
		if($count>0)
		{			
		$this->error("您已经报过名了！");
		
		return;}
		}
				
				
				$_POST['uid']=$uid;
				$users_model=M('Users');
				$user=$users_model->field("user_login,user_email,user_nicename")->where("id=$uid")->find();
				$username=$user['user_login'];
				$user_nicename=$user['user_nicename'];
				$email=$user['user_email'];
				$_POST['full_name']=empty($user_nicename)?$username:$user_nicename;
				$_POST['email']=$email;
			}
			
			//if(C("JoinUs_NEED_CHECK")){
			//	$_POST['status']=0;//评论审核功能开启
			//}else{
			//	$_POST['status']=1;
			//}
			
			if ($this->JoinUs_model->create()){
				$this->check_last_action(intval(C("JoinUs_TIME_INTERVAL")));
				$result=$this->JoinUs_model->add();
				if ($result!==false){
					
					//评论计数
					/*$post_table=ucwords(str_replace("_", " ", $post_table));
					$post_table=str_replace(" ","",$post_table);
					$post_table_model=M($post_table);
					$pk=$post_table_model->getPk();
					
					$post_table_model->create(array("JoinUs_count"=>array("exp","JoinUs_count+1")));
					$post_table_model->where(array($pk=>intval($_POST['post_id'])))->save();
					
					$post_table_model->create(array("last_JoinUs"=>time()));
					$post_table_model->where(array($pk=>intval($_POST['post_id'])))->save();*/
					$Article = M("Posts"); // 实例化Article对象
					$where=array("id"=>intval($_POST['post_id']));
					$Article->where($where)->setInc('applycount'); // 文章阅读数加1
					$r=sp_ajax_return(array("id"=>$result),"报名成功",1);
					$r['reload']=true;
					$this->ajaxReturn($r);
				} else {
					$this->error("报名失败！");
				}
			} else {
				$this->error($this->JoinUs_model->getError());
			}
		}
		
	}
	
	
	function cancel(){//取消报名
		/* if($_SESSION['_verify_']['verify']!=I("post.verify")){
			$this->error("验证码错误！");
		} */
		//$this->display(":index");return;
		if (IS_POST){
			
			$post_table=sp_authcode($_POST['post_table']);
			
			$_POST['post_table']=$post_table;
			
			$url=parse_url(urldecode($_POST['url']));
			$query=empty($url['query'])?"":"?{$url['query']}";
			$url="{$url['scheme']}://{$url['host']}{$url['path']}$query";

			$_POST['url']=sp_get_relative_url($url);
			
			if(isset($_SESSION["user"])){//用户已登陆,且是本站会员
		
		
			
				$uid=$_SESSION["user"]['id'];
				
				if($uid)
		{
		$joinusmodel=	D("Common/JoinUs");
		$where=array("uid"=>$uid,"post_id"=>intval($_POST['post_id']));
		$count=$joinusmodel->where($where)->count();
		if($count=0)
		{			
		$this->error("您已经取消报名了！");
		
		return;}
		}
				
				
				$_POST['uid']=$uid;
				$users_model=M('Users');
				$user=$users_model->field("user_login,user_email,user_nicename")->where("id=$uid")->find();
				$username=$user['user_login'];
				$user_nicename=$user['user_nicename'];
				$email=$user['user_email'];
				$_POST['full_name']=empty($user_nicename)?$username:$user_nicename;
				$_POST['email']=$email;
			}
			
			//if(C("JoinUs_NEED_CHECK")){
			//	$_POST['status']=0;//评论审核功能开启
			//}else{
			//	$_POST['status']=1;
			//}
		$result=	$joinusmodel->where($where)->delete();
			
				if ($result!==false){
					
					//评论计数
					/*$post_table=ucwords(str_replace("_", " ", $post_table));
					$post_table=str_replace(" ","",$post_table);
					$post_table_model=M($post_table);
					$pk=$post_table_model->getPk();
					
					$post_table_model->create(array("JoinUs_count"=>array("exp","JoinUs_count+1")));
					$post_table_model->where(array($pk=>intval($_POST['post_id'])))->save();
					
					$post_table_model->create(array("last_JoinUs"=>time()));
					$post_table_model->where(array($pk=>intval($_POST['post_id'])))->save();*/
					
					$Article = M("Posts"); // 实例化Article对象
					$where=array("id"=>intval($_POST['post_id']));
					$Article->where($where)->setDec('applycount'); // 文章阅读数加1
					
				$r=sp_ajax_return(array("id"=>$result),"取消报名成功",1);
					$r['reload']=true;
					$this->ajaxReturn($r);
				} else {
					$this->error("取消报名失败！");
				}
			
		}
		
	}
}