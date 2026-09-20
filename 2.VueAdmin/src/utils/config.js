const config = {
    get() {
        return {
            url : process.env.VUE_APP_BASE_API_URL + process.env.VUE_APP_BASE_API + '/',
            name: process.env.VUE_APP_BASE_API,
            // 退出到首页链接
            indexUrl: 'http://localhost:8080/cl37542204/client/index.html'
        }
    },
    getProjectName(){
        return {
            projectName: "面向社区的智能化健康管理系统研究 "
        } 
    }
}
export default config
