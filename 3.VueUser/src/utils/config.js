const config = {
    get() {
        return {
            url : process.env.VUE_APP_BASE_API_URL + process.env.VUE_APP_BASE_API + '/',
            name: process.env.VUE_APP_BASE_API,
			menuList:[
				{
					name: '医生管理',
					icon: '${frontMenu.fontClass}',
					child:[
						{
							name:'医生',
							url:'/index/yishengList'
						},
					]
				},
				{
					name: '问卷调查管理',
					icon: '${frontMenu.fontClass}',
					child:[
						{
							name:'问卷调查',
							url:'/index/wenjuandiaochaList'
						},
					]
				},
			]
        }
    },
    getProjectName(){
        return {
            projectName: "面向社区的智能化健康管理系统研究 "
        } 
    }
}
export default config
