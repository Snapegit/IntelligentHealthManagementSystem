import { createRouter, createWebHashHistory } from 'vue-router'
import index from '../views'
import home from '../views/pages/home.vue'
import login from '../views/pages/login.vue'
import shequjuminList from '@/views/pages/shequjumin/list'
import shequjuminDetail from '@/views/pages/shequjumin/formModel'
import shequjuminAdd from '@/views/pages/shequjumin/formAdd'
import shequjuminRegister from '@/views/pages/shequjumin/register'
import shequjuminCenter from '@/views/pages/shequjumin/center'
import yishengList from '@/views/pages/yisheng/list'
import yishengDetail from '@/views/pages/yisheng/formModel'
import yishengAdd from '@/views/pages/yisheng/formAdd'
import jiankangwenzhenList from '@/views/pages/jiankangwenzhen/list'
import jiankangwenzhenDetail from '@/views/pages/jiankangwenzhen/formModel'
import jiankangwenzhenAdd from '@/views/pages/jiankangwenzhen/formAdd'
import tijianyuyueList from '@/views/pages/tijianyuyue/list'
import tijianyuyueDetail from '@/views/pages/tijianyuyue/formModel'
import tijianyuyueAdd from '@/views/pages/tijianyuyue/formAdd'
import tijianleixingList from '@/views/pages/tijianleixing/list'
import tijianleixingDetail from '@/views/pages/tijianleixing/formModel'
import tijianleixingAdd from '@/views/pages/tijianleixing/formAdd'
import yiyuanxinxiList from '@/views/pages/yiyuanxinxi/list'
import yiyuanxinxiDetail from '@/views/pages/yiyuanxinxi/formModel'
import yiyuanxinxiAdd from '@/views/pages/yiyuanxinxi/formAdd'
import jiankangdanganList from '@/views/pages/jiankangdangan/list'
import jiankangdanganDetail from '@/views/pages/jiankangdangan/formModel'
import jiankangdanganAdd from '@/views/pages/jiankangdangan/formAdd'
import jiankangpingjiList from '@/views/pages/jiankangpingji/list'
import jiankangpingjiDetail from '@/views/pages/jiankangpingji/formModel'
import jiankangpingjiAdd from '@/views/pages/jiankangpingji/formAdd'
import bingqingyuceList from '@/views/pages/bingqingyuce/list'
import bingqingyuceDetail from '@/views/pages/bingqingyuce/formModel'
import bingqingyuceAdd from '@/views/pages/bingqingyuce/formAdd'
import wenjuandiaochaList from '@/views/pages/wenjuandiaocha/list'
import wenjuandiaochaDetail from '@/views/pages/wenjuandiaocha/formModel'
import wenjuandiaochaAdd from '@/views/pages/wenjuandiaocha/formAdd'
import wenjuanhuidaList from '@/views/pages/wenjuanhuida/list'
import wenjuanhuidaDetail from '@/views/pages/wenjuanhuida/formModel'
import wenjuanhuidaAdd from '@/views/pages/wenjuanhuida/formAdd'

const routes = [{
		path: '/',
		redirect: '/index/home'
	},
	{
		path: '/index',
		component: index,
		children: [{
			path: 'home',
			component: home
		}
		, {
			path: 'shequjuminList',
			component: shequjuminList
		}, {
			path: 'shequjuminDetail',
			component: shequjuminDetail
		}, {
			path: 'shequjuminAdd',
			component: shequjuminAdd
		}
		, {
			path: 'shequjuminCenter',
			component: shequjuminCenter
		}
		, {
			path: 'yishengList',
			component: yishengList
		}, {
			path: 'yishengDetail',
			component: yishengDetail
		}, {
			path: 'yishengAdd',
			component: yishengAdd
		}
		, {
			path: 'jiankangwenzhenList',
			component: jiankangwenzhenList
		}, {
			path: 'jiankangwenzhenDetail',
			component: jiankangwenzhenDetail
		}, {
			path: 'jiankangwenzhenAdd',
			component: jiankangwenzhenAdd
		}
		, {
			path: 'tijianyuyueList',
			component: tijianyuyueList
		}, {
			path: 'tijianyuyueDetail',
			component: tijianyuyueDetail
		}, {
			path: 'tijianyuyueAdd',
			component: tijianyuyueAdd
		}
		, {
			path: 'tijianleixingList',
			component: tijianleixingList
		}, {
			path: 'tijianleixingDetail',
			component: tijianleixingDetail
		}, {
			path: 'tijianleixingAdd',
			component: tijianleixingAdd
		}
		, {
			path: 'yiyuanxinxiList',
			component: yiyuanxinxiList
		}, {
			path: 'yiyuanxinxiDetail',
			component: yiyuanxinxiDetail
		}, {
			path: 'yiyuanxinxiAdd',
			component: yiyuanxinxiAdd
		}
		, {
			path: 'jiankangdanganList',
			component: jiankangdanganList
		}, {
			path: 'jiankangdanganDetail',
			component: jiankangdanganDetail
		}, {
			path: 'jiankangdanganAdd',
			component: jiankangdanganAdd
		}
		, {
			path: 'jiankangpingjiList',
			component: jiankangpingjiList
		}, {
			path: 'jiankangpingjiDetail',
			component: jiankangpingjiDetail
		}, {
			path: 'jiankangpingjiAdd',
			component: jiankangpingjiAdd
		}
		, {
			path: 'bingqingyuceList',
			component: bingqingyuceList
		}, {
			path: 'bingqingyuceDetail',
			component: bingqingyuceDetail
		}, {
			path: 'bingqingyuceAdd',
			component: bingqingyuceAdd
		}
		, {
			path: 'wenjuandiaochaList',
			component: wenjuandiaochaList
		}, {
			path: 'wenjuandiaochaDetail',
			component: wenjuandiaochaDetail
		}, {
			path: 'wenjuandiaochaAdd',
			component: wenjuandiaochaAdd
		}
		, {
			path: 'wenjuanhuidaList',
			component: wenjuanhuidaList
		}, {
			path: 'wenjuanhuidaDetail',
			component: wenjuanhuidaDetail
		}, {
			path: 'wenjuanhuidaAdd',
			component: wenjuanhuidaAdd
		}
		]
	},
	{
		path: '/login',
		component: login
	}
	,{
		path: '/shequjuminRegister',
		component: shequjuminRegister
	}
]

const router = createRouter({
  history: createWebHashHistory(process.env.BASE_URL),
  routes
})

export default router
