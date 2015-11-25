<?php
namespace JoinUs\Controller;
use Think\Controller;
class WidgetController extends Controller{
	
	function index($table,$post_id,$params){
		$JoinUs_model=D("Common/JoinUs");
		$JoinUs=$JoinUs_model->where(array("post_table"=>$table,"post_id"=>$post_id,"status"=>1))->order("createtime ASC")->select();
		
		$new_JoinUs=array();
		
		$parent_JoinUs=array();
		
		if(!empty($JoinUs)){
			foreach ($JoinUs as $m){
				if($m['parentid']==0){
					$new_JoinUs[$m['id']]=$m;
				}else{
					$path=explode("-", $m['path']);
					$new_JoinUs[$path[1]]['children'][]=$m;
				}
					
				$parent_JoinUs[$m['id']]=$m;
			}
		}
		
		$data['post_table']=sp_authencode($table);
		$data['post_id']=$post_id;
		$this->assign($data);
		$this->assign("JoinUs",$new_JoinUs);
		$this->assign("parent_JoinUs",$parent_JoinUs);
		$tpl= (isset($params['tpl'])&& !empty($params['tpl']) )?$params['tpl']:"JoinUs";
		$uid=sp_get_current_userid();
		if($uid)
		{
		$joinusmodel=	D("Common/JoinUs");
		$where=array("uid"=>$uid,"post_id"=>$post_id);
		$count=$joinusmodel->where($where)->count();
		if($count>0)
			$this->assign("isJoinUs",true);
		}
		return $this->fetch(":$tpl");
	}
	
	
	function fetch($templateFile='',$content='',$prefix=''){
		return parent::fetch($this->parseTemplate($templateFile),$content,$prefix);
	}
	
	
	/**
	 * 自动定位模板文件
	 * @access protected
	 * @param string $template 模板文件规则
	 * @return string
	 */
	public function parseTemplate($template='') {
		// 获取当前主题名称
		$theme      =    C('SP_DEFAULT_THEME');
		if(C('TMPL_DETECT_THEME')) {// 自动侦测模板主题
			$t = C('VAR_TEMPLATE');
			if (isset($_GET[$t])){
				$theme = $_GET[$t];
			}elseif(cookie('think_template')){
				$theme = cookie('think_template');
			}
			if(!file_exists($tmpl_path."/".$theme)){
				$theme  =   C('SP_DEFAULT_THEME');
			}
			cookie('think_template',$theme,864000);
		}
	
	
		$depr       =   C('TMPL_FILE_DEPR');
		$template   =   str_replace(':', $depr, $template);
	
		// 获取当前模版分组
		$group      =   "JoinUs";
		// 获取当前主题的模版路径
		if(1==C('APP_GROUP_MODE')){ // 独立分组模式
			define('THEME_PATH',   $tmpl_path.$theme."/");
			define('APP_TMPL_PATH',__ROOT__.'/'.basename($tmpl_path).'/'.$theme."/");
		}
		// 分析模板文件规则
		if('' == $template) {
			// 如果模板文件名为空 按照默认规则定位
			$template = MODULE_NAME . $depr . ACTION_NAME;
		}elseif(false === strpos($template, '/')){
			$template = MODULE_NAME . $depr . $template;
		}
		$templateFile = sp_add_template_file_suffix(THEME_PATH.$group.$template);
		if(!file_exists_case($templateFile))
			throw_exception(L('_TEMPLATE_NOT_EXIST_').'['.$templateFile.']');
		return $templateFile;
	}
	
}