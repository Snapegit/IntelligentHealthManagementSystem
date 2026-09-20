	import {
		createRouter,
		createWebHashHistory
	} from 'vue-router'
	import jiankangwenzhen from '@/views/jiankangwenzhen/list'
	import yiyuanxinxi from '@/views/yiyuanxinxi/list'
	import jiankangdangan from '@/views/jiankangdangan/list'
	import shequjumin from '@/views/shequjumin/list'
	import jiankangpingji from '@/views/jiankangpingji/list'
	import wenjuandiaocha from '@/views/wenjuandiaocha/list'
	import users from '@/views/users/list'
	import tijianyuyue from '@/views/tijianyuyue/list'
	import tijianleixing from '@/views/tijianleixing/list'
	import config from '@/views/config/list'
	import yisheng from '@/views/yisheng/list'
	import bingqingyuce from '@/views/bingqingyuce/list'
	import wenjuanhuida from '@/views/wenjuanhuida/list'
	import yishengRegister from '@/views/yisheng/register'
	import yishengCenter from '@/views/yisheng/center'

export const routes = [{
		path: '/login',
		name: 'login',
		component: () => import('../views/login.vue')
	},{
		path: '/',
		name: '首页',
		component: () => import('../views/index'),
		children: [{
			path: '/',
			name: '首页Home',
			component: () => import('../views/HomeView.vue'),
			meta: {
				affix: true
			}
		}, {
			path: '/updatepassword',
			name: '修改密码',
			component: () => import('../views/updatepassword.vue')
		}
		
		,{
			path: '/yishengCenter',
			name: '医生个人中心',
			component: yishengCenter
		}
		,{
			path: '/jiankangwenzhen',
			name: '健康问诊',
			component: jiankangwenzhen
		}
		,{
			path: '/yiyuanxinxi',
			name: '医院信息',
			component: yiyuanxinxi
		}
		,{
			path: '/jiankangdangan',
			name: '健康档案',
			component: jiankangdangan
		}
		,{
			path: '/shequjumin',
			name: '社区居民',
			component: shequjumin
		}
		,{
			path: '/jiankangpingji',
			name: '健康评级',
			component: jiankangpingji
		}
		,{
			path: '/wenjuandiaocha',
			name: '问卷调查',
			component: wenjuandiaocha
		}
		,{
			path: '/users',
			name: '管理员',
			component: users
		}
		,{
			path: '/tijianyuyue',
			name: '体检预约',
			component: tijianyuyue
		}
		,{
			path: '/tijianleixing',
			name: '体检类型',
			component: tijianleixing
		}
		,{
			path: '/config',
			name: '轮播图',
			component: config
		}
		,{
			path: '/yisheng',
			name: '医生',
			component: yisheng
		}
		,{
			path: '/bingqingyuce',
			name: '病情预测',
			component: bingqingyuce
		}
		,{
			path: '/wenjuanhuida',
			name: '问卷回答',
			component: wenjuanhuida
		}
		]
	},
	{
		path: '/yishengRegister',
		name: '医生注册',
		component: yishengRegister
	},
]

const router = createRouter({
	history: createWebHashHistory(process.env.BASE_URL),
	routes
})

export default router
