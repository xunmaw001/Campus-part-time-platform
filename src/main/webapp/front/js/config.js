
var projectName = '校园兼职平台';
/**
 * 轮播图配置
 */
var swiper = {
	// 设定轮播容器宽度，支持像素和百分比
	width: '100%',
	height: '400px',
	// hover（悬停显示）
	// always（始终显示）
	// none（始终不显示）
	arrow: 'none',
	// default（左右切换）
	// updown（上下切换）
	// fade（渐隐渐显切换）
	anim: 'default',
	// 自动切换的时间间隔
	// 默认3000
	interval: 2000,
	// 指示器位置
	// inside（容器内部）
	// outside（容器外部）
	// none（不显示）
	indicator: 'outside'
}

/**
 * 个人中心菜单
 */
var centerMenu = [{
	name: '个人中心',
	url: '../' + localStorage.getItem('userTable') + '/center.html'
}, 
{
	name: '我的收藏',
	url: '../storeup/list.html'
}
]


var indexNav = [

{
	name: '商家',
	url: './pages/shangjia/list.html'
}, 
{
	name: '热门兼职',
	url: './pages/remenjianzhi/list.html'
}, 

{
	name: '公告资讯',
	url: './pages/news/list.html'
},
]

var adminurl =  "http://localhost:8080/ssm7plgu/admin/dist/index.html";

var cartFlag = false

var chatFlag = false


chatFlag = true


var menu = [{"backMenu":[{"child":[{"buttons":["新增","查看","修改","删除"],"menu":"专业","menuJump":"列表","tableName":"zhuanye"}],"menu":"专业管理"},{"child":[{"buttons":["新增","查看","修改","删除"],"menu":"商家","menuJump":"列表","tableName":"shangjia"}],"menu":"商家管理"},{"child":[{"buttons":["查看","修改","删除","查看评论"],"menu":"热门兼职","menuJump":"列表","tableName":"remenjianzhi"}],"menu":"热门兼职管理"},{"child":[{"buttons":["新增","查看","修改","删除"],"menu":"学生","menuJump":"列表","tableName":"xuesheng"}],"menu":"学生管理"},{"child":[{"buttons":["查看","修改","删除"],"menu":"兼职接单","menuJump":"列表","tableName":"jianzhijiedan"}],"menu":"兼职接单管理"},{"child":[{"buttons":["查看","修改","删除"],"menu":"学生咨询","menuJump":"列表","tableName":"xueshengzixun"}],"menu":"学生咨询管理"},{"child":[{"buttons":["查看","修改","删除"],"menu":"兼职任务","menuJump":"列表","tableName":"jianzhirenwu"}],"menu":"兼职任务管理"},{"child":[{"buttons":["查看","修改","删除"],"menu":"完成评价","menuJump":"列表","tableName":"wanchengpingjia"}],"menu":"完成评价管理"},{"child":[{"buttons":["新增","查看","修改","删除"],"menu":"管理员","tableName":"users"}],"menu":"管理员管理"},{"child":[{"buttons":["新增","查看","修改","删除"],"menu":"公告资讯","tableName":"news"},{"buttons":["新增","查看","修改","删除"],"menu":"投诉反馈","tableName":"chat"},{"buttons":["新增","查看","修改","删除"],"menu":"轮播图管理","tableName":"config"}],"menu":"系统管理"}],"frontMenu":[{"child":[{"buttons":["查看"],"menu":"商家列表","menuJump":"列表","tableName":"shangjia"}],"menu":"商家模块"},{"child":[{"buttons":["查看","兼职接单","在线咨询"],"menu":"热门兼职列表","menuJump":"列表","tableName":"remenjianzhi"}],"menu":"热门兼职模块"}],"hasBackLogin":"是","hasBackRegister":"否","hasFrontLogin":"否","hasFrontRegister":"否","roleName":"管理员","tableName":"users"},{"backMenu":[{"child":[{"buttons":["新增","查看","修改","删除"],"menu":"热门兼职","menuJump":"列表","tableName":"remenjianzhi"}],"menu":"热门兼职管理"},{"child":[{"buttons":["查看","审核","发布任务"],"menu":"兼职接单","menuJump":"列表","tableName":"jianzhijiedan"}],"menu":"兼职接单管理"},{"child":[{"buttons":["查看","审核"],"menu":"学生咨询","menuJump":"列表","tableName":"xueshengzixun"}],"menu":"学生咨询管理"},{"child":[{"buttons":["查看"],"menu":"兼职任务","menuJump":"列表","tableName":"jianzhirenwu"}],"menu":"兼职任务管理"},{"child":[{"buttons":["查看","审核","支付"],"menu":"完成评价","menuJump":"列表","tableName":"wanchengpingjia"}],"menu":"完成评价管理"}],"frontMenu":[{"child":[{"buttons":["查看"],"menu":"商家列表","menuJump":"列表","tableName":"shangjia"}],"menu":"商家模块"},{"child":[{"buttons":["查看","兼职接单","在线咨询"],"menu":"热门兼职列表","menuJump":"列表","tableName":"remenjianzhi"}],"menu":"热门兼职模块"}],"hasBackLogin":"是","hasBackRegister":"是","hasFrontLogin":"否","hasFrontRegister":"否","roleName":"商家","tableName":"shangjia"},{"backMenu":[{"child":[{"buttons":["查看"],"menu":"兼职接单","menuJump":"列表","tableName":"jianzhijiedan"}],"menu":"兼职接单管理"},{"child":[{"buttons":["查看"],"menu":"学生咨询","menuJump":"列表","tableName":"xueshengzixun"}],"menu":"学生咨询管理"},{"child":[{"buttons":["查看","完成任务"],"menu":"兼职任务","menuJump":"列表","tableName":"jianzhirenwu"}],"menu":"兼职任务管理"},{"child":[{"buttons":["查看"],"menu":"完成评价","menuJump":"列表","tableName":"wanchengpingjia"}],"menu":"完成评价管理"},{"child":[{"buttons":["查看","删除"],"menu":"我的收藏管理","tableName":"storeup"}],"menu":"我的收藏管理"}],"frontMenu":[{"child":[{"buttons":["查看"],"menu":"商家列表","menuJump":"列表","tableName":"shangjia"}],"menu":"商家模块"},{"child":[{"buttons":["查看","兼职接单","在线咨询"],"menu":"热门兼职列表","menuJump":"列表","tableName":"remenjianzhi"}],"menu":"热门兼职模块"}],"hasBackLogin":"否","hasBackRegister":"否","hasFrontLogin":"是","hasFrontRegister":"是","roleName":"学生","tableName":"xuesheng"}]


var isAuth = function (tableName,key) {
    let role = localStorage.getItem("userTable");
    let menus = menu;
    for(let i=0;i<menus.length;i++){
        if(menus[i].tableName==role){
            for(let j=0;j<menus[i].backMenu.length;j++){
                for(let k=0;k<menus[i].backMenu[j].child.length;k++){
                    if(tableName==menus[i].backMenu[j].child[k].tableName){
                        let buttons = menus[i].backMenu[j].child[k].buttons.join(',');
                        return buttons.indexOf(key) !== -1 || false
                    }
                }
            }
        }
    }
    return false;
}

var isFrontAuth = function (tableName,key) {
    let role = localStorage.getItem("userTable");
    let menus = menu;
    for(let i=0;i<menus.length;i++){
        if(menus[i].tableName==role){
            for(let j=0;j<menus[i].frontMenu.length;j++){
                for(let k=0;k<menus[i].frontMenu[j].child.length;k++){
                    if(tableName==menus[i].frontMenu[j].child[k].tableName){
                        let buttons = menus[i].frontMenu[j].child[k].buttons.join(',');
                        return buttons.indexOf(key) !== -1 || false
                    }
                }
            }
        }
    }
    return false;
}
