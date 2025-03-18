import Vue from 'vue';
//配置路由
import VueRouter from 'vue-router'
Vue.use(VueRouter);
//1.创建组件
import Index from '@/views/index'
import Home from '@/views/home'
import Login from '@/views/login'
import NotFound from '@/views/404'
import UpdatePassword from '@/views/update-password'
import pay from '@/views/pay'
import register from '@/views/register'
import center from '@/views/center'
    import news from '@/views/modules/news/list'
    import remenjianzhi from '@/views/modules/remenjianzhi/list'
    import discussremenjianzhi from '@/views/modules/discussremenjianzhi/list'
    import xuesheng from '@/views/modules/xuesheng/list'
    import jianzhijiedan from '@/views/modules/jianzhijiedan/list'
    import discussshangjia from '@/views/modules/discussshangjia/list'
    import storeup from '@/views/modules/storeup/list'
    import zhuanye from '@/views/modules/zhuanye/list'
    import shangjia from '@/views/modules/shangjia/list'
    import users from '@/views/modules/users/list'
    import xueshengzixun from '@/views/modules/xueshengzixun/list'
    import wanchengpingjia from '@/views/modules/wanchengpingjia/list'
    import chat from '@/views/modules/chat/list'
    import jianzhirenwu from '@/views/modules/jianzhirenwu/list'
    import config from '@/views/modules/config/list'


//2.配置路由   注意：名字
const routes = [{
    path: '/index',
    name: '首页',
    component: Index,
    children: [{
      // 这里不设置值，是把main作为默认页面
      path: '/',
      name: '首页',
      component: Home,
      meta: {icon:'', title:'center'}
    }, {
      path: '/updatePassword',
      name: '修改密码',
      component: UpdatePassword,
      meta: {icon:'', title:'updatePassword'}
    }, {
      path: '/pay',
      name: '支付',
      component: pay,
      meta: {icon:'', title:'pay'}
    }, {
      path: '/center',
      name: '个人信息',
      component: center,
      meta: {icon:'', title:'center'}
    }
          ,{
	path: '/news',
        name: '公告资讯',
        component: news
      }
          ,{
	path: '/remenjianzhi',
        name: '热门兼职',
        component: remenjianzhi
      }
          ,{
	path: '/discussremenjianzhi',
        name: '热门兼职评论',
        component: discussremenjianzhi
      }
          ,{
	path: '/xuesheng',
        name: '学生',
        component: xuesheng
      }
          ,{
	path: '/jianzhijiedan',
        name: '兼职接单',
        component: jianzhijiedan
      }
          ,{
	path: '/discussshangjia',
        name: '商家评论',
        component: discussshangjia
      }
          ,{
	path: '/storeup',
        name: '我的收藏管理',
        component: storeup
      }
          ,{
	path: '/zhuanye',
        name: '专业',
        component: zhuanye
      }
          ,{
	path: '/shangjia',
        name: '商家',
        component: shangjia
      }
          ,{
	path: '/users',
        name: '管理员',
        component: users
      }
          ,{
	path: '/xueshengzixun',
        name: '学生咨询',
        component: xueshengzixun
      }
          ,{
	path: '/wanchengpingjia',
        name: '完成评价',
        component: wanchengpingjia
      }
          ,{
	path: '/chat',
        name: '投诉反馈',
        component: chat
      }
          ,{
	path: '/jianzhirenwu',
        name: '兼职任务',
        component: jianzhirenwu
      }
          ,{
	path: '/config',
        name: '轮播图管理',
        component: config
      }
        ]
  },
  {
    path: '/login',
    name: 'login',
    component: Login,
    meta: {icon:'', title:'login'}
  },
  {
    path: '/register',
    name: 'register',
    component: register,
    meta: {icon:'', title:'register'}
  },
  {
    path: '/',
    name: '首页',
    redirect: '/index'
  }, /*默认跳转路由*/
  {
    path: '*',
    component: NotFound
  }
]
//3.实例化VueRouter  注意：名字
const router = new VueRouter({
  mode: 'hash',
  /*hash模式改为history*/
  routes // （缩写）相当于 routes: routes
})

export default router;
