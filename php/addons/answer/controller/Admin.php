<?php
// +----------------------------------------------------------------------
// | thinkphp5 Addons [ WE CAN DO IT JUST THINK IT ]
// +----------------------------------------------------------------------
// | Copyright (c) 2016 http://www.zzstudio.net All rights reserved.
// +----------------------------------------------------------------------
// | Licensed ( http://www.apache.org/licenses/LICENSE-2.0 )
// +----------------------------------------------------------------------
// | Author: Byron Sampson <xiaobo.sun@qq.com>
// +----------------------------------------------------------------------

namespace addons\memberform\controller;

use think\addons\Controller;
use think\Db;
use think\Input;
class Admin extends Controller
{
    public function _initialize()
    {

        //判断管理员是否登录
        if (!session('aid')) {
            $this->redirect('admin/login/index');
        }
    }
    public function index()
    {
      $authRule = cache('memberform_authRule');
        if(!$authRule){
            $authRule = db('memberform_category')->where('menustatus=1')->order('sort')->select();
            cache('memberform_authRule', $authRule, 3600);
       }

        //声明数组
        $menus = array();
        foreach ($authRule as $key=>$val){
            $authRule[$key]['href'] = url($val['href']);
            if($val['pid']==0){
                if(session('aid')!=1){
                    if(in_array($val['id'],$this->adminRules)){
                        $menus[] = $val;
                    }
                }else{
                    $menus[] = $val;
                }
            }
        }
        foreach ($menus as $k=>$v){
            foreach ($authRule as $kk=>$vv){
                if($v['id']==$vv['pid']){
                    $menus[$k]['children'][] = $vv;
                }
            }
        }
        // dump($authRule);exit;
      $this->assign('menus', json_encode($menus,true));
      return $this->fetch();
    }

    public function main()
    {
      //查询今天的预订量
      $start = strtotime(date('Y-m-d 00:00:00'));
      $end = strtotime(date('Y-m-d H:i:s'));
      // 客房
      $kefangsql = "SELECT count(*) as kfnum FROM `cool_memberform` WHERE `addtime` >= $start AND `addtime` <= $end";
      // echo $kefangsql; exit;
      $kefangnum = Db::query($kefangsql);
      $kfnum = $kefangnum[0]['kfnum'];
      // 会议
      $huiyisql = "SELECT count(*) as hynum FROM `cool_memberform`";
      // echo $huiyisql; exit;
      $huiyinum = Db::query($huiyisql);
      $hynum = $huiyinum[0]['hynum'];

      $stattime = strtotime(date("Y-m-d"), time());
      $shijianxian = Db::query("select date(from_unixtime(addtime)) as riqi, count(*)as uvnum from cool_memberform where from_unixtime(addtime) >= date(now()) - interval 7 day group by day(from_unixtime(addtime));");
      $riqistr = '';
      $pvstr = '';
      $uvstr = '';
      $ipstr = '';
      foreach ($shijianxian as $key => $value) {
          $riqistr.=',"'.$value['riqi'].'"';
          $uvstr.=','.$value['uvnum'];
      }
      $riqistr = substr($riqistr, 1);
      $uvstr = substr($uvstr, 1);
      $this->assign('riqistr', $riqistr);
      $this->assign('uvstr', $uvstr);
      $this->assign('kfnum', $kfnum);
      $this->assign('hynum', $hynum);
      return $this->fetch();
    }
    public function yuding()
    {
      if(request()->isPost()){
        $type = Input('type');
        $page =input('page')?input('page'):1;
        $pageSize =input('limit')?input('limit'):config('pageSize');
        $list = db('memberform')->paginate(array('list_rows'=>$pageSize,'page'=>$page))
        ->toArray();

        $rsult['code'] = 0;
        $rsult['msg'] = "获取成功";
        $lists = $list['data'];
        foreach ($lists as $k=>$v ){
          $lists[$k]['birsthday'] = date('Y-m-d H:i:s',$v['birsthday']);
            $lists[$k]['addtime'] = date('Y-m-d H:i:s',$v['addtime']);
        }
        $rsult['data'] = $lists;
        $rsult['count'] = $list['total'];
        $rsult['rel'] = 1;
        return $rsult;
      }else{
        $title = '会员管理';
        $this->assign('title', $title);
      }
      return $this->fetch();
    }


}
